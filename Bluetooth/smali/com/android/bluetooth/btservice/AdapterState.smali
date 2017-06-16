.class final Lcom/android/bluetooth/btservice/AdapterState;
.super Lcom/android/internal/util/StateMachine;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterState$BleOnState;,
        Lcom/android/bluetooth/btservice/AdapterState$OffState;,
        Lcom/android/bluetooth/btservice/AdapterState$OnState;,
        Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    }
.end annotation


# static fields
.field static final ALL_DEVICES_DISCONNECTED:I = 0x16

.field static final BEGIN_DISABLE:I = 0x15

.field static final BLE_STARTED:I = 0x4

.field static final BLE_START_TIMEOUT:I = 0x6a

.field private static final BLE_START_TIMEOUT_DELAY:I = 0x7d0

.field static final BLE_STOPPED:I = 0x19

.field static final BLE_STOP_TIMEOUT:I = 0x68

.field private static final BLE_STOP_TIMEOUT_DELAY:I = 0x7d0

.field static final BLE_TURN_OFF:I = 0x17

.field static final BLE_TURN_ON:I = 0x0

.field static final BREDR_NATIVE_STARTED:I = 0xc8

.field static final BREDR_NATIVE_START_TIMEOUT:I = 0xc9

.field private static final BREDR_NATIVE_START_TIMEOUT_DELAY:I = 0xfa0

.field static final BREDR_NATIVE_STOPED:I = 0xca

.field static final BREDR_NATIVE_STOP_TIMEOUT:I = 0xcb

.field private static final BREDR_NATIVE_STOP_TIMEOUT_DELAY:I = 0x1f40

.field static final BREDR_STARTED:I = 0x2

.field static final BREDR_START_TIMEOUT:I = 0x64

.field private static final BREDR_START_TIMEOUT_DELAY:I = 0xfa0

.field static final BREDR_STOPPED:I = 0x1a

.field static final BREDR_STOP_TIMEOUT:I = 0x6b

.field private static final BREDR_STOP_TIMEOUT_DELAY:I = 0xfa0

.field private static final DBG:Z = true

.field static final DISABLED:I = 0x18

.field static final DISABLE_TIMEOUT:I = 0x67

.field private static final DISABLE_TIMEOUT_DELAY:I = 0x1f40

.field static final ENABLED_READY:I = 0x3

.field static final ENABLE_TIMEOUT:I = 0x65

.field private static final ENABLE_TIMEOUT_DELAY:I = 0x2ee0

.field private static final PROPERTY_OP_DELAY:I = 0x7d0

.field static final SET_SCAN_MODE_TIMEOUT:I = 0x69

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterState"

.field static final USER_TURN_OFF:I = 0x14

.field static final USER_TURN_OFF_DELAY_MS:I = 0x1f4

.field static final USER_TURN_ON:I = 0x1

.field private static final VDBG:Z = true


# instance fields
.field btDownloadableDb:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

.field mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

.field private mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

.field private mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

.field private mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$BleOnState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    return-object v0
.end method

.method static synthetic -wrap0(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterState;->debugGetMessageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->abnormalRecover(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "BluetoothAdapterState:"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$OnState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$OnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$OnState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$OffState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$OffState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$BleOnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$BleOnState;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    new-instance v0, Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-direct {v0}, Lcom/samsung/bt/data/BluetoothDataManager;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mBleOnState:Lcom/android/bluetooth/btservice/AdapterState$BleOnState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iput-object p2, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method private abnormalRecover(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-virtual {v1, p1}, Lcom/samsung/bt/data/BluetoothDataManager;->notifyLocalErrorReason(I)V

    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static debugGetMessageName(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "BLE_TURN_ON"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "USER_TURN_ON"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "BREDR_STARTED"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "ENABLED_READY"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "BLE_STARTED"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "USER_TURN_OFF"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "BEGIN_DISABLE"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "ALL_DEVICES_DISCONNECTED"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "BLE_TURN_OFF"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "DISABLED"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "BLE_STOPPED"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "BREDR_STOPPED"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "BREDR_START_TIMEOUT"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "ENABLE_TIMEOUT"

    return-object v0

    :sswitch_e
    const-string/jumbo v0, "DISABLE_TIMEOUT"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "BLE_STOP_TIMEOUT"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "SET_SCAN_MODE_TIMEOUT"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "BLE_START_TIMEOUT"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "BREDR_STOP_TIMEOUT"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "BREDR_NATIVE_STARTED"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "BREDR_NATIVE_START_TIMEOUT"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "BREDR_NATIVE_STOPED"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "BREDR_NATIVE_STOP_TIMEOUT"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x67 -> :sswitch_e
        0x68 -> :sswitch_f
        0x69 -> :sswitch_10
        0x6a -> :sswitch_11
        0x6b -> :sswitch_12
        0xc8 -> :sswitch_13
        0xc9 -> :sswitch_14
        0xca -> :sswitch_15
        0xcb -> :sswitch_16
    .end sparse-switch
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)Lcom/android/bluetooth/btservice/AdapterState;
    .locals 3

    const-string/jumbo v1, "BluetoothAdapterState"

    const-string/jumbo v2, "make() - Creating AdapterState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)V

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->start()V

    return-object v0
.end method

.method private notifyAdapterStateChange(I)V
    .locals 5

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAdapterStateChange after cleanup:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v2

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setState(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bluetooth adapter state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->updateAdapterState(II)V

    return-void
.end method

.method private verboseLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private warningLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    :cond_1
    return-void
.end method

.method public doQuit()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState;->quitNow()V

    return-void
.end method

.method public isBleTurningOff()Z
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isBleTurningOff()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBleTurningOff()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->verboseLog(Ljava/lang/String;)V

    return v0
.end method

.method public isBleTurningOn()Z
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isBleTurningOn()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBleTurningOn()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->verboseLog(Ljava/lang/String;)V

    return v0
.end method

.method public isTurningOff()Z
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOff()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTurningOff()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->verboseLog(Ljava/lang/String;)V

    return v0
.end method

.method public isTurningOn()Z
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOn()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTurningOn()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->verboseLog(Ljava/lang/String;)V

    return v0
.end method

.method stateChangeCallback(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stateChangeCallback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Incorrect status in stateChangeCallback"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V

    goto :goto_0
.end method
