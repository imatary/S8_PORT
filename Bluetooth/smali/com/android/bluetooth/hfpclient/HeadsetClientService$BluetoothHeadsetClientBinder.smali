.class Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;
.super Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.source "HeadsetClientService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHeadsetClientBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-void
.end method

.method private getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HeadsetClientService"

    const-string/jumbo v1, "HeadsetClient call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->-wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public connectAudio()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connectAudio()Z

    move-result v1

    return v1
.end method

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnectAudio()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnectAudio()Z

    move-result v1

    return v1
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getAudioRouteAllowed()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getAudioRouteAllowed()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getCLCC()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCLCC()Z

    move-result v1

    return v1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientService;[I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public isAudioOn()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAudioOn()Z

    move-result v1

    return v1
.end method

.method public isClientInVr()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isClientInVr()Z

    move-result v1

    return v1
.end method

.method public redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->redial(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v1

    return v1
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setAudioRouteAllowed(Z)V

    :cond_0
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method
