.class Lcom/android/bluetooth/gatt/AdvertiseManager;
.super Ljava/lang/Object;
.source "AdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;,
        Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_LOGGING_APP_FEATURE_EXCEPTION:Ljava/lang/String; = "LEOA"

.field private static final BLUETOOTH_LOGGING_APP_ID:Ljava/lang/String; = "com.android.bluetooth"

.field private static final DBG:Z = true

.field private static final MSG_START_ADVERTISING:I = 0x0

.field private static final MSG_STOP_ADVERTISING:I = 0x1

.field private static final OPERATION_TIME_OUT_MILLIS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "BtGatt.AdvertiseManager"


# instance fields
.field private final mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mAdvertiseClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/AdvertiseClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

.field private mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLocalDeviceName:Ljava/lang/String;

.field private final mService:Lcom/android/bluetooth/gatt/GattService;

.field private standardAdvClientIf:I


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLocalDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/gatt/AdvertiseManager;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->standardAdvClientIf:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLocalDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/gatt/AdvertiseManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->standardAdvClientIf:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->insertExceptionLog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->standardAdvClientIf:I

    const-string/jumbo v0, "advertise manager created"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    iput-object p2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    new-instance v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseNative:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    iput-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLocalDeviceName:Ljava/lang/String;

    return-void
.end method

.method private getAdvertiseClient(I)Lcom/android/bluetooth/gatt/AdvertiseClient;
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseClient;

    iget v2, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private insertExceptionLog()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.bluetooth"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "LEOA"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "Write on CV = 1. app : com.android.bluetooth 2. Action : LEOA"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService;->dumpAdvData2Permenent()V

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BtGatt.AdvertiseManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string/jumbo v0, "BtGatt.AdvertiseManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private postCallback(II)V
    .locals 7

    :try_start_0
    const-string/jumbo v4, "BtGatt.AdvertiseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "postCallback clientIf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->getAdvertiseClient(I)Lcom/android/bluetooth/gatt/AdvertiseClient;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v4, p1, p2, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->onMultipleAdvertiseCallback(IIZLandroid/bluetooth/le/AdvertiseSettings;)V

    :goto_1
    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "failed onMultipleAdvertiseCallback"

    invoke-direct {p0, v4, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method callbackDone(II)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->postCallback(II)V

    goto :goto_0
.end method

.method cleanup()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "advertise clients cleared"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertiseClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    :cond_0
    return-void
.end method

.method start()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "BluetoothAdvertiseManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "BtGatt.AdvertiseManager"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    return-void
.end method

.method startAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
