.class public Lcom/android/bluetooth/btservice/AdapterService;
.super Landroid/app/Service;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterService$1;,
        Lcom/android/bluetooth/btservice/AdapterService$2;,
        Lcom/android/bluetooth/btservice/AdapterService$3;,
        Lcom/android/bluetooth/btservice/AdapterService$4;,
        Lcom/android/bluetooth/btservice/AdapterService$A2dpServiceListener;,
        Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;,
        Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;,
        Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;
    }
.end annotation


# static fields
.field private static final ACTION_ALARM_WAKEUP:Ljava/lang/String; = "com.android.bluetooth.btservice.action.ALARM_WAKEUP"

.field private static final ACTION_ENABLE_A2DP_SINK_SERVICE:Ljava/lang/String; = "com.samsung.bluetooth.btservice.action.ACTION_ENABLE_A2DP_SINK_SERVICE"

.field public static final ACTION_LOAD_ADAPTER_PROPERTIES:Ljava/lang/String; = "com.android.bluetooth.btservice.action.LOAD_ADAPTER_PROPERTIES"

.field private static final ACTION_NOTIFY_A2DP_SINK_SERVICE:Ljava/lang/String; = "com.samsung.bluetooth.btservice.action.ACTION_NOTIFY_A2DP_SINK_SERVICE"

.field private static final ACTION_REGISTER_A2DP_SINK_SERVICE:Ljava/lang/String; = "com.samsung.bluetooth.btservice.action.ACTION_REGISTER_A2DP_SINK_SERVICE"

.field private static final ACTION_REGISTER_HFP_CLIENT_SERVICE:Ljava/lang/String; = "com.android.bluetooth.btservice.action.ACTION_REGISTER_HFP_CLIENT_SERVICE"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADAPTER_SERVICE_TYPE:I = 0x1

.field private static final BLUETOOTH_A2DP_PREFERENCE:Ljava/lang/String; = "bluetooth_a2dp_preference"

.field private static final BLUETOOTH_A2DP_SINK_MODE:Ljava/lang/String; = "bluetooth_a2dp_sink_mode"

.field public static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_DEBUG_PERM:Ljava/lang/String; = "com.sec.permission.BLUETOOTH_DEBUG"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final BONDED_TIME_STAMP_PREFERENCE_FILE:Ljava/lang/String; = "bonded_time_stamp"

.field private static final CONNECT_OTHER_PROFILES_TIMEOUT:I = 0x1770

.field private static final CONTROLLER_ENERGY_UPDATE_TIMEOUT_MILLIS:I = 0x1e

.field private static final DBG:Z

.field public static final DEVICE_LAST_CONNECTED:Ljava/lang/String; = "samsung_last_connected_device"

.field private static final DEVICE_TYPE_NAMES:[Ljava/lang/String;

.field private static final DISCONNECTED_REMOTE_DEVICE_DELAY:I = 0x1f4

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final EXTRA_ENABLE_SERVICE:Ljava/lang/String; = "EXTRA.ENABLE.SERVICE"

.field private static final MESSAGE_ACCESS_PERMISSION_PREFERENCE_FILE:Ljava/lang/String; = "message_access_permission"

.field private static final MESSAGE_CONNECT_OTHER_PROFILES:I = 0x1e

.field private static final MESSAGE_CONNECT_OTHER_PROFILES_2:I = 0x1f

.field private static final MESSAGE_PROFILE_CONNECTION_STATE_CHANGED:I = 0x14

.field private static final MESSAGE_PROFILE_INIT_PRIORITIES:I = 0x28

.field private static final MESSAGE_PROFILE_SERVICE_STATE_CHANGED:I = 0x1

.field private static final MESSAGE_SEND_SINK_NOTIFY_INTENT:I = 0x34

.field private static final MESSAGE_STOP_SINK_SERVICE:I = 0x32

.field private static final MESSAGE_TURN_OFF_SINK_MODE:I = 0x33

.field private static final MIN_ADVT_INSTANCES_FOR_MA:I = 0x5

.field private static final MIN_OFFLOADED_FILTERS:I = 0xa

.field private static final MIN_OFFLOADED_SCAN_STORAGE_BYTES:I = 0x400

.field private static final MODE_OFF:I = 0x0

.field private static final MODE_ON:I = 0x2

.field private static final PHONEBOOK_ACCESS_PERMISSION_PREFERENCE_FILE:Ljava/lang/String; = "phonebook_access_permission"

.field public static final PROFILE_CONN_CONNECTED:I = 0x1

.field public static final PROFILE_CONN_REJECTED:I = 0x2

.field static final RECEIVE_MAP_PERM:Ljava/lang/String; = "android.permission.RECEIVE_BLUETOOTH_MAP"

.field private static final SIM_ACCESS_PERMISSION_PREFERENCE_FILE:Ljava/lang/String; = "sim_access_permission"

.field private static final SINK_SERVICE_NOTIFY_DELAY:I = 0x3e8

.field private static final SINK_SERVICE_STOP_AFTER_DISCONNECTED_REMOTE_DEVICE_DELAY:I = 0x1f4

.field private static final SINK_SERVICE_STOP_DELAY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterService"

.field private static final TRACE_REF:Z = false

.field private static final TURNING_OFF:I = 0x3

.field private static final TURNING_ON:I = 0x1

.field private static a2dpMaxConnectDevice:I

.field private static mAvPerformance:Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;

.field private static mCheckAddrForIOP:Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;

.field public static mOutgoing:I

.field private static mUsingSinkProxy:Z

.field private static mdlHighRssi:I

.field private static mdlLowRssi:I

.field private static mdlMidRssi:I

.field private static sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static sRefCount:I

.field private static supported_pbap:Z


# instance fields
.field private connectOtherDevice:Landroid/bluetooth/BluetoothDevice;

.field private connectOtherDevice2:Landroid/bluetooth/BluetoothDevice;

.field private mA2dpSinkService:Landroid/bluetooth/BluetoothA2dpSink;

.field private mA2dpSinkServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mA2dpSourceService:Landroid/bluetooth/BluetoothA2dp;

.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

.field private final mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

.field private mBluetoothStartTime:J

.field private mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCleaningUp:Z

.field private mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCurrentRequestId:I

.field private final mEnergyInfoLock:Ljava/lang/Object;

.field private mEnergyUsedTotalVoltAmpSecMicro:J

.field private final mHandler:Landroid/os/Handler;

.field private mIdleTimeTotalMs:J

.field private mIntentSdpRegister:Landroid/content/BroadcastReceiver;

.field private mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

.field private mNativeAvailable:Z

.field private mPendingAlarm:Landroid/app/PendingIntent;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

.field private mProfileServicesState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/btservice/ProfileService;",
            ">;"
        }
    .end annotation
.end field

.field private mProfilesStarted:Z

.field private mQuietmode:Z

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field public mRssiNearThreshold:I

.field public mRssiThreshold:I

.field private mRxTimeTotalMs:J

.field private mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

.field private mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

.field private mStackReportedState:I

.field private mTxTimeTotalMs:J

