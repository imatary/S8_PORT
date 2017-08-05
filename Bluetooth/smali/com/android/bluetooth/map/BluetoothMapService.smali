.class public Lcom/android/bluetooth/map/BluetoothMapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;,
        Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final ACTION_SHOW_MAPS_SETTINGS:Ljava/lang/String; = "android.btmap.intent.action.SHOW_MAPS_SETTINGS"

.field private static final BDUMP_TAG:Ljava/lang/String; = "MapSvc-"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z

.field private static final DISCONNECT_MAP:I = 0x3

.field private static final MAP_UUIDS:[Landroid/os/ParcelUuid;

.field private static final MAS_ID_EMAIL:I = 0x1

.field private static final MAS_ID_SMS_MMS:I = 0x0

.field public static final MAS_INSTANCE_CREATED:I = 0x6

.field public static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138d

.field public static final MSG_MAS_CONNECT:I = 0x138b

.field public static final MSG_MAS_CONNECT_CANCEL:I = 0x138c

.field public static final MSG_MNS_SDP_SEARCH:I = 0x138f

.field public static final MSG_OBSERVER_REGISTRATION:I = 0x1390

.field public static final MSG_RELEASE_WAKE_LOCK:I = 0x138e

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x2710

.field private static final SHUTDOWN:I = 0x4

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapService"

.field private static final UPDATE_MAS_INSTANCES:I = 0x5

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_ADDED:I = 0x0

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_CHANGED:I = 0x4

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_DISCONNECT:I = 0x3

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_POLICY_SET:I = 0x5

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_POLICY_UNSET:I = 0x6

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_REMOVED:I = 0x1

.field public static final UPDATE_MAS_INSTANCES_ACCOUNT_RENAMED:I = 0x2

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x7530

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z

.field private static mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private mAccountChanged:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

.field private mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mCloseFromClient:Z

.field private mEnabledAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWaitingAuthorization:Z

.field private mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

.field private mMasInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Lcom/android/bluetooth/map/BluetoothMapMasInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mMasInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapMasInstance;",
            ">;"
        }
    .end annotation
.end field

.field mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

.field private mPermission:I

.field private mRegisteredMapReceiver:Z

.field private mRemoveTimeoutMsg:Z

.field private mSdpSearchInitiated:Z

.field private mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

.field private mSmsCapable:Z

