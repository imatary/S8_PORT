.class public Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;
.super Ljava/lang/Object;
.source "HeadsetClientServiceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetClientServiceHelper"


# instance fields
.field mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "HeadsetClientServiceHelper"

    const-string/jumbo v1, "Instantiating Client Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-void
.end method


# virtual methods
.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    return-object v0
.end method

.method public isAudioOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAudioOn()Z

    move-result v0

    return v0
.end method

.method public isClientInVr()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isClientInVr()Z

    move-result v0

    return v0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
