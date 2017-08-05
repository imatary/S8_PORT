.class final Lcom/android/bluetooth/btservice/JniCallbacks;
.super Ljava/lang/Object;
.source "JniCallbacks.java"


# instance fields
.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

.field private mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

.field private mCoreManager:Lcom/samsung/bt/data/BluetoothCoreManager;

.field private mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iput-object p2, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    return-void
.end method


# virtual methods
.method aclStateChangeCallback(I[BIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->aclStateChangeCallback(I[BIII)V

    return-void
.end method

.method adapterPropertyChangedCallback([I[[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->adapterPropertyChangedCallback([I[[B)V

    return-void
.end method

.method bondStateChangeCallback(I[BI)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;->bondStateChangeCallback(I[BI)V

    return-void
.end method

.method bondStateChangeCallback(I[BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/BondStateMachine;->bondStateChangeCallback(I[BII)V

    return-void
.end method

.method cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method connectionFailCallback([BI)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/bt/data/BluetoothDataManager;->notifyConnectionFailReason([BI)V

    return-void
.end method

.method deviceFoundCallback([B)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->deviceFoundCallback([B)V

    return-void
.end method

.method devicePropertyChangedCallback([B[I[[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/RemoteDevices;->devicePropertyChangedCallback([B[I[[B)V

    return-void
.end method

.method discoveryStateChangeCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->discoveryStateChangeCallback(I)V

    return-void
.end method

.method edrTestModeRecvCallback(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->edrTestModeRecvCallback(III)V

    return-void
.end method

.method errorReporterCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/bt/data/BluetoothDataManager;->notifyLocalErrorReason(I)V

    return-void
.end method

.method getTxPowerPathCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getTxPowerPathCallback(I)V

    return-void
.end method

.method init(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 1

    iput-object p2, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    iput-object p1, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    new-instance v0, Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-direct {v0}, Lcom/samsung/bt/data/BluetoothDataManager;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    new-instance v0, Lcom/samsung/bt/data/BluetoothCoreManager;

    invoke-direct {v0}, Lcom/samsung/bt/data/BluetoothCoreManager;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mCoreManager:Lcom/samsung/bt/data/BluetoothCoreManager;

    return-void
.end method

.method lePhyUpdateCallback(I[BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/RemoteDevices;->lePhyUpdateCallback(I[BII)V

    return-void
.end method

.method leReadPhyCallback(I[BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/RemoteDevices;->leReadPhyCallback(I[BII)V

    return-void
.end method

.method leTestModeRecvCallback(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->leTestModeRecvCallback(III)V

    return-void
.end method

.method linkLossCallback([B)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mCoreManager:Lcom/samsung/bt/data/BluetoothCoreManager;

    invoke-virtual {v0, p1}, Lcom/samsung/bt/data/BluetoothCoreManager;->notifyLinkLossReason([B)V

    return-void
.end method

.method logCollectorCallback(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->logCollectorCallback(Ljava/lang/String;)V

    return-void
.end method

.method modelRssiValuesCallback(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->modelRssiValuesCallback(III)V

    return-void
.end method

.method monitorRawRssiCallback([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/RemoteDevices;->monitorRawRssiCallback([BII)V

    return-void
.end method

.method pinRequestCallback([B[BIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/BondStateMachine;->pinRequestCallback([B[BIZ)V

    return-void
.end method

.method readRawRssiCallback([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/RemoteDevices;->readRawRssiCallback([BII)V

    return-void
.end method

.method sspRequestCallback([B[BIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->sspRequestCallback([B[BIII)V

    return-void
.end method

.method stateChangeCallback(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->stateChangeCallback(I)V

    return-void
.end method

.method vscGetVendorCapabilitiesCallback([B)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/JniCallbacks;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->vscGetVendorCapabilitiesCallback([B)V

    return-void
.end method
