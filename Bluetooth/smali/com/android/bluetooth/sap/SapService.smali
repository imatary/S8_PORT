.class public Lcom/android/bluetooth/sap/SapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "SapService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sap/SapService$1;,
        Lcom/android/bluetooth/sap/SapService$SapBinder;,
        Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;,
        Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final DEBUG:Z

.field public static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138d

.field public static final MSG_RELEASE_WAKE_LOCK:I = 0x138e

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x3e8

.field private static final SAP_UUIDS:[Landroid/os/ParcelUuid;

.field private static final SDP_SAP_SERVICE_NAME:Ljava/lang/String; = "SIM Access"

.field private static final SDP_SAP_VERSION:I = 0x102

.field private static final SHUTDOWN:I = 0x3

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SapService"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x61a8

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private is_support_sap:Z

.field private mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile mInterrupted:Z

.field private mIsRegistered:Z

.field private mIsWaitingAuthorization:Z

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRemoveTimeoutMsg:Z

.field private mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

.field private mSapServer:Lcom/android/bluetooth/sap/SapServer;

.field private mSdpHandle:I

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/sap/SapService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/sap/SapService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/sap/SapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic -set5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->initSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/sap/SapService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->stopSapServerSession()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->cancelUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeService()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapService;->sendCancelUserConfirmationIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendConnectTimeoutMessage()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendShutdownMessage()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->setUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->startRfcommSocketListener()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->startSapServerSession()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/sap/SapService;->SAP_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapService;->is_support_sap:Z

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z

    new-instance v0, Lcom/android/bluetooth/sap/SapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sap/SapService$1;-><init>(Lcom/android/bluetooth/sap/SapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;-><init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    iput v2, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    return-void
.end method

.method public static DisableSAP()Z
    .locals 4

    const-string/jumbo v0, "SapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disable sap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_BT_DisableSAP"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_BT_DisableSAP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private cancelUserTimeoutAlarm()V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapService"

    const-string/jumbo v4, "cancelUserTimeOutAlarm()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-boolean v5, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    return-void
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Close Connection Socket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized closeServerSocket()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Close Server Socket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final closeService()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "SAP Service closeService in"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mInterrupted:Z

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeServerSocket()V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->shutdown()V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->join()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v2, 0x138d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v2, 0x138e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeConnectionSocket()V

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->removeSdpRecord()V

    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "SAP Service closeService out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "mAcceptThread close error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/sap/SapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private final initSocket()Z
    .locals 10

    sget-boolean v6, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SapService"

    const-string/jumbo v7, "Sap Service initSocket"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    const/16 v0, 0xa

    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0xa

    if-ge v3, v6, :cond_1

    iget-boolean v6, p0, Lcom/android/bluetooth/sap/SapService;->mInterrupted:Z

    if-eqz v6, :cond_3

    :cond_1
    :goto_1
    if-eqz v4, :cond_6

    sget-boolean v6, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "SapService"

    const-string/jumbo v7, "Succeed to create listening socket "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return v4

    :cond_3
    const/4 v4, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v7, -0x2

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->removeSdpRecord()V

    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v6

    const-string/jumbo v7, "SIM Access"

    iget-object v8, p0, Lcom/android/bluetooth/sap/SapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothServerSocket;->getChannel()I

    move-result v8

    const/16 v9, 0x102

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/bluetooth/sdp/SdpManager;->createSapsRecord(Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_4

    const/16 v6, 0xc

    if-eq v5, v6, :cond_4

    const-string/jumbo v6, "SapService"

    const-string/jumbo v7, "initServerSocket failed as BT is (being) turned off"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v6, "SapService"

    const-string/jumbo v7, "Error create RfcommServerSocket "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :try_start_1
    sget-boolean v6, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "SapService"

    const-string/jumbo v7, "wait 300 ms"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v6, "SapService"

    const-string/jumbo v7, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_6
    const-string/jumbo v6, "SapService"

    const-string/jumbo v7, "Error to create listening socket after 10 try"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private isCallOngoing()Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static notifyUpdateWakeLock(Landroid/os/Handler;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x138d

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private removeSdpRecord()V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    if-ltz v1, :cond_1

    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing SDP record handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/sap/SapService;->mSdpHandle:I

    :cond_1
    return-void
.end method

.method private sendCancelUserConfirmationIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendConnectTimeoutMessage()V
    .locals 3

    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "sendConnectTimeoutMessage()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mIsWaitingAuthorization:Z

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->cancelUserTimeoutAlarm()V

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->removeSdpRecord()V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setState(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/sap/SapService;->setState(II)V

    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    if-eq p1, v3, :cond_2

    sget-boolean v3, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sap state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

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
    iget v1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    iput p1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    iget v4, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v5, v4, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->isCallOngoing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00f6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
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

    sget-boolean v2, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "SetUserTimeOutAlarm()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_1

    const-string/jumbo v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_1
    iget-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->cancelUserTimeoutAlarm()V

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mRemoveTimeoutMsg:Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x61a8

    add-long/2addr v4, v6

    invoke-virtual {v2, v8, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startRfcommSocketListener()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapService"

    const-string/jumbo v1, "Sap Service startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/sap/SapService;Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;)V

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    const-string/jumbo v1, "SapAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;->start()V

    :cond_1
    return-void
.end method

.method private final startSapServerSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x138e

    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Sap Service startSapServerSession"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "StartingSapTransaction"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapService;->setState(I)V

    new-instance v1, Lcom/android/bluetooth/sap/SapServer;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/bluetooth/sap/SapServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSapServer:Lcom/android/bluetooth/sap/SapServer;

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapServer;->start()V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "startSapServerSession() success!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private stopSapServerSession()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapService"

    const-string/jumbo v1, "SAP Service stopSapServerSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAcceptThread:Lcom/android/bluetooth/sap/SapService$SocketAcceptThread;

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeConnectionSocket()V

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeServerSocket()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/sap/SapService;->setState(I)V

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->startRfcommSocketListener()V

    :cond_2
    return-void
.end method


# virtual methods
.method public cleanup()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/sap/SapService;->setState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->closeService()V

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/bluetooth/sap/SapService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "Sending DISC_GRACEFULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.bluetooth.sap.action.DISCONNECT_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.bluetooth.sap.extra.DISCONNECT_TYPE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/sap/SapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
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
    iget v1, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

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
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

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

    iget-object v7, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    sget-object v7, Lcom/android/bluetooth/sap/SapService;->SAP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v5, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/sap/SapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, -0x1

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/sap/SapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothSapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sap/SapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/sap/SapService;->mState:I

    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/sap/SapService$SapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sap/SapService$SapBinder;-><init>(Lcom/android/bluetooth/sap/SapService;)V

    return-object v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothSapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "start()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->isWifiOnly()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->DisableSAP()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "SAP UUID disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/bluetooth/sap/SapService;->is_support_sap:Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->is_support_sap:Z

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/sap/SapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v5, p0, Lcom/android/bluetooth/sap/SapService;->mInterrupted:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SapService"

    const-string/jumbo v3, "Unable to register sap receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected stop()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Avoid unregister when receiver it is not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->is_support_sap:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/bluetooth/sap/SapService;->mIsRegistered:Z

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService;->mSapReceiver:Lcom/android/bluetooth/sap/SapService$SapBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/sap/SapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v3, v1}, Lcom/android/bluetooth/sap/SapService;->setState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapService;->sendShutdownMessage()V

    :cond_1
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Unable to unregister sap receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
