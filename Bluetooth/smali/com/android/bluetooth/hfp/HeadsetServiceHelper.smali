.class public Lcom/android/bluetooth/hfp/HeadsetServiceHelper;
.super Ljava/lang/Object;
.source "HeadsetServiceHelper.java"


# static fields
.field public static final AT_RESPONSE_ERROR:I = 0x0

.field public static final AT_RESPONSE_OK:I = 0x1

.field public static final CALL_STATE_ACTIVE:I = 0x0

.field public static final CALL_STATE_ALERTING:I = 0x3

.field public static final CALL_STATE_DIALING:I = 0x2

.field public static final CALL_STATE_HELD:I = 0x1

.field public static final CALL_STATE_IDLE:I = 0x6

.field public static final CALL_STATE_INCOMING:I = 0x4

.field public static final CALL_STATE_WAITING:I = 0x5


# instance fields
.field mLocalBrsf:I

.field mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

.field mService:Lcom/android/bluetooth/hfp/HeadsetService;

.field mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

.field mVoIPProxy:Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mLocalBrsf:I

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    iput-object p3, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    return-void
.end method


# virtual methods
.method public atResponseCodeNative(II[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II[B)Z

    return-void
.end method

.method public atResponseStringNative(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;[B)Z

    return-void
.end method

.method public connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnectAudio()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio()Z

    move-result v0

    return v0
.end method

.method public getCSCallState()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCSNumActiveCall()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumActiveCall()I

    move-result v0

    return v0
.end method

.method public getCSNumHeldCall()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumHeldCall()I

    move-result v0

    return v0
.end method

.method public getCSState()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getState()I

    move-result v0

    return v0
.end method

.method public getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    return-object v0
.end method

.method public getLocalBrsf()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mLocalBrsf:I

    return v0
.end method

.method public getPhoneRoam()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getRoam()I

    move-result v0

    return v0
.end method

.method public getPhoneSignalStrength()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getSignal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->signalToRssi(I)I

    move-result v0

    return v0
.end method

.method public getVoIPProxy()Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mVoIPProxy:Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    return-object v0
.end method

.method public isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public isAudioOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v0

    return v0
.end method

.method public obtainMessage(I)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setLocalBrsf(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mLocalBrsf:I

    return-void
.end method

.method public setVoIPProxy(Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->mVoIPProxy:Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    return-void
.end method