.field private mStartError:Z

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mCloseFromClient:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get5()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSmsCapable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/map/BluetoothMapService;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/map/BluetoothMapService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstancesHandler(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->startRfcommSocketListener(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSessions(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->createMasInstances()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->onConnectHandler(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectCancelMessage()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectMessage(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectTimeoutMessage()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0x4f4c"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    sput-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v3, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSmsCapable:Z

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mCloseFromClient:Z

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    return-void
.end method

.method private cancelUserTimeoutAlarm()V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "cancelUserTimeOutAlarm()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    return-void
.end method

.method private declared-synchronized closeService()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "MAP Service closeService in"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMasInstances.valueAt("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ").shutdown()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    const/4 v3, 0x0

    sput-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "CloseService(): Release Wake Lock"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "Quit looper"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "Remove Handler"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v3, 0x0

    sput-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "MAP Service closeService out"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private createMasInstances()V
    .locals 13

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailSupportStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    const-string/jumbo v1, "0"

    const-string/jumbo v2, "SecEmail"

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_AUTHORITY:Ljava/lang/String;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;

    invoke-direct {v10, p0}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0}, Lcom/android/bluetooth/map/BluetoothMapAccountLoader;->parseAccounts(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MapSvc-createMasInstances :: Email Account is Added"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v10, v4}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapAccountLoader;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    :cond_1
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSmsCapable:Z

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object v3, p0

    move-object v4, p0

    move v6, v11

    move v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object v4, p0

    move-object v5, p0

    move v7, v12

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v12, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->sendStartListenerMessage(I)V

    return-void
.end method

.method private getNextMasId()I
    .locals 6

    const/16 v5, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-le v3, v2, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    return v4

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-gt v1, v5, :cond_4

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v5
.end method

.method public static getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private onConnectHandler(I)V
    .locals 6

    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Access permission = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    :try_start_0
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "incoming connection accepted from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " automatically as trusted device"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->startObexServerSessions()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "catch IOException starting obex server session"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "BluetoothMapService"

    const-string/jumbo v4, "catch RemoteException starting obex server session"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendConnectCancelMessage()V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v2, 0x138c

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private sendConnectMessage(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v2, 0x138b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private sendConnectTimeoutMessage()V
    .locals 3

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "sendConnectTimeoutMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 7

    const/4 v6, 0x4

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    if-eqz v4, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v4, 0xf0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v4, v6}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "mSessionStatusHandler shutdown message already in Queue"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "sendShutdownMessage() Out"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v4, v6}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "mSessionStatusHandler.sendMessage() dispatched shutdown message"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setState(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    if-eq p1, v3, :cond_1

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Map state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v5, v4, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private setUserTimeoutAlarm()V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapService"

    const-string/jumbo v3, "SetUserTimeOutAlarm()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_1

    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private final startObexServerSessions()V
    .locals 11

    const/16 v10, 0x138e

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "Map Service START ObexServerSessions()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v6, :cond_1

    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const-string/jumbo v6, "StartingObexMapTransaction"

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "startObexSessions(): Acquire Wake Lock"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-nez v6, :cond_2

    new-instance v6, Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SdpMnsRecord;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v4, v0, :cond_4

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "RemoteException occured while starting an obexServerSession restarting the listener"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "IOException occured while starting an obexServerSession restarting the listener"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    :cond_5
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v6, v10}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v7, v10}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "BluetoothMapService"

    const-string/jumbo v7, "startObexServerSessions() success!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method private final startRfcommSocketListener(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMasInstances.valueAt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ").startRfcommSocketListener()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private stopObexServerSessions(I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MAP Service STOP ObexServerSessions() : masId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v8, :cond_2

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    :cond_4
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mCloseFromClient:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    :cond_5
    if-eqz v2, :cond_6

    invoke-direct {p0, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    iput v9, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    sput-object v7, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v5, 0x138d

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v5, 0x138e

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "BluetoothMapService"

    const-string/jumbo v5, "stopObexServerSessions(): Release Wake Lock"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    if-ne p1, v8, :cond_4

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v4, :cond_9

    const-string/jumbo v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mMasInstances.valueAt("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ").restartObexServerSession()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateMasInstancesHandler(I)Z
    .locals 14

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMasInstancesHandler() state = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", action = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    const/4 v13, 0x0

    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    if-eqz v13, :cond_3

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Removing account: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " masInst = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    return v8

    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->getEnabledAccountItems()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz v13, :cond_9

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Removing account: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " masInst = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    if-eqz v12, :cond_c

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Adding account: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v4, 0x1

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    goto :goto_3

    :cond_c
    iput-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "  Enabled accounts:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "  Active MAS instances:"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_5
    if-ge v9, v7, :cond_e

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    :goto_6
    return v8

    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    goto :goto_6
.end method


# virtual methods
.method public cleanup()Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapService"

    const-string/jumbo v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V

    const/4 v0, 0x1

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public disconnectMap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapService"

    const-string/jumbo v3, "disconnectMap"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mCloseFromClient:Z

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSessions(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mCloseFromClient:Z

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRemoteDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sRemoteDeviceName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAppObserver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIsWaitingAuthorization: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRemoveTimeoutMsg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPermission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAccountChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBluetoothMnsObexClient: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string/jumbo v5, "mMasInstanceMap:"

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v5, "mEnabledAccounts:"

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    const/4 v1, 0x2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v6, 0x0

    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_0

    aget v7, p1, v6

    if-ne v1, v7, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-object v0
.end method

.method protected isMapStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_6

    sput-object p1, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0a00d9

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    :cond_0
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v3

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-nez v3, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->setUserTimeoutAlarm()V

    :cond_1
    :goto_0
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isXMLParsingFailCarkits(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    if-eqz v2, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waiting for authorization for connection from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v6

    :cond_4
    :try_start_1
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-ne v3, v6, :cond_1

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_6
    :try_start_2
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v4, "BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected connection from a second Remote Device received. name: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_7

    const-string/jumbo v3, "unknown"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v7

    :cond_7
    :try_start_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectCancelMessage()V

    goto :goto_1

    :cond_9
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-ne v3, v6, :cond_3

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectMessage(I)V

    goto :goto_1
.end method

.method public sendStartListenerMessage(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "mSessionStatusHandler START_LISTENER message already in Queue"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Saved priority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected start()Z
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "start()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isMapStarted()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v7, "BluetoothMapService"

    const-string/jumbo v8, "start received for already started, ignoring"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    new-instance v5, Landroid/os/HandlerThread;

    const-string/jumbo v8, "BluetoothMapHandler"

    invoke-direct {v5, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-direct {v8, p0, v4, v10}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;)V

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.btmap.intent.action.SHOW_MAPS_SETTINGS"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v8, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v8, "message/*"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    if-nez v8, :cond_2

    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    const-string/jumbo v9, "android.permission.WRITE_SMS"

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v3, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x112005f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSmsCapable:Z

    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    if-eqz v8, :cond_3

    :goto_2
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "Wrong mime type!!!"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v8, "BluetoothMapService"

    const-string/jumbo v9, "Unable to register map receiver"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2
.end method

.method protected stop()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isMapStarted()Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "Service Not Available to STOP, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "Unable to unregister map receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "BluetoothMapService"

    const-string/jumbo v2, "Service Stoping()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V

    :cond_5
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mStartError:Z

    const/4 v1, 0x2

    invoke-direct {p0, v4, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "MapSvc-map service stop() :: Email Account is Removed"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    return v5
.end method

.method public updateMasInstances(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothMapService"

    const-string/jumbo v1, "mSessionStatusHandler is null in updateMasInstances"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
