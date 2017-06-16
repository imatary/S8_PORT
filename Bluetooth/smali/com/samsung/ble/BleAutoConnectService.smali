.class public Lcom/samsung/ble/BleAutoConnectService;
.super Landroid/app/Service;
.source "BleAutoConnectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ble/BleAutoConnectService$1;,
        Lcom/samsung/ble/BleAutoConnectService$2;,
        Lcom/samsung/ble/BleAutoConnectService$3;,
        Lcom/samsung/ble/BleAutoConnectService$4;,
        Lcom/samsung/ble/BleAutoConnectService$5;,
        Lcom/samsung/ble/BleAutoConnectService$6;,
        Lcom/samsung/ble/BleAutoConnectService$LocalBinder;
    }
.end annotation


# static fields
.field public static final DEVICE_LAST_CONNECTED:Ljava/lang/String; = "samsung_last_connected_device"

.field public static final EXTRA_BLE_AUTOCONNECT_DEVICE_ADDRESS:Ljava/lang/String; = "com.samsung.bluetooth.EXTRA_BLE_AUTOCONNECT_DEVICE_ADDRESS"

.field private static final MSG_GATT_SERVICE_BINDING:I = 0x3e9

.field private static final MSG_LE_DISCONNECT:I = 0x3e8

.field private static final MSG_WAIT_FOR_LE_CONNECT:Ljava/lang/String; = "com.samsung.ble.BleAutoConnectService.intent.action.MSG_WAIT_FOR_LE_CONNECTION"

.field private static final SUPPORTED_BSSF:Ljava/lang/String; = "supported_bssf"

.field private static final TAG:Ljava/lang/String; = "BleAutoConnectService"

.field private static getGattObjectTry:I

.field private static mAgConnectionTrialCount:I

.field private static mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field public static mIsAutoConnection:Z

.field private static mUserInitiatedAGConn:Z

.field private static mWatchAddress:Ljava/lang/String;


# instance fields
.field private AUTH_FAIL:I

.field private BREDR_LINK_TYPE:I

.field private CONN_FAILED_TO_BE_EASTABLISHED:I

.field private DEFAULT_SCAN_INTERVAL:I

.field private DEFAULT_SCAN_WINDOW:I

.field private DEVICE_TYPE_DUMO:I

.field private GATT_SUCCESS:I

.field private HALF_SCAN_INTERVAL:I

.field private HALF_SCAN_WINDOW:I

.field private HIGH_RSSI:I

.field private LE_HIGH_RSSI:I

.field private LE_LINK_TYPE:I

.field private LE_LOW_RSSI:I

.field private LE_MID_RSSI:I

.field private LOCAL_USER_DISCONNECTION:I

.field private LOW_RSSI:I

.field private MID_RSSI:I

.field private REASON_LINK_LOSS:I

.field private REMOTE_BSSF_AUTOCONNECTION_FEATURE:I

.field private REMOTE_USER_DISCONNECTION:I

.field private SLOW_SCAN_INTERVAL:I

.field private SLOW_SCAN_WINDOW:I

.field private USER_REMOVED_BOND:I

.field private mAlarmService:Landroid/app/AlarmManager;

.field private mAutoUnlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBinder:Landroid/os/IBinder;

.field private mBleBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

.field private mGattHandler:Landroid/os/Handler;

.field private mHighRssi:I

.field private mIsAgConnectionTrialStart:Z

.field private mIsFirstAttempt:Z

.field private mIsHfConnectionStart:Z

.field private mIsWatchBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLeHighRssi:I

.field private mLeLowRssi:I

.field private mLeMidRssi:I

.field private mLowRssi:I

.field private mMidRssi:I

.field private mRemoteDeviceAddress:Ljava/lang/String;

.field private mScanParamIntentfilter:Landroid/content/BroadcastReceiver;

.field private mStartLeconnPendingIntent:Landroid/app/PendingIntent;

.field private readRssiCount:I