.field private mUidTraffic:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/bluetooth/UidTraffic;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSourceService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/btservice/AdapterService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/btservice/AdapterService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->disconnectA2dpSink()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processProfileServiceStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/btservice/AdapterService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->sendIntentA2dpSinkNotify(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/btservice/AdapterService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setUsingSinkProxy(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/btservice/AdapterService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isActivityAndEnergyReportingSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/btservice/AdapterService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->alarmFiredNative()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondOnSink()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->processInitProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    sput v2, Lcom/android/bluetooth/btservice/AdapterService;->sRefCount:I

    sput v1, Lcom/android/bluetooth/btservice/AdapterService;->mdlLowRssi:I

    sput v1, Lcom/android/bluetooth/btservice/AdapterService;->mdlMidRssi:I

    sput v1, Lcom/android/bluetooth/btservice/AdapterService;->mdlHighRssi:I

    sput v2, Lcom/android/bluetooth/btservice/AdapterService;->mOutgoing:I

    sput-boolean v2, Lcom/android/bluetooth/btservice/AdapterService;->supported_pbap:Z

    sput-boolean v2, Lcom/android/bluetooth/btservice/AdapterService;->mUsingSinkProxy:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "???"

    aput-object v1, v0, v2

    const-string/jumbo v1, "BR/EDR"

    aput-object v1, v0, v3

    const-string/jumbo v1, "LE"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "DUAL"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/btservice/AdapterService;->DEVICE_TYPE_NAMES:[Ljava/lang/String;

    sput v3, Lcom/android/bluetooth/btservice/AdapterService;->a2dpMaxConnectDevice:I

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRssiThreshold:I

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRssiNearThreshold:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothStartTime:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$1;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$2;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$3;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIntentSdpRegister:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$4;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$4;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    sput v0, Lcom/android/bluetooth/btservice/AdapterService;->a2dpMaxConnectDevice:I

    new-instance v0, Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/RemoteDevices;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    return-void
.end method

.method private acquireWakeLock(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLockName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private adjustOtherA2dpSinkPriorities(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x64

    invoke-virtual {p1, v0, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private adjustOtherHeadsetPriorities(Lcom/android/bluetooth/hfp/HeadsetService;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/hfp/HeadsetService;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x64

    invoke-virtual {p1, v0, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private adjustOtherPbapClientPriorities(Lcom/android/bluetooth/pbapclient/PbapClientService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x64

    invoke-virtual {p1, v0, v4}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private adjustOtherSinkPriorities(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x64

    invoke-virtual {p1, v0, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private native alarmFiredNative()V
.end method

.method private autoConnectA2dp()V
    .locals 7

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autoConnectA2dp() - Connecting A2DP with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private autoConnectA2dpSink()V
    .locals 7

    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autoConnectA2dpSink() - Connecting A2DP Sink with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private autoConnectHeadset()V
    .locals 7

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autoConnectHeadset() - Connecting HFP with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private autoConnectPbapClient()V
    .locals 7

    invoke-static {}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPbapClientService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "autoConnectPbapClient() - Connecting PBAP Client with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private cancelBondOnSink()V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dpSink;->getPendingDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "cancelBondOnSink : BOND_BONDING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_0
    return-void
.end method

.method private native cancelDiscoveryNative()Z
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearAdapterService()V
    .locals 2

    const-class v0, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native configScoLoopbackNative(Z)Z
.end method

.method private native connectSocketNative([BI[BIII)I
.end method

.method private native controlTxPowerNative(Z)Z
.end method

.method static convertScanModeFromHal(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/16 v0, 0x14

    return v0

    :pswitch_1
    const/16 v0, 0x15

    return v0

    :pswitch_2
    const/16 v0, 0x17

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertScanModeToHal(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native createSocketChannelNative(ILjava/lang/String;[BIII)I
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private disconnectA2dpSink()Z
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "A2DP sink disconnect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_2
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "disconnectA2dpSink() mA2dpSinkServiceListener null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpJava(Ljava/io/FileDescriptor;)V
    .locals 8

    new-instance v1, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;

    invoke-direct {v1}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;-><init>()V

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/ProfileService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/ProfileService;->dumpProto(Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v6, "Unable to write Java protobuf to file descriptor."

    invoke-direct {p0, v6}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private native dumpNative(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
.end method

.method private native dutModeConfigureNative(Z)Z
.end method

.method private energyInfoCallback(IIJJJJ[Landroid/bluetooth/UidTraffic;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-ltz p2, :cond_3

    const/16 v19, 0x3

    move/from16 v0, p2

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    const-wide/16 v22, 0x0

    cmp-long v19, p9, v22

    if-nez v19, :cond_0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getTxCurrentMa()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, p3

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v20

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getRxCurrentMa()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, p5

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getIdleCurrentMa()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, p7

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v6

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getOperatingVolt()D
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 p9, v0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/btservice/AdapterService;->mStackReportedState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, p5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, p7

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, p9

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    :goto_1
    :try_start_3
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:J

    const/16 v19, 0x0

    move-object/from16 v0, p11

    array-length v0, v0

    move/from16 v23, v0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v18, p11, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/UidTraffic;

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v19, "BluetoothAdapterService"

    const-string/jumbo v22, "overflow in bluetooth energy callback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v4

    :try_start_4
    const-string/jumbo v19, "BluetoothAdapterService"

    const-string/jumbo v23, "overflow in bluetooth energy callback"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:J

    goto :goto_1

    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/bluetooth/UidTraffic;->addRxBytes(J)V

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Landroid/bluetooth/UidTraffic;->addTxBytes(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v19

    monitor-exit v22

    throw v19

    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v22

    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "energyInfoCallback() status = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, "tx_time = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, "rx_time = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, "idle_time = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, "energy_used = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, "ctrl_state = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, "traffic = "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p11 .. p11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native gattSetConnScanParametersNative(II)V
.end method

.method public static declared-synchronized getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 4

    const/4 v3, 0x0

    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v0, :cond_3

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v2, "getAdapterService() - Service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-object v3

    :cond_2
    :try_start_1
    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdapterService() - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v2, "getAdapterService() - Service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAvPerformance()Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->mAvPerformance:Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;

    return-object v0
.end method

.method public static getIOPDeviceList()Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->mCheckAddrForIOP:Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;

    return-object v0
.end method

.method private getIdleCurrentMa()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getOperatingVolt()D
    .locals 4

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getRxCurrentMa()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getStateString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UNKNOWN STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string/jumbo v1, "STATE_OFF"

    return-object v1

    :pswitch_1
    const-string/jumbo v1, "STATE_TURNING_ON"

    return-object v1

    :pswitch_2
    const-string/jumbo v1, "STATE_ON"

    return-object v1

    :pswitch_3
    const-string/jumbo v1, "STATE_TURNING_OFF"

    return-object v1

    :pswitch_4
    const-string/jumbo v1, "SEM_STATE_BLE_TURNING_ON"

    return-object v1

    :pswitch_5
    const-string/jumbo v1, "SEM_STATE_BLE_ON"

    return-object v1

    :pswitch_6
    const-string/jumbo v1, "SEM_STATE_BLE_TURNING_OFF"

    return-object v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getTxCurrentMa()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private native getTxPowerPathNative()Z
.end method

.method private native initNative()Z
.end method

.method private native interopDatabaseAddNative(I[BI)V
.end method

.method private native interopDatabaseClearNative()V
.end method

.method private isActivityAndEnergyReportingSupported()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isActivityAndEnergyReportingSupported()Z

    move-result v0

    return v0
.end method

.method private isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isConnectAllowed(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;

    invoke-direct {v2, v1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->isMetrico(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-boolean v3, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Do not try to connect A2DP!!!"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    return v3

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private native leTestModeNative(IIII)Z
.end method

.method private native monitorRawRssiNative([BIII)Z
.end method

.method private native pinReplyNative([BZI[B)Z
.end method

.method private native populateRssiValuesNative()V
.end method

.method private processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 10

    const/16 v9, 0x64

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;

    invoke-direct {v5, v3}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    invoke-virtual {v5, p1}, Lcom/samsung/bt/hfp/ConnectionPolicyHelper;->isNewConnectionAcceptable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-eq v6, v8, :cond_3

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    :cond_3
    const/4 v4, 0x0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    if-ne v8, p2, :cond_5

    return-void

    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-lt v6, v9, :cond_7

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_6
    :goto_0
    return-void

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sget v7, Lcom/android/bluetooth/btservice/AdapterService;->a2dpMaxConnectDevice:I

    if-ge v6, v7, :cond_6

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-lt v6, v9, :cond_6

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0
.end method

.method private processInitProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, -0x1

    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->getHidService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v2

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    invoke-static {}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPbapClientService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v3

    if-eqz v2, :cond_1

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, p1, v6}, Lcom/android/bluetooth/hid/HidService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_1
    if-eqz v1, :cond_3

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {v1, p1, v6}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_3
    if-eqz v0, :cond_5

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_5

    invoke-virtual {v0, p1, v6}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_5
    if-eqz v3, :cond_6

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-static {p2, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_6

    invoke-virtual {v3, p1, v6}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_6
    return-void
.end method

.method private processProfileServiceStateChanged(Ljava/lang/String;I)V
    .locals 11

    const/4 v0, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processProfileServiceStateChanged() serviceName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Before synchronized"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, p2, :cond_0

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processProfileServiceStateChanged() serviceName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", doUpdate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_1
    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    monitor-enter v9

    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOff()Z

    move-result v5

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterState;->isTurningOn()Z

    move-result v6

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterState;->isBleTurningOn()Z

    move-result v4

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterState;->isBleTurningOff()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    monitor-exit v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processProfileServiceStateChanged() - serviceName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isTurningOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isTurningOff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isBleTurningOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isBleTurningOff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    const-string/jumbo v8, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "GattService is started"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    return-void

    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v8, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "GattService stopped"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v10, 0x19

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_3
    if-eqz v5, :cond_8

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_2
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Service: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v10, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "Skip GATT service - already started before"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_5
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0xa

    if-eq v10, v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onProfileServiceStateChange() - Profile still running: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v9

    return-void

    :cond_6
    monitor-exit v9

    const-string/jumbo v8, "onProfileServiceStateChange() - All profile services stopped..."

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v10, 0x1a

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->updateInteropDatabase()V

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_4
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Service: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v10, "com.android.bluetooth.gatt.GattService"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "Skip GATT service - already started before"

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_a
    :try_start_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0xc

    if-eq v10, v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onProfileServiceStateChange() - Profile still not running:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v9

    return-void

    :cond_b
    monitor-exit v9

    const-string/jumbo v8, "onProfileServiceStateChange() - All profile services started."

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1
.end method

.method private processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 10

    const/16 v9, 0x1f

    const/16 v8, 0x1e

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothAdapterService -- profileId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processProfileStateChanged - profileId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", prevState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", newState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mOutgoing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/bluetooth/btservice/AdapterService;->mOutgoing:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p3, v6, :cond_b

    sget v2, Lcom/android/bluetooth/btservice/AdapterService;->mOutgoing:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/bluetooth/btservice/AdapterService;->mOutgoing:I

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "after - mOutgoing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/bluetooth/btservice/AdapterService;->mOutgoing:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eq p2, v7, :cond_3

    if-ne p2, v6, :cond_4

    :cond_3
    if-ne p3, v7, :cond_4

    const-string/jumbo v2, "Profile connected. Schedule missing profile connection if any"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileAutoConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_4
    if-eq p2, v7, :cond_5

    if-ne p2, v6, :cond_9

    :cond_5
    if-eqz p3, :cond_6

    const/4 v2, 0x3

    if-ne p3, v2, :cond_9

    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iput-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    if-eqz v0, :cond_a

    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_2
    return-void

    :cond_b
    if-ne p4, v6, :cond_1

    sget v2, Lcom/android/bluetooth/btservice/AdapterService;->mOutgoing:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/bluetooth/btservice/AdapterService;->mOutgoing:I

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherDevice2:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherDevice2:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    iput-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherDevice2:Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private native readEnergyInfo()I
.end method

.method private native readRawRssiNative([B)Z
.end method

.method private releaseWakeLock(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Repeated wake lock release; aborting release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 22

    const-string/jumbo v3, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v4, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->isActivityAndEnergyReportingSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->readEnergyInfo()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1e

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    new-instance v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/btservice/AdapterService;->mStackReportedState:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:J

    invoke-direct/range {v2 .. v13}, Landroid/bluetooth/BluetoothActivityEnergyInfo;-><init>(JIJJJJ)V

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/bluetooth/UidTraffic;

    invoke-virtual/range {v20 .. v20}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    return-object v3

    :cond_3
    if-lez v14, :cond_5

    new-array v0, v14, [Landroid/bluetooth/UidTraffic;

    move-object/from16 v19, v0

    :goto_2
    const/16 v17, 0x0

    const/16 v16, 0x0

    move/from16 v18, v17

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/bluetooth/UidTraffic;

    invoke-virtual/range {v20 .. v20}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    invoke-virtual/range {v20 .. v20}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    :cond_4
    add-int/lit8 v17, v18, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/bluetooth/UidTraffic;->clone()Landroid/bluetooth/UidTraffic;

    move-result-object v3

    aput-object v3, v19, v18

    const-wide/16 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/bluetooth/UidTraffic;->setRxBytes(J)V

    const-wide/16 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/bluetooth/UidTraffic;->setTxBytes(J)V

    :goto_4
    add-int/lit8 v16, v16, 0x1

    move/from16 v18, v17

    goto :goto_3

    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    :cond_6
    move/from16 v17, v18

    goto :goto_4

    :cond_7
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->setUidTraffic([Landroid/bluetooth/UidTraffic;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/bluetooth/btservice/AdapterService;->mStackReportedState:I

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:J

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:J

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:J

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v21

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v21

    throw v3

    :catch_0
    move-exception v15

    goto/16 :goto_0
.end method

.method private sendIntentA2dpSinkNotify(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.bluetooth.btservice.action.ACTION_NOTIFY_A2DP_SINK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "EXTRA.ENABLE.SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private native sendRawHciNative(I[BI)I
.end method

.method private static declared-synchronized setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 4

    const-class v1, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v0, :cond_4

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v2, "setAdapterService() - Service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAdapterService() - set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sput-object p0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v2, "setAdapterService() - Service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private native setEdrRxFrequencyNative(I)Z
.end method

.method private native setEdrTestEndNative()Z
.end method

.method private native setEdrTxFrequencyNative(II)Z
.end method

.method private setGattProfileServiceState([Ljava/lang/Class;I)V
    .locals 10

    const/16 v9, 0xa

    const/16 v7, 0xc

    if-eq p2, v7, :cond_0

    if-eq p2, v9, :cond_0

    const-string/jumbo v7, "BluetoothAdapterService"

    const-string/jumbo v8, "setGattProfileServiceState(): invalid state...Leaving..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xa

    const/16 v3, 0xb

    if-ne p2, v9, :cond_1

    const/16 v0, 0xc

    const/16 v3, 0xd

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_6

    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "GattService"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v0, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setProfileServiceState() - Unable to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne p2, v9, :cond_3

    const-string/jumbo v7, "start"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Invalid state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "stop"

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setProfileServiceState() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne p2, v9, :cond_5

    const-string/jumbo v7, "Stopping"

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/Intent;

    aget-object v7, p1, v1

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "action"

    const-string/jumbo v8, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_5
    const-string/jumbo v7, "Starting"

    goto :goto_2

    :cond_6
    return-void
.end method

.method private setProfileServiceState([Ljava/lang/Class;I)V
    .locals 12

    const/16 v11, 0xc

    const/16 v10, 0xa

    if-eq p2, v11, :cond_0

    if-eq p2, v10, :cond_0

    const-string/jumbo v7, "setProfileServiceState() - Invalid state, leaving..."

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xa

    const/16 v3, 0xb

    if-ne p2, v10, :cond_1

    const/16 v0, 0xc

    const/16 v3, 0xd

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_9

    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "GattService"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v0, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setProfileServiceState() - Unable to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne p2, v10, :cond_3

    const-string/jumbo v7, "stop"

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Invalid state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "start"

    goto :goto_2

    :cond_4
    invoke-static {v4}, Lcom/broadcom/bt/service/ProfileConfig;->isProfileConfiguredEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    if-ne p2, v11, :cond_6

    :cond_5
    const-string/jumbo v7, "BluetoothAdapterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setProfileServiceState() Profile supported, But not enabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-ne p2, v10, :cond_7

    if-eqz v5, :cond_5

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setProfileServiceState() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne p2, v10, :cond_8

    const-string/jumbo v7, "Stopping"

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/Intent;

    aget-object v7, p1, v1

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v7, "action"

    const-string/jumbo v8, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v7, "Starting"

    goto :goto_3

    :cond_9
    return-void
.end method

.method private native setRPAGenerationNative(Z)V
.end method

.method private native setTxPowerPathNative(I)Z
.end method

.method private setUsingSinkProxy(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsingSinkProxy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-boolean p1, Lcom/android/bluetooth/btservice/AdapterService;->mUsingSinkProxy:Z

    return-void
.end method

.method private setWakeAlarm(JZ)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, p1

    if-eqz p3, :cond_1

    const/4 v1, 0x2

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.bluetooth.btservice.action.ALARM_WAKEUP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    monitor-exit p0

    return v4

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private native sspDebugConfigureNative(Z)Z
.end method

.method private native sspReplyNative([BIZI)Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private updateInteropDatabase()V
    .locals 17

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->interopDatabaseClearNative()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "bluetooth_interoperability_list"

    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    const-string/jumbo v12, "BluetoothAdapterService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateInteropDatabase: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, ";"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    array-length v13, v3

    :goto_0
    if-ge v12, v13, :cond_7

    aget-object v4, v3, v12

    const-string/jumbo v14, ","

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v14, v11

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const/4 v14, 0x1

    :try_start_0
    aget-object v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    div-int/lit8 v8, v14, 0x3

    const/4 v14, 0x1

    if-lt v8, v14, :cond_3

    const/4 v14, 0x6

    if-le v8, v14, :cond_4

    :cond_3
    const-string/jumbo v14, "BluetoothAdapterService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateInteropDatabase: Malformed address string \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v14, "BluetoothAdapterService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateInteropDatabase: Invalid feature \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v14, 0x6

    new-array v1, v14, [B

    const/4 v9, 0x0

    const/4 v6, 0x0

    :goto_2
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v6, v14, :cond_6

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3a

    if-ne v14, v15, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v9, 0x1

    const/4 v14, 0x0

    :try_start_1
    aget-object v14, v11, v14

    add-int/lit8 v15, v6, 0x2

    invoke-virtual {v14, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v1, v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v6, 0x2

    move v9, v10

    goto :goto_2

    :catch_1
    move-exception v2

    const/4 v9, 0x0

    :cond_6
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1, v8}, Lcom/android/bluetooth/btservice/AdapterService;->interopDatabaseAddNative(I[BI)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private native vscGetVendorCapabilitiesNative()I
.end method


# virtual methods
.method BleOnProcessStart()V
    .locals 7

    const-string/jumbo v4, "BleOnProcessStart()"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/broadcom/bt/service/ProfileConfig;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/broadcom/bt/service/ProfileConfig;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isSecureModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/SecureModeConfig;->readConfiguration()Z

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/SecureModeConfig;->applyConfiguration()V

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/SecureModeConfig;->getAllowedProfiles()[Ljava/lang/Class;

    move-result-object v3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/broadcom/bt/service/ProfileConfig;->isProfileConfiguredEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->isProfileStarted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/broadcom/bt/service/ProfileConfig;->isDefaultStartedProfile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Lcom/broadcom/bt/service/ProfileConfig;->isConfigurableProfile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "BluetoothAdapterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processStart(): removed Client profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "BluetoothAdapterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processStart(): profile not enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->cleanup()V

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/btservice/AdapterProperties;->init(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    const-string/jumbo v4, "BleOnProcessStart() - Make Bond State Machine"

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {p0, v4, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)Lcom/android/bluetooth/btservice/BondStateMachine;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/btservice/JniCallbacks;->init(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/RemoteDevices;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteResetBleScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V

    const/16 v4, 0xc

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->setGattProfileServiceState([Ljava/lang/Class;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public addProfile(Lcom/android/bluetooth/btservice/ProfileService;)V
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public autoConnect()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "autoConnect() - BT is not ON. Exiting autoConnect"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "autoConnect() - Initiate auto connection on BT on..."

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectHeadset()V

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectA2dp()V

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnectPbapClient()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "autoConnect() - BT is in quiet mode. Not initiating auto connections"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method native cancelBondNative([B)Z
.end method

.method cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondNative([B)Z

    move-result v1

    return v1
.end method

.method cancelDiscovery()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    move-result v0

    return v0
.end method

.method cleanup()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "cleanup()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cleanup() - Service already starting to cleanup, ignoring request..."

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->doQuit()V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->cleanup()V

    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->doQuit()V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->cleanup()V

    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->cleanup()V

    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager;->cleanup()V

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    :cond_8
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "cleanup() - Cleaning up adapter native"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanupNative()V

    iput-boolean v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->cleanup()V

    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/JniCallbacks;->cleanup()V

    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_c
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->clearAdapterService()V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->cleanup()Z

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/SecureModeConfig;->cleanup()V

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    :cond_f
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->cleanup()V

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    :cond_10
    const-string/jumbo v0, "cleanup() - Bluetooth process exited normally."

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method configHciSnoopLog(Z)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configHciSnoopLogNative(Z)Z

    move-result v0

    return v0
.end method

.method configHciSnoopLogForExternal(Z)Z
    .locals 2

    const-string/jumbo v0, "com.sec.permission.BLUETOOTH_DEBUG"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configHciSnoopLogForExternalNative(Z)Z

    move-result v0

    return v0
.end method

.method public native configHciSnoopLogForExternalNative(Z)Z
.end method

.method native configHciSnoopLogNative(Z)Z
.end method

.method configScoLoopback(Z)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configScoLoopbackNative(Z)Z

    move-result v0

    return v0
.end method

.method public connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 8

    const-wide/16 v6, 0x1b58

    const-wide/16 v4, 0x1770

    const/16 v3, 0x1f

    const/16 v2, 0x1e

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isConnectAllowed(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "00:1E:B2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "00:0B:24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "00:24:0B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_7
    const-string/jumbo v1, "connectOtherProfile for 2nd Device"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherDevice2:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "00:1E:B2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "00:0B:24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "00:24:0B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 18

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    const-string/jumbo v4, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    if-eqz v10, :cond_0

    const/16 v3, 0x2e

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/16 v3, 0x2e

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :cond_0
    const/16 v3, 0x3ea

    if-eq v3, v11, :cond_1

    const-string/jumbo v3, "Socket Connected"

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p2

    invoke-static {v3, v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    const-string/jumbo v3, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->SerialPort:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v15, v4

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "severity"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "group"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "outcome"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "component"

    move-object/from16 v0, v16

    invoke-virtual {v12, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " initiated a BT SPP connection with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "userid"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocketNative([BI[BIII)I

    move-result v14

    if-gez v14, :cond_2

    const-string/jumbo v3, "Failed to connect socket"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3

    :catch_0
    move-exception v13

    const-string/jumbo v3, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkIfCallerIsSelfOrForegroundUser: Exception ex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v14}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3
.end method

.method controlTxPower(Z)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->controlTxPowerNative(Z)Z

    move-result v0

    return v0
.end method

.method createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z
    .locals 15

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v3, "mRemoteDevices is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v3, "deviceProp state is not BOND_NONE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    const-string/jumbo v1, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v8, 0x0

    new-instance v1, Landroid/bluetooth/BluetoothClass;

    invoke-virtual/range {p0 .. p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    const/16 v1, 0x100

    if-ne v7, v1, :cond_4

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "isDesktopConnectivityEnabled"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const-string/jumbo v3, "true"

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "isDesktopConnectivityEnabled"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    const/4 v11, 0x1

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    if-nez v11, :cond_4

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v3, "MDM: pairing is blocked"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    const-string/jumbo v1, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CursorWindowAllocationException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    const-string/jumbo v1, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v12, 0x1

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v5, v3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "isPairingAllowedbySecurityPolicy"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "isPairingAllowedbySecurityPolicy"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_6

    const/4 v12, 0x1

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    if-nez v12, :cond_7

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v3, "MDM: pairing is blocked"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :catch_1
    move-exception v10

    :try_start_3
    const-string/jumbo v1, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CursorWindowAllocationException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_7
    sget-object v1, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/Utils;->isKnoxBluetoothEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createBond(): Bluetooth for KNOX blocked by MDM policy: userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    move/from16 v0, p2

    iput v0, v13, Landroid/os/Message;->arg1:I

    if-eqz p3, :cond_9

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "oobdata"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v13, v14}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v1, v13}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 v1, 0x1

    return v1
.end method

.method native createBondNative([BI)Z
.end method

.method native createBondOutOfBandNative([BILandroid/bluetooth/OobData;)Z
.end method

.method createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 8

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannelNative(ILjava/lang/String;[BIII)I

    move-result v7

    if-gez v7, :cond_0

    const-string/jumbo v0, "Failed to create socket channel"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v7}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method disable()Z
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const-string/jumbo v4, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v5, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "disable() called..."

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    const-string/jumbo v4, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "severity"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "group"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "outcome"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "component"

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "message"

    const-string/jumbo v5, "Disabling Bluetooth succeeded"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "userid"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string/jumbo v4, "bluetooth_a2dp_sink_mode"

    invoke-virtual {p0, v4, v6}, Lcom/android/bluetooth/btservice/AdapterService;->getA2dpPreference(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    invoke-direct {p0, v6}, Lcom/android/bluetooth/btservice/AdapterService;->setUsingSinkProxy(Z)V

    invoke-direct {p0, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendIntentA2dpSinkNotify(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v4, v2}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    const/4 v4, 0x1

    return v4
.end method

.method native disableBrEdrNative()Z
.end method

.method native disableNative()Z
.end method

.method disconnectIncomingConnClients()V
    .locals 2

    sget-boolean v1, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "disconnectIncomingConnClients"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->getGattService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->serverDisconnectIncomingConnClients()V

    :cond_1
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    const-string/jumbo v11, "android.permission.DUMP"

    const-string/jumbo v12, "BluetoothAdapterService"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v11, v0

    if-lez v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dumpsys arguments, check for protobuf output: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    move-object/from16 v0, p3

    invoke-static {v12, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, p3, v11

    const-string/jumbo v12, "--proto"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    aget-object v11, p3, v11

    const-string/jumbo v12, "--proto-java-bin"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/btservice/AdapterService;->dumpJava(Ljava/io/FileDescriptor;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->dumpNative(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothStartTime:J

    sub-long v6, v12, v14

    const-string/jumbo v11, "%02d:%02d:%02d.%03d"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const-wide/32 v14, 0x36ee80

    div-long v14, v6, v14

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-wide/32 v14, 0xea60

    div-long v14, v6, v14

    const-wide/16 v16, 0x3c

    rem-long v14, v14, v16

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const-wide/16 v14, 0x3e8

    div-long v14, v6, v14

    const-wide/16 v16, 0x3c

    rem-long v14, v14, v16

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const-wide/16 v14, 0x3e8

    rem-long v14, v6, v14

    long-to-int v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "Bluetooth Status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  enabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->isEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getStateString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  address: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  time since enabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v11, "Bonded devices:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    const/4 v11, 0x0

    array-length v13, v12

    :goto_1
    if-ge v11, v13, :cond_2

    aget-object v4, v12, v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/bluetooth/btservice/AdapterService;->DEVICE_TYPE_NAMES:[Ljava/lang/String;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v16

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/btservice/ProfileService;

    invoke-virtual {v8, v10}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_3
    monitor-exit v12

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->dumpNative(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method dutModeConfigure(Z)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->dutModeConfigureNative(Z)Z

    move-result v0

    return v0
.end method

.method enable()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized enable(Z)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable() - Enable called with quiet mode status =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method native enableBrEdrNative()Z
.end method

.method native enableNative(Z)Z
.end method

.method public enableNoAutoConnect()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    move-result v0

    return v0
.end method

.method factoryReset()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semShutdown()Z

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->factoryResetNative()Z

    move-result v0

    return v0
.end method

.method native factoryResetNative()Z
.end method

.method fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->fetchUuids(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanup()V

    return-void
.end method

.method public getA2dpPreference(Ljava/lang/String;I)I
    .locals 3

    const-string/jumbo v1, "bluetooth_a2dp_preference"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method getAdapterConnectionState()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getConnectionState()I

    move-result v0

    return v0
.end method

.method native getAdapterPropertiesNative()Z
.end method

.method native getAdapterPropertyNative(I)Z
.end method

.method getAddress()Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/16 v3, 0xa

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v1

    return v1
.end method

.method getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method getBondedTimeStamp(Landroid/bluetooth/BluetoothDevice;)J
    .locals 6

    const-wide/16 v4, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "bonded_time_stamp"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-wide v4

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getConnectedDeviceList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getConnectedDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getConnectionStateNative([B)I

    move-result v1

    return v1
.end method

.method native getConnectionStateNative([B)I
.end method

.method public native getDevicePropertiesNative([B)Z
.end method

.method native getDevicePropertyNative([BI)Z
.end method

.method getDiscoverableTimeout()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getDiscoverableTimeout()I

    move-result v0

    return v0
.end method

.method public getDownloadableDbObject()Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDownloadableDbObject(): returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    return-object v0

    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    if-nez v0, :cond_2

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v1, "getDownloadableDbObject(): ddb is  NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method getGearIsConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getGearIsConnected()Z

    move-result v1

    return v1
.end method

.method public getHighRssi()I
    .locals 1

    sget v0, Lcom/android/bluetooth/btservice/AdapterService;->mdlHighRssi:I

    return v0
.end method

.method getLeDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, -0x1

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    return v3
.end method

.method public getLowRssi()I
    .locals 1

    sget v0, Lcom/android/bluetooth/btservice/AdapterService;->mdlLowRssi:I

    return v0
.end method

.method getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "message_access_permission"

    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getMidRssi()I
    .locals 1

    sget v0, Lcom/android/bluetooth/btservice/AdapterService;->mdlMidRssi:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getName() - Unexpected exception ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getNumOfAdvertisementInstancesSupported()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getNumOfAdvertisementInstancesSupported()I

    move-result v0

    return v0
.end method

.method public getNumOfOffloadedIrkSupported()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getNumOfOffloadedIrkSupported()I

    move-result v0

    return v0
.end method

.method public getNumOfOffloadedScanFilterSupported()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getNumOfOffloadedScanFilterSupported()I

    move-result v0

    return v0
.end method

.method public getOffloadedScanResultStorage()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getOffloadedScanResultStorage()I

    move-result v0

    return v0
.end method

.method getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "phonebook_access_permission"

    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method getProfileConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getProfileConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method getProfileConnectionState(I)I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getProfileConnectionState(I)I

    move-result v0

    return v0
.end method

.method getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAlias()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getRemoteAppearance(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAppearance()S

    move-result v1

    return v1
.end method

.method getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBluetoothClass()I

    move-result v1

    return v1
.end method

.method getRemoteManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getManufacturerData()[B

    move-result-object v1

    return-object v1
.end method

.method native getRemoteMasInstancesNative([B)Z
.end method

.method getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method native getRemoteServicesNative([B)Z
.end method

.method getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getDeviceType()I

    move-result v1

    return v1
.end method

.method getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    return-object v1
.end method

.method getScanMode()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getScanMode()I

    move-result v0

    return v0
.end method

.method getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sim_access_permission"

    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method getState()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public getTotalNumOfTrackableAdvertisements()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    return v0
.end method

.method getTxPowerPath()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getTxPowerPathNative()Z

    move-result v0

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public initProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    array-length v3, p2

    iput v3, v2, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uuids"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isBLEAutoconnectSupport()I
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v8, "android.permission.BLUETOOTH"

    const-string/jumbo v9, "Need BLUETOOTH permission"

    invoke-virtual {p0, v8, v9}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/vendor/firmware/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v8, "/etc/firmware/mrvl/"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "/etc/firmware/"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "persist.bluetooth_fw_ver"

    const-string/jumbo v9, "Error"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "bcm"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "BluetoothAdapterService"

    const-string/jumbo v9, "isBLEAutoconnectSupport - BRCM"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    const-string/jumbo v8, "running"

    const-string/jumbo v9, "init.svc.wcnss-service"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "BluetoothAdapterService"

    const-string/jumbo v9, "isBLEAutoconnectSupport - QCOM"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "bluetooth.fw.ver"

    const-string/jumbo v9, "Error"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "Error"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "BluetoothAdapterService"

    const-string/jumbo v9, "isBLEAutoconnectSupport - SPRD"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "persist.sys.bt.driver.version"

    const-string/jumbo v9, "Error"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "Error"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "BluetoothAdapterService"

    const-string/jumbo v9, "isBLEAutoconnectSupport - MRVL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_3
    return v10
.end method

.method public isDeviceWhitelisted(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/SecureModeConfig;->isSecureModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBluetoothClass()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/broadcom/bt/service/SecureModeConfig;->isDeviceWhitelisted(Ljava/lang/String;I[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :cond_2
    return v1
.end method

.method isDiscovering()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method isEnabled()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->isInCall()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isMultiAdvertisementSupported()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfAdvertisementInstancesSupported()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPeripheralModeSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isProfileAllowed(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/SecureModeConfig;->isSecureModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/SecureModeConfig;->isProfileAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProfileStarted(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string/jumbo v3, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isProfileEnabled(): profile not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    const-string/jumbo v3, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isProfileEnabled(): profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isQuietModeEnabled()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isQuetModeEnabled() - Enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    return v0
.end method

.method public isRpaOffloadSupported()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isRpaOffloadSupported()Z

    move-result v0

    return v0
.end method

.method public isSecureModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/SecureModeConfig;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/SecureModeConfig;->isSecureModeOn()Z

    move-result v0

    return v0
.end method

.method public isUsingSinkProxy()Z
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUsingSinkProxy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/bluetooth/btservice/AdapterService;->mUsingSinkProxy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->mUsingSinkProxy:Z

    return v0
.end method

.method leTestMode(IIII)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->leTestModeNative(IIII)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string/jumbo v0, "onBind()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    return-object v0
.end method

.method public onBrEdrDown()V
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterProperties;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-static {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)Lcom/android/bluetooth/btservice/AdapterState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    new-instance v0, Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/btservice/JniCallbacks;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterProperties;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    new-instance v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->initNative()Z

    iput-boolean v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "BluetoothProfileConnection"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mConnectionWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/AdapterService;->mCheckAddrForIOP:Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;

    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/AdapterService;->mAvPerformance:Lcom/android/bluetooth/btservice/AdapterService$AvPerformance;

    invoke-static {p0}, Lcom/android/bluetooth/sdp/SdpManager;->init(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.bluetooth.btservice.action.ALARM_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIntentSdpRegister:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.bluetooth.btservice.action.ACTION_REGISTER_HFP_CLIENT_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIntentSdpRegister:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.bluetooth.btservice.action.ACTION_REGISTER_A2DP_SINK_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIntentSdpRegister:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.bluetooth.btservice.action.ACTION_ENABLE_A2DP_SINK_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/android/bluetooth/btservice/ProfileObserver;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/android/bluetooth/btservice/ProfileObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ProfileObserver;->start()V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->supported_pbap:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string/jumbo v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileObserver:Lcom/android/bluetooth/btservice/ProfileObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ProfileObserver;->stop()V

    return-void
.end method

.method public onLeServiceUp()V
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->initStateMachine()V

    :cond_0
    return-void
.end method

.method public onLeServiceUpQuietMode()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->initStateMachine()V

    :cond_0
    return-void
.end method

.method public onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v1, Landroid/os/Message;->arg1:I

    iput p3, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v2, "prevState"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProfileServiceStateChanged(Ljava/lang/String;I)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileServiceStateChanged() serviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Message sending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string/jumbo v0, "onUnbind() - calling cleanup"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanup()V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public populateRssi()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "populateRssi"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->populateRssiValuesNative()V

    return-void
.end method

.method public printEnabledService()V
    .locals 7

    const-string/jumbo v4, "BluetoothAdapterService"

    const-string/jumbo v5, "printEnabledService()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/broadcom/bt/service/ProfileConfig;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const-string/jumbo v4, "BluetoothAdapterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BluetoothAdapterService -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public native refreshDownloadableDbFileNative()V
.end method

.method registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v2, :cond_0

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "mRemoteDevices is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    :cond_1
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "deviceProp state is not BOND_BONDED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 v2, 0x1

    return v2
.end method

.method native removeBondNative([B)Z
.end method

.method public removeProfile(Lcom/android/bluetooth/btservice/ProfileService;)V
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method native sdpSearchNative([B[B)Z
.end method

.method public native secureModeConfigureNative(ZZZ)Z
.end method

.method public selectstream(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "a2dpService is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method semClearBleAutoConnection()V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "semClearBleAutoConnection"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "samsung_last_connected_device"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/samsung/ble/BleAutoConnectService;->ClearAutoConnection()V

    return-void
.end method

.method public semIsScmstSupported()Z
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    sget-boolean v1, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "semIsScmstSupported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->semIsScmstSupported()Z

    move-result v1

    return v1
.end method

.method public semIsSinkServiceSupported()Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v1, "semIsSinkServiceSupported : SecProductFeature_BLUETOOTH MULTI : true A2DPSINK : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method semMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z
    .locals 3

    iput p2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRssiThreshold:I

    iput p3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRssiNearThreshold:I

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->monitorRawRssiNative([BIII)Z

    move-result v1

    return v1
.end method

.method semReadRssi(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->readRawRssiNative([B)Z

    move-result v1

    return v1
.end method

.method semSetBleConnectionScanParameter(II)V
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->gattSetConnScanParametersNative(II)V

    return-void
.end method

.method public sendCallerInfo(Ljava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "app_id"

    const-string/jumbo v5, "com.android.bluetooth"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "feature"

    const-string/jumbo v5, "BOCI"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "extra"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v4, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothAdapterService"

    const-string/jumbo v5, "Sent BOCI value!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->updateEvent(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method sendRawHci(I[BI)I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->sendRawHciNative(I[BI)I

    move-result v0

    return v0
.end method

.method setA2dpPreference(Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v2, "bluetooth_a2dp_preference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method native setAdapterPropertyNative(I)Z
.end method

.method native setAdapterPropertyNative(I[B)Z
.end method

.method setBondedTimeStamp(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 6

    const-string/jumbo v2, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v3, "Need BLUETOOTH PRIVILEGED permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "bonded_time_stamp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method native setDevicePropertyNative([BI[B)Z
.end method

.method setDiscoverableTimeout(I)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    move-result v0

    return v0
.end method

.method setEdrRxFrequency(I)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setEdrRxFrequencyNative(I)Z

    move-result v0

    return v0
.end method

.method setEdrTestEnd()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->setEdrTestEndNative()Z

    move-result v0

    return v0
.end method

.method setEdrTxFrequency(II)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setEdrTxFrequencyNative(II)Z

    move-result v0

    return v0
.end method

.method public setManufacturerData()V
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setManufacturerData()V

    return-void
.end method

.method setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v5, "Need BLUETOOTH PRIVILEGED permission"

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "message_access_permission"

    invoke-virtual {p0, v4, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-ne p2, v2, :cond_1

    :goto_1
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method setName(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNameForBle(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 13

    const-string/jumbo v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v2, "Need BLUETOOTH PRIVILEGED permission"

    invoke-virtual {p0, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    new-instance v0, Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    const/16 v0, 0x100

    if-ne v7, v0, :cond_2

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isDesktopConnectivityEnabled"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "true"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isDesktopConnectivityEnabled"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v11, 0x1

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    if-nez v11, :cond_2

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v2, "MDM: pairing is blocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v12, 0x1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v4, v2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isPairingAllowedbySecurityPolicy"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isPairingAllowedbySecurityPolicy"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    const/4 v12, 0x1

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    if-nez v12, :cond_5

    const-string/jumbo v0, "BluetoothAdapterService"

    const-string/jumbo v2, "MDM: pairing is blocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :catch_1
    move-exception v10

    :try_start_3
    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/Utils;->isKnoxBluetoothEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPairingConfirmation(): Bluetooth for KNOX blocked by MDM policy: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_8

    :cond_7
    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v6, v0, p2, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sspReplyNative([BIZI)Z

    move-result v0

    return v0
.end method

.method setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    :cond_1
    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, p2, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sspReplyNative([BIZI)Z

    move-result v2

    return v2
.end method

.method setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v5, "Need BLUETOOTH PRIVILEGED permission"

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "phonebook_access_permission"

    invoke-virtual {p0, v4, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-ne p2, v2, :cond_1

    :goto_1
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    :cond_1
    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->pinReplyNative([BZI[B)Z

    move-result v2

    return v2
.end method

.method setProfileAutoConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6

    const/16 v5, 0x3e8

    sparse-switch p2, :sswitch_data_0

    const-string/jumbo v4, "BluetoothAdapterService"

    const-string/jumbo v5, "Attempting to set Auto Connect priority on invalid profile"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-eq v5, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherHeadsetPriorities(Lcom/android/bluetooth/hfp/HeadsetService;Ljava/util/List;)V

    invoke-virtual {v2, p1, v5}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-eq v5, v4, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherSinkPriorities(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, p1, v5}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPbapClientService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-eq v5, v4, :cond_0

    invoke-direct {p0, v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->adjustOtherPbapClientPriorities(Lcom/android/bluetooth/pbapclient/PbapClientService;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v3, p1, v5}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public setProfileState(Ljava/lang/String;Z)Z
    .locals 9

    const/16 v2, 0xc

    const/4 v8, 0x0

    const/16 v3, 0xa

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isSecureModeEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v5

    return v8

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string/jumbo v4, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProfileState(): profile not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_3

    :cond_2
    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setProfileState(): error setting profile state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Current state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v8

    :cond_3
    if-nez p2, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_2

    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    if-eqz p2, :cond_5

    const/16 v4, 0xb

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "action"

    const-string/jumbo v6, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.adapter.extra.STATE"

    if-eqz p2, :cond_6

    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setProfileState(): setting profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothAdapterService -- setProfileState(): setting profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    monitor-exit v5

    return v2

    :cond_5
    const/16 v4, 0xd

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2
.end method

.method setRPAGeneration(Z)V
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setRPAGenerationNative(Z)V

    return-void
.end method

.method setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method setRemoteClass(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBluetoothClass(Landroid/bluetooth/BluetoothDevice;I)V

    const/4 v1, 0x1

    return v1
.end method

.method setRemoteManufacturerData(Landroid/bluetooth/BluetoothDevice;[B)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setManufacturerData(Landroid/bluetooth/BluetoothDevice;[B)V

    const/4 v1, 0x1

    return v1
.end method

.method setRfcommConnected(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setRfcommConnected(Z)V

    return-void
.end method

.method setScanMode(II)Z
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->setManufacturerData()V

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setDiscoverableTimeout(I)Z

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeToHal(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    move-result v1

    return v1
.end method

.method setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v5, "Need BLUETOOTH PRIVILEGED permission"

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "sim_access_permission"

    invoke-virtual {p0, v4, v3}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-ne p2, v2, :cond_1

    :goto_1
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method setTxPowerPath(I)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setTxPowerPathNative(I)Z

    move-result v0

    return v0
.end method

.method sspDebugConfigure(Z)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->sspDebugConfigureNative(Z)Z

    move-result v0

    return v0
.end method

.method startBluetoothDisable()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method startCoreServices()V
    .locals 7

    const-string/jumbo v3, "startCoreServices()"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/broadcom/bt/service/ProfileConfig;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v2

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/broadcom/bt/service/ProfileConfig;->isDefaultStartedProfile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/broadcom/bt/service/ProfileConfig;->isConfigurableProfile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "BluetoothAdapterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processStart(): removed Client profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    iget-boolean v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    if-nez v3, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    const/16 v3, 0xc

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    :goto_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    const-string/jumbo v3, "startCoreProfiles(): Profile Services alreay started"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method startDiscovery()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscoveryNative()Z

    move-result v0

    return v0
.end method

.method stopGattProfileService()Z
    .locals 2

    const-string/jumbo v1, "stopGattProfileService()"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/broadcom/bt/service/ProfileConfig;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setGattProfileServiceState([Ljava/lang/Class;I)V

    const/4 v1, 0x1

    return v1
.end method

.method stopProfileServices()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/broadcom/bt/service/ProfileConfig;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isSecureModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSecConfig:Lcom/broadcom/bt/service/SecureModeConfig;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/SecureModeConfig;->getAllowedProfiles()[Ljava/lang/Class;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfilesStarted:Z

    if-eqz v1, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState([Ljava/lang/Class;I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const-string/jumbo v1, "stopProfileServices() - No profiles services to stop or already stopped."

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    return v2
.end method

.method unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method updateAdapterState(II)V
    .locals 22

    const/16 v18, 0xc

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    const-string/jumbo v18, "bonded_time_stamp"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    array-length v0, v5

    move/from16 v18, v0

    if-nez v18, :cond_9

    const-string/jumbo v18, "BluetoothAdapterService"

    const-string/jumbo v19, "updateAdapterState :: bonded list size = 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/16 v18, 0xb

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0xc

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    :cond_1
    const-string/jumbo v18, "BluetoothAdapterService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[VendorCapa] prevState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", newState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->vscGetVendorCapabilities()I

    :cond_2
    sget-boolean v18, Lcom/android/bluetooth/btservice/AdapterService;->supported_pbap:Z

    if-nez v18, :cond_4

    const-string/jumbo v18, "Softphone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v18, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    new-instance v18, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v18, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v18, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-class v20, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_3
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/bluetooth/btservice/AdapterService;->supported_pbap:Z

    :cond_4
    const-string/jumbo v18, "BluetoothAdapterService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Bluetooth PBAP supported is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/bluetooth/btservice/AdapterService;->supported_pbap:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v18, Lcom/android/bluetooth/btservice/AdapterService;->supported_pbap:Z

    if-eqz v18, :cond_6

    const/16 v18, 0xc

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0xd

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    :cond_5
    new-instance v9, Landroid/content/Intent;

    const-class v18, Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v18, "action"

    const-string/jumbo v19, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v18, "android.bluetooth.adapter.extra.STATE"

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6
    const/16 v18, 0xf

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "device_name"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "device_name"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    :cond_8
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateAdapterState() - Broadcasting state to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " receivers."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v13, :cond_f

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v18

    check-cast v18, Landroid/bluetooth/IBluetoothCallback;

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothCallback;->onBluetoothStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_9
    invoke-interface {v15}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v18, "BluetoothAdapterService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateAdapterState :: address = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " , timeStamp = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-interface {v15, v4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_4
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_b

    aget-object v18, v5, v8

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/4 v10, 0x1

    :cond_b
    if-nez v10, :cond_a

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_d
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const/4 v8, 0x0

    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    const-string/jumbo v18, "BluetoothAdapterService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateAdapterState :: Bluetooth name set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/bluetooth/btservice/AdapterService;->setName(Ljava/lang/String;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "updateAdapterState() - Callback #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " failed ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_10
    const-string/jumbo v18, "BluetoothAdapterService"

    const-string/jumbo v19, "Autoconnection is available "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "BluetoothAdapterService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "updateAdapterState prevState = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "newState = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Landroid/content/Intent;

    const-class v18, Lcom/samsung/ble/BleAutoConnectService;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v18, 0xc

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    const-string/jumbo v18, "BluetoothAdapterService"

    const-string/jumbo v19, "starting service from this receiver"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string/jumbo v18, "bluetooth_a2dp_sink_mode"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setA2dpPreference(Ljava/lang/String;I)Z

    :cond_11
    const/16 v18, 0xd

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    const-string/jumbo v18, "BluetoothAdapterService"

    const-string/jumbo v19, "terminating service from this receiver"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->stopService(Landroid/content/Intent;)Z

    :cond_12
    return-void
.end method

.method public declared-synchronized updateEvent(Ljava/lang/String;Z)Z
    .locals 22

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEvent call by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", isEnable : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/16 v16, -0x1

    const-wide/16 v14, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v4, "updateEvent - packageName is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v4, "updateEvent - packageName is empty"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    if-eqz p2, :cond_3

    const/16 v16, 0x1

    const/4 v13, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(caller_name == \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "content://com.samsung.bt.btservice/btservice"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    if-eqz v9, :cond_5

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v4, "updateEvent - already set, update"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v8, 0x1

    if-eqz p2, :cond_4

    const-string/jumbo v2, "enable_count"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v13

    add-int/lit8 v13, v13, 0x1

    :cond_2
    :goto_1
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_2
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-string/jumbo v2, "last_event"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "timestamp"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEvent - alreadySet is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_8

    if-eqz p2, :cond_6

    const-string/jumbo v2, "enable_count"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    if-lez v19, :cond_7

    const/16 v18, 0x1

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEvent - update success "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    monitor-exit p0

    return v18

    :cond_3
    const/16 v16, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v12

    :try_start_6
    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEvent : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :cond_4
    :try_start_7
    const-string/jumbo v2, "disable_count"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v10

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v11

    :try_start_8
    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEvent - CursorWindowAllocationException "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_5
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v4, "updateEvent - Can\'t get cursor"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v2, "disable_count"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEvent - update error "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v2, "caller_name"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "enable_count"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "disable_count"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "first_event_time"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v20

    if-eqz v20, :cond_9

    const/16 v18, 0x1

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEvent - insert success "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEvent - insert error "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4
.end method

.method updateModelRssiValues(III)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "modelRssiValuesCallback, low, mid, high = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    :cond_0
    sput p1, Lcom/android/bluetooth/btservice/AdapterService;->mdlLowRssi:I

    sput p2, Lcom/android/bluetooth/btservice/AdapterService;->mdlMidRssi:I

    sput p3, Lcom/android/bluetooth/btservice/AdapterService;->mdlHighRssi:I

    return-void
.end method

.method public updateUuids()V
    .locals 5

    const-string/jumbo v2, "updateUuids() - Updating UUIDs for bonded devices"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->updateUuids(Landroid/bluetooth/BluetoothDevice;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method vscGetVendorCapabilities()I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->vscGetVendorCapabilitiesNative()I

    move-result v0

    return v0
.end method
