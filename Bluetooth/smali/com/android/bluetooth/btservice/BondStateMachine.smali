.class final Lcom/android/bluetooth/btservice/BondStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;,
        Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
    }
.end annotation


# static fields
.field static final BONDING_STATE_CHANGE:I = 0x4

.field static final BOND_STATE_BONDED:I = 0x2

.field static final BOND_STATE_BONDING:I = 0x1

.field static final BOND_STATE_NONE:I = 0x0

.field static final CANCEL_BOND:I = 0x2

.field static final CREATE_BOND:I = 0x1

.field private static final DBG:Z

.field public static final OOBDATA:Ljava/lang/String; = "oobdata"

.field static final PIN_REQUEST:I = 0x6

.field static final REMOVE_BOND:I = 0x3

.field static final SSP_REQUEST:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BluetoothBondStateMachine"

.field static mOutgoing:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/RemoteDevices;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/BondStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->cancelBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/BondStateMachine;->createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;->removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/btservice/BondStateMachine;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->getUnbondReasonFromHALCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->clearProfilePriority(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/btservice/BondStateMachine;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendDisplayPinIntent([BII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/BondStateMachine;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/btservice/BondStateMachine;->mOutgoing:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "BondStateMachine:"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$StableState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    new-instance v0, Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-direct {v0}, Lcom/samsung/bt/data/BluetoothDataManager;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->addState(Lcom/android/internal/util/State;)V

    iput-object p3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iput-object p2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method private cancelBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondNative([B)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothBondStateMachine"

    const-string/jumbo v2, "Unexpected error while cancelling bond:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private clearProfilePriority(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->getHidService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v2

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, v3}, Lcom/android/bluetooth/hid/HidService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->resetAvrcpBlacklist(Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    return-void
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Z)Z
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v6, :cond_3

    const-string/jumbo v2, "BluetoothBondStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bond address is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->createBondOutOfBandNative([BILandroid/bluetooth/OobData;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    const/16 v2, 0x9

    invoke-direct {p0, p1, v6, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    return v5

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->createBondNative([BI)Z

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_2
    const/4 v2, 0x1

    return v2

    :cond_3
    return v5
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getUnbondReasonFromHALCode(I)I
    .locals 2

    const/16 v1, 0x9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    const/4 v0, 0x6

    return v0

    :cond_4
    return v1
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)Lcom/android/bluetooth/btservice/BondStateMachine;
    .locals 3

    const-string/jumbo v1, "BluetoothBondStateMachine"

    const-string/jumbo v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)V

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->start()V

    return-object v0
.end method

.method private removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "BluetoothBondStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeBond :: device address is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterService;->removeBondNative([B)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "BluetoothBondStateMachine"

    const-string/jumbo v2, "Unexpected error while removing bond:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private sendDisplayPinIntent([BII)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string/jumbo v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7

    const/16 v6, 0xc

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    :cond_0
    if-ne v2, p2, :cond_1

    return-void

    :cond_1
    if-ne p2, v6, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isDeviceWhitelisted(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Secure mode On &Device is not whitelisted. Removing bond"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->errorLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z

    const/16 p2, 0xa

    const/4 p3, 0x1

    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v3, p1, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v3, 0xa

    if-ne p2, v3, :cond_3

    const-string/jumbo v3, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bond State Change Intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NewState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BluetoothBondStateMachine -- Bond State Change Intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NewState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;->isSecureModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne p2, v6, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V

    :cond_4
    return-void
.end method

.method private warnLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method bondStateChangeCallback(I[BI)V
    .locals 10

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-nez v8, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No record of the device:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bondStateChangeCallback: Status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " Address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " newState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    const/16 v0, 0xc

    iput v0, v9, Landroid/os/Message;->arg1:I

    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "Device Paired"

    const/4 v2, 0x0

    aput-object v0, v4, v2

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "bluetoothLogForRemote"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string/jumbo v0, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "severity"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "group"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "outcome"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "component"

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pairing bluetooth device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "userid"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_2
    :goto_0
    iput p1, v9, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v9}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    const/16 v0, 0xb

    iput v0, v9, Landroid/os/Message;->arg1:I

    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "Device Paired Initiated"

    const/4 v2, 0x0

    aput-object v0, v4, v2

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "bluetoothLogForRemote"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    const/16 v0, 0xa

    iput v0, v9, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method bondStateChangeCallback(I[BII)V
    .locals 13

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    if-nez v10, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No record of the device:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bondStateChangeCallback: Status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " Address: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " newState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " reason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    iput-object v10, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_4

    const/16 v1, 0xc

    iput v1, v11, Landroid/os/Message;->arg1:I

    const-string/jumbo v1, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "Device Paired"

    const/4 v3, 0x0

    aput-object v1, v5, v3

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v5, v3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "bluetoothLogForRemote"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string/jumbo v1, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "severity"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "group"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "outcome"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "component"

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pairing bluetooth device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " succeeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userid"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, v10}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v9

    const/16 v12, 0xa

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v12

    :cond_2
    sget-boolean v1, Lcom/android/bluetooth/btservice/BondStateMachine;->mOutgoing:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xb

    if-ne v12, v1, :cond_3

    if-nez p4, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move/from16 v0, p4

    invoke-virtual {v1, p2, v0}, Lcom/samsung/bt/data/BluetoothDataManager;->notifyBondFailReason([BI)V

    :cond_3
    :goto_0
    iput p1, v11, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_4
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_5

    const/16 v1, 0xb

    iput v1, v11, Landroid/os/Message;->arg1:I

    const-string/jumbo v1, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "Device Paired Initiated"

    const/4 v3, 0x0

    aput-object v1, v5, v3

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v5, v3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "bluetoothLogForRemote"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, v10}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v9

    const/16 v12, 0xa

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v12

    :cond_6
    move/from16 v0, p3

    if-ne v12, v0, :cond_7

    return-void

    :cond_7
    const/16 v1, 0xa

    iput v1, v11, Landroid/os/Message;->arg1:I

    sget-boolean v1, Lcom/android/bluetooth/btservice/BondStateMachine;->mOutgoing:Z

    if-eqz v1, :cond_8

    const/16 v1, 0xb

    if-ne v12, v1, :cond_8

    if-eqz p4, :cond_8

    const-string/jumbo v1, "bondStateChangeCallback notifyBondFailReason"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move/from16 v0, p4

    invoke-virtual {v1, p2, v0}, Lcom/samsung/bt/data/BluetoothDataManager;->notifyBondFailReason([BI)V

    goto :goto_0

    :cond_8
    if-eqz p4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bondStateChangeCallback Debugd mOutgoing:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/bluetooth/btservice/BondStateMachine;->mOutgoing:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " oldState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    return-void
.end method

.method public doQuit()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->quitNow()V

    return-void
.end method

.method public initStateMachine()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    const-string/jumbo v0, "initStateMachine"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method pinRequestCallback([B[BIZ)V
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pinRequestCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " cod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p4, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method sspRequestCallback([B[BIII)V
    .locals 7

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sspRequestCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pairingVariant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    const/4 v2, 0x0

    packed-switch p4, :pswitch_data_0

    const-string/jumbo v5, "SSP Pairing variant not present"

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->errorLog(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const/4 v4, 0x2

    const/4 v2, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Device is not known for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->warnLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    :cond_1
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iput p5, v3, Landroid/os/Message;->arg1:I

    :cond_2
    iput v4, v3, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x4

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
