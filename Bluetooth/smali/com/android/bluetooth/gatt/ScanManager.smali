.class public Lcom/android/bluetooth/gatt/ScanManager;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;,
        Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;,
        Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_BATCHED_SCAN:Ljava/lang/String; = "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

.field private static final BLUETOOTH_LOGGING_APP_FEATURE_EXCEPTION:Ljava/lang/String; = "LEOS"

.field private static final BLUETOOTH_LOGGING_APP_ID:Ljava/lang/String; = "com.android.bluetooth"

.field private static final DBG:Z = true

.field private static final MSG_FLUSH_BATCH_RESULTS:I = 0x2

.field private static final MSG_SCAN_TIMEOUT:I = 0x3

.field private static final MSG_SET_LCD_OFF_SCAN_PARAMS:I = 0x64

.field private static final MSG_SET_ORIGINAL_SCAN_PARAMS:I = 0x65

.field private static final MSG_START_BLE_SCAN:I = 0x0

.field private static final MSG_STOP_BLE_SCAN:I = 0x1

.field private static final OPERATION_TIME_OUT_MILLIS:I = 0x1f4

.field static final SCAN_RESULT_TYPE_BOTH:I = 0x3

.field static final SCAN_RESULT_TYPE_FULL:I = 0x2

.field static final SCAN_RESULT_TYPE_TRUNCATED:I = 0x1

.field private static final SCAN_TIMEOUT_MS:I = 0x1b7740

.field private static final TAG:Ljava/lang/String; = "BtGatt.ScanManager"


# instance fields
.field private curUsedTrackableAdvertisements:Ljava/lang/Integer;

.field private mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mBatchAlarmReceiverRegistered:Z

.field private mBatchClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

.field private mIsLcdOff:Z

.field private mLastConfiguredScanInterval:I

.field private mLastConfiguredScanSetting:I

.field private mLastConfiguredScanValue:I

.field private mLastConfiguredScanWindow:I

.field private mLastLcdOffConfiguredScanValue:I

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mRegularScanClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

.field private mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->curUsedTrackableAdvertisements:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/gatt/ScanManager;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanValue:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/gatt/ScanManager;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanWindow:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/gatt/ScanManager;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastLcdOffConfiguredScanValue:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/gatt/ScanManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiverRegistered:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/gatt/ScanManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mIsLcdOff:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/gatt/ScanManager;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanInterval:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/gatt/ScanManager;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->curUsedTrackableAdvertisements:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/gatt/ScanManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/gatt/ScanManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiverRegistered:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/gatt/ScanManager;Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/gatt/ScanManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanInterval:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/gatt/ScanManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/gatt/ScanManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanValue:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/gatt/ScanManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanWindow:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/gatt/ScanManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastLcdOffConfiguredScanValue:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/bluetooth/gatt/ScanManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager;->isFilteringSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanValue:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanInterval:I

    iput v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanWindow:I

    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastLcdOffConfiguredScanValue:I

    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mIsLcdOff:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    new-instance v0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->curUsedTrackableAdvertisements:Ljava/lang/Integer;

    return-void
.end method

.method private insertExceptionLog()V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.bluetooth"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "LEOS"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "Write on CV = 1. app : com.android.bluetooth 2. Action : LEOS"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService;->dumpScanData2Permenent()V

    return-void
.end method

.method private isFilteringSupported()Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getStandAloneBleMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BtGatt.ScanManager"

    const-string/jumbo v2, "isFilteringSupported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableStandAloneBleMode()V

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v1

    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BtGatt.ScanManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "BtGatt.ScanManager"

    const-string/jumbo v2, "mHandler is null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method callbackDone(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "callback done for clientIf - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager;->logd(Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method cleanup()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "BtGatt.ScanManager"

    const-string/jumbo v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->cleanup()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtGatt.ScanManager"

    const-string/jumbo v1, "cleanup handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    :cond_0
    return-void
.end method

.method dump(Ljava/lang/StringBuilder;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v5, "BtGatt.ScanManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dump: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Scanclients"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BtGatt.ScanManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dump: client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " filters"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    iget v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService;->getClientAppNameById(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "null\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanFilter;

    const-string/jumbo v5, "["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    iget v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService;->getClientAppNameById(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "BtGatt.ScanManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dump: client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with null filter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    iget v7, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/gatt/GattService;->getClientAppNameById(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "null\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method flushBatchScanResults(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    return-void
.end method

.method getBatchScanQueue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    return-object v0
.end method

.method public getCurrScanInterval()I
    .locals 4

    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanInterval:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getCurrScanMode()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    return v0
.end method

.method public getCurrScanValue()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanValue:I

    return v0
.end method

.method public getCurrScanWindow()I
    .locals 4

    iget v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanWindow:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getCurrentUsedTrackingAdvertisement()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->curUsedTrackableAdvertisements:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getFullBatchScanQueue()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method getRegularScanQueue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    return-object v0
.end method

.method public isScanFilteringMode(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-static {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->-wrap3(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setLcdOffScanParameters()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mIsLcdOff:Z

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    return-void
.end method

.method setLcdOnScanParameters()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mIsLcdOff:Z

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    return-void
.end method

.method start()V
    .locals 3

    const-string/jumbo v1, "BtGatt.ScanManager"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "BluetoothScanManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;-><init>(Lcom/android/bluetooth/gatt/ScanManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    return-void
.end method

.method startScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    return-void
.end method

.method stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    return-void
.end method