# direct methods
.method static synthetic -get0(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->AUTH_FAIL:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->BREDR_LINK_TYPE:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->SLOW_SCAN_INTERVAL:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->SLOW_SCAN_WINDOW:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->USER_REMOVED_BOND:I

    return v0
.end method

.method static synthetic -get13()I
    .locals 1

    sget v0, Lcom/samsung/ble/BleAutoConnectService;->getGattObjectTry:I

    return v0
.end method

.method static synthetic -get14()I
    .locals 1

    sget v0, Lcom/samsung/ble/BleAutoConnectService;->mAgConnectionTrialCount:I

    return v0
.end method

.method static synthetic -get15()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/ble/BleAutoConnectService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/ble/BleAutoConnectService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/ble/BleAutoConnectService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsAgConnectionTrialStart:Z

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/ble/BleAutoConnectService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsFirstAttempt:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->CONN_FAILED_TO_BE_EASTABLISHED:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mLeHighRssi:I

    return v0
.end method

.method static synthetic -get21(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mLeLowRssi:I

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mLeMidRssi:I

    return v0
.end method

.method static synthetic -get23()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/ble/BleAutoConnectService;->mUserInitiatedAGConn:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->DEFAULT_SCAN_INTERVAL:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->DEFAULT_SCAN_WINDOW:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->GATT_SUCCESS:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->LE_LINK_TYPE:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->LOCAL_USER_DISCONNECTION:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->REASON_LINK_LOSS:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/ble/BleAutoConnectService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->REMOTE_BSSF_AUTOCONNECTION_FEATURE:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/ble/BleAutoConnectService;->getGattObjectTry:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/ble/BleAutoConnectService;->mAgConnectionTrialCount:I

    return p0
.end method

.method static synthetic -set2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    sput-object p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic -set3(Lcom/samsung/ble/BleAutoConnectService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/ble/BleAutoConnectService;->mHighRssi:I

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/ble/BleAutoConnectService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsAgConnectionTrialStart:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/ble/BleAutoConnectService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsFirstAttempt:Z

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/ble/BleAutoConnectService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsHfConnectionStart:Z

    return p1
.end method

.method static synthetic -set7(Lcom/samsung/ble/BleAutoConnectService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/ble/BleAutoConnectService;->mLowRssi:I

    return p1
.end method

.method static synthetic -set8(Lcom/samsung/ble/BleAutoConnectService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/ble/BleAutoConnectService;->mMidRssi:I

    return p1
.end method

.method static synthetic -set9(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/ble/BleAutoConnectService;->mUserInitiatedAGConn:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/ble/BleAutoConnectService;->saveConnectedDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/ble/BleAutoConnectService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/ble/BleAutoConnectService;->getLastConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/ble/BleAutoConnectService;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/ble/BleAutoConnectService;->connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/ble/BleAutoConnectService;->disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/ble/BleAutoConnectService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/ble/BleAutoConnectService;->startMonitorRssi(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/ble/BleAutoConnectService;->mAgConnectionTrialCount:I

    sput-boolean v0, Lcom/samsung/ble/BleAutoConnectService;->mUserInitiatedAGConn:Z

    sput v0, Lcom/samsung/ble/BleAutoConnectService;->getGattObjectTry:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const v5, 0xffff

    const/16 v4, 0x7f

    const/4 v3, 0x1

    const/16 v2, -0x46

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/samsung/ble/BleAutoConnectService;->LOW_RSSI:I

    const/16 v0, -0x3c

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->MID_RSSI:I

    iput v4, p0, Lcom/samsung/ble/BleAutoConnectService;->HIGH_RSSI:I

    const/16 v0, -0x50

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->LE_LOW_RSSI:I

    iput v2, p0, Lcom/samsung/ble/BleAutoConnectService;->LE_MID_RSSI:I

    iput v4, p0, Lcom/samsung/ble/BleAutoConnectService;->LE_HIGH_RSSI:I

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->LOW_RSSI:I

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mLowRssi:I

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->MID_RSSI:I

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mMidRssi:I

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->HIGH_RSSI:I

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mHighRssi:I

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->LE_LOW_RSSI:I

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mLeLowRssi:I

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->LE_MID_RSSI:I

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mLeMidRssi:I

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->LE_HIGH_RSSI:I

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mLeHighRssi:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->REASON_LINK_LOSS:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->REMOTE_USER_DISCONNECTION:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->LOCAL_USER_DISCONNECTION:I

    const/16 v0, 0x3e

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->CONN_FAILED_TO_BE_EASTABLISHED:I

    const/16 v0, 0x44

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->USER_REMOVED_BOND:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->AUTH_FAIL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->LE_LINK_TYPE:I

    iput v3, p0, Lcom/samsung/ble/BleAutoConnectService;->BREDR_LINK_TYPE:I

    iput v1, p0, Lcom/samsung/ble/BleAutoConnectService;->GATT_SUCCESS:I

    iput v1, p0, Lcom/samsung/ble/BleAutoConnectService;->readRssiCount:I

    iput-boolean v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsAgConnectionTrialStart:Z

    iput v3, p0, Lcom/samsung/ble/BleAutoConnectService;->REMOTE_BSSF_AUTOCONNECTION_FEATURE:I

    const/16 v0, 0x60

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->HALF_SCAN_INTERVAL:I

    const/16 v0, 0x30

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->HALF_SCAN_WINDOW:I

    const/16 v0, 0x800

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->SLOW_SCAN_INTERVAL:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->SLOW_SCAN_WINDOW:I

    iput v5, p0, Lcom/samsung/ble/BleAutoConnectService;->DEFAULT_SCAN_INTERVAL:I

    iput v5, p0, Lcom/samsung/ble/BleAutoConnectService;->DEFAULT_SCAN_WINDOW:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->DEVICE_TYPE_DUMO:I

    new-instance v0, Lcom/samsung/ble/BleAutoConnectService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/samsung/ble/BleAutoConnectService$LocalBinder;-><init>(Lcom/samsung/ble/BleAutoConnectService;)V

    iput-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/ble/BleAutoConnectService$1;

    invoke-direct {v0, p0}, Lcom/samsung/ble/BleAutoConnectService$1;-><init>(Lcom/samsung/ble/BleAutoConnectService;)V

    iput-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    new-instance v0, Lcom/samsung/ble/BleAutoConnectService$2;

    invoke-direct {v0, p0}, Lcom/samsung/ble/BleAutoConnectService$2;-><init>(Lcom/samsung/ble/BleAutoConnectService;)V

    iput-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsWatchBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/ble/BleAutoConnectService$3;

    invoke-direct {v0, p0}, Lcom/samsung/ble/BleAutoConnectService$3;-><init>(Lcom/samsung/ble/BleAutoConnectService;)V

    iput-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mAutoUnlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/ble/BleAutoConnectService$4;

    invoke-direct {v0, p0}, Lcom/samsung/ble/BleAutoConnectService$4;-><init>(Lcom/samsung/ble/BleAutoConnectService;)V

    iput-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mScanParamIntentfilter:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/ble/BleAutoConnectService$5;

    invoke-direct {v0, p0}, Lcom/samsung/ble/BleAutoConnectService$5;-><init>(Lcom/samsung/ble/BleAutoConnectService;)V

    iput-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mBleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/ble/BleAutoConnectService$6;

    invoke-direct {v0, p0}, Lcom/samsung/ble/BleAutoConnectService$6;-><init>(Lcom/samsung/ble/BleAutoConnectService;)V

    iput-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattHandler:Landroid/os/Handler;

    return-void
.end method

.method public static ClearAutoConnection()V
    .locals 3

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BleAutoConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ClearAutoConnection : mIsAutoConnection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    return-void
.end method

.method private connectLEDevice(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 6

    const/16 v5, 0x3e9

    const/4 v4, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "BleAutoConnectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectLEDevice - device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[1006]{001E}(01::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/ble/BleAutoConnectService;->mWatchAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget v2, p0, Lcom/samsung/ble/BleAutoConnectService;->HALF_SCAN_INTERVAL:I

    iget v3, p0, Lcom/samsung/ble/BleAutoConnectService;->HALF_SCAN_WINDOW:I

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->semSetBleConnectionScanParameter(II)Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/ble/BleAutoConnectService;->triggerSlowScanTimer(Landroid/bluetooth/BluetoothDevice;)V

    const-string/jumbo v1, "persist.service.bdroid.version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4.2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "4.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p0, v1}, Landroid/bluetooth/BluetoothDevice;->semConnectGattByPublicAddress(Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sput-object v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    :goto_0
    sget-object v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_5

    sput-boolean v4, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    const/4 v1, 0x0

    sput v1, Lcom/samsung/ble/BleAutoConnectService;->getGattObjectTry:I

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v2, 0x2

    invoke-virtual {p1, p0, v4, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sput-object v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    :cond_5
    sget v1, Lcom/samsung/ble/BleAutoConnectService;->getGattObjectTry:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    const-string/jumbo v1, "BleAutoConnectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending 1 second Delayed intent for for gatt object binding count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/ble/BleAutoConnectService;->getGattObjectTry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BleAutoConnectService"

    const-string/jumbo v2, "Sending 1 second Delayed timer for Gatt oject binding is ok "

    invoke-static {v1, v2}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private connectLEDeviceafterLLOrRUT(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "BleAutoConnectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connectLEDeviceafterLLOrRUT - device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[1006]{001C}(01::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v2, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    sput-object v4, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/ble/BleAutoConnectService;->mWatchAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget v2, p0, Lcom/samsung/ble/BleAutoConnectService;->HALF_SCAN_INTERVAL:I

    iget v3, p0, Lcom/samsung/ble/BleAutoConnectService;->HALF_SCAN_WINDOW:I

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->semSetBleConnectionScanParameter(II)Z

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/ble/BleAutoConnectService;->triggerSlowScanTimer(Landroid/bluetooth/BluetoothDevice;)V

    const-string/jumbo v1, "persist.service.bdroid.version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4.2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "4.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, p0, v1}, Landroid/bluetooth/BluetoothDevice;->semConnectGattByPublicAddress(Landroid/content/Context;Landroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sput-object v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    :goto_0
    sget-object v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_4

    sput-boolean v5, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v2, 0x2

    invoke-virtual {p1, p0, v5, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sput-object v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0
.end method

.method private disconnectBLEDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string/jumbo v0, "BleAutoConnectService"

    const-string/jumbo v1, "disconnectBLEDevice to connect AG"

    invoke-static {v0, v1}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[1006]{0007}(01::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/ble/BleAutoConnectService;->removeSlowScanTimer()V

    iget-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget v1, p0, Lcom/samsung/ble/BleAutoConnectService;->DEFAULT_SCAN_INTERVAL:I

    iget v2, p0, Lcom/samsung/ble/BleAutoConnectService;->DEFAULT_SCAN_WINDOW:I

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->semSetBleConnectionScanParameter(II)Z

    :cond_0
    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_1
    return-void
.end method

.method private getLastConnectedDeviceAddress()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/ble/BleAutoConnectService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "samsung_last_connected_device"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAutoConnectionIsInProgress(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mWatchAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mWatchAddress:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BleAutoConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAutoConnectionIsInProgress of Le autoConnection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mWatchAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mWatchAddress:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    if-eqz v0, :cond_1

    sput-boolean v3, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/ble/BleAutoConnectService;->mUserInitiatedAGConn:Z

    sget-boolean v0, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    return v0

    :cond_1
    return v3
.end method

.method private saveConnectedDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/ble/BleAutoConnectService;->setLastConnectedDeviceAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setLastConnectedDeviceAddress(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/ble/BleAutoConnectService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "samsung_last_connected_device"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0
.end method

.method private startMonitorRssi(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mLowRssi:I

    iget v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mMidRssi:I

    iget v2, p0, Lcom/samsung/ble/BleAutoConnectService;->mHighRssi:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->semMonitorRssi(III)Z

    return-void
.end method


# virtual methods
.method public BleMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z
    .locals 1

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2, p3, p4}, Landroid/bluetooth/BluetoothGatt;->semMonitorRssi(III)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public gethfConnectionState(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ble/BleAutoConnectService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/samsung/ble/BleAutoConnectService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v7, :cond_0

    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "Sorry! Bluetooth is not supported in this device"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/ble/BleAutoConnectService;->stopSelf()V

    return-void

    :cond_0
    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mBleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v6}, Lcom/samsung/ble/BleAutoConnectService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-boolean v8, Lcom/samsung/ble/BleAutoConnectService;->mIsAutoConnection:Z

    iput-boolean v8, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsHfConnectionStart:Z

    iput-boolean v10, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsFirstAttempt:Z

    sput v8, Lcom/samsung/ble/BleAutoConnectService;->mAgConnectionTrialCount:I

    iput-boolean v8, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsAgConnectionTrialStart:Z

    sput-boolean v8, Lcom/samsung/ble/BleAutoConnectService;->mUserInitiatedAGConn:Z

    const-string/jumbo v7, "alarm"

    invoke-virtual {p0, v7}, Lcom/samsung/ble/BleAutoConnectService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mAlarmService:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "com.samsung.ble.BleAutoConnectService.intent.action.MSG_WAIT_FOR_LE_CONNECTION"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mScanParamIntentfilter:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/samsung/ble/BleAutoConnectService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "com.samsung.bt.hfp.intent.action.SET_BSSF"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsWatchBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Lcom/samsung/ble/BleAutoConnectService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "com.samsung.bluetooth.device.action.RSSI_IN_RANGE_ALERT_FOR_GEAR1"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "com.samsung.bluetooth.device.action.RSSI_OUT_OF_RANGE_ALERT_FOR_GEAR1"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mAutoUnlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v8, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {p0, v7, v3, v8, v9}, Lcom/samsung/ble/BleAutoConnectService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/ble/BleAutoConnectService;->getLastConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[1006]{001A}(03::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_1

    invoke-direct {p0, v4, v10}, Lcom/samsung/ble/BleAutoConnectService;->connectLEDevice(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v7, "BleAutoConnectService"

    const-string/jumbo v8, "device is null"

    invoke-static {v7, v8}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "[1006]{001A}(03::null)"

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "[1006]{001B}"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.ble.BleAutoConnectService.intent.action.MSG_WAIT_FOR_LE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10000000

    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mStartLeconnPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mStartLeconnPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService;->mStartLeconnPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mGattHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mBleBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/ble/BleAutoConnectService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mIsWatchBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/ble/BleAutoConnectService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mAutoUnlockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/ble/BleAutoConnectService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mScanParamIntentfilter:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/samsung/ble/BleAutoConnectService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v2, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    sput-object v4, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_2
    iput v5, p0, Lcom/samsung/ble/BleAutoConnectService;->readRssiCount:I

    sput v5, Lcom/samsung/ble/BleAutoConnectService;->getGattObjectTry:I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public readRssi(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/ble/BleAutoConnectService;->readRssiCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/ble/BleAutoConnectService;->readRssiCount:I

    sget-object v0, Lcom/samsung/ble/BleAutoConnectService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeSlowScanTimer()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.ble.BleAutoConnectService.intent.action.MSG_WAIT_FOR_LE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mStartLeconnPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mStartLeconnPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/samsung/ble/BleAutoConnectService;->mStartLeconnPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public triggerSlowScanTimer(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.ble.BleAutoConnectService.intent.action.MSG_WAIT_FOR_LE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mStartLeconnPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/samsung/ble/BleAutoConnectService;->mAlarmService:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/ble/BleAutoConnectService;->mStartLeconnPendingIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method
