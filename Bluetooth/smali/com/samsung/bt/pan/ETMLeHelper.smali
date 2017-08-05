.class public Lcom/samsung/bt/pan/ETMLeHelper;
.super Ljava/lang/Object;
.source "ETMLeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/pan/ETMLeHelper$1;,
        Lcom/samsung/bt/pan/ETMLeHelper$2;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final FOUND_DEV_ADDR:Ljava/lang/String; = "bt_addr"

.field private static final MSG_ON_FOUND:I = 0x1

.field private static final RESET_TIMER:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "ETMLeHelper"


# instance fields
.field private mAdvCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private mAdvData:Landroid/bluetooth/le/AdvertiseData;

.field private mAdvSetting:Landroid/bluetooth/le/AdvertiseSettings;

.field private mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastConnectedPanDevice:Ljava/lang/String;

.field private mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mScanFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mScanSetting:Landroid/bluetooth/le/ScanSettings;

.field private mScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method static synthetic -get0(Lcom/samsung/bt/pan/ETMLeHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/bt/pan/ETMLeHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mLastConnectedPanDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/bt/pan/ETMLeHelper;->addrtostring([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/bt/pan/ETMLeHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iput-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvData:Landroid/bluetooth/le/AdvertiseData;

    iput-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvSetting:Landroid/bluetooth/le/AdvertiseSettings;

    iput-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanFilter:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanSetting:Landroid/bluetooth/le/ScanSettings;

    iput-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mLastConnectedPanDevice:Ljava/lang/String;

    new-instance v0, Lcom/samsung/bt/pan/ETMLeHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/bt/pan/ETMLeHelper$1;-><init>(Lcom/samsung/bt/pan/ETMLeHelper;)V

    iput-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvCallback:Landroid/bluetooth/le/AdvertiseCallback;

    new-instance v0, Lcom/samsung/bt/pan/ETMLeHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/bt/pan/ETMLeHelper$2;-><init>(Lcom/samsung/bt/pan/ETMLeHelper;)V

    iput-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const-string/jumbo v0, "ETMLeHelper"

    const-string/jumbo v1, "ETMLeHelper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/bt/pan/ETMLeHelper;->initTetherAdv()V

    invoke-direct {p0}, Lcom/samsung/bt/pan/ETMLeHelper;->initTetherScan()V

    return-void
.end method

.method private static addrtobytes(Ljava/lang/String;)[B
    .locals 4

    const-string/jumbo v2, ":"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static addrtostring([B)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initTetherAdv()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "ETMLeHelper"

    const-string/jumbo v3, "initTetherAdv"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "ETMLeHelper"

    const-string/jumbo v3, "BD ADDR is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "77"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/bt/pan/ETMLeHelper;->addrtobytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v2, :cond_1

    const-string/jumbo v2, "ETMLeHelper"

    const-string/jumbo v3, "LE Advertiser is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v2, Lcom/samsung/bt/pan/ETMLeHelper;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ETMLeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Set advertising data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/bt/pan/ETMLeHelper;->addrtostring([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    invoke-virtual {v2, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v2

    const/16 v3, 0x75

    invoke-virtual {v2, v3, v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvData:Landroid/bluetooth/le/AdvertiseData;

    new-instance v2, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    invoke-virtual {v2, v6}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvSetting:Landroid/bluetooth/le/AdvertiseSettings;

    return-void
.end method

.method private initTetherScan()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v4, "ETMLeHelper"

    const-string/jumbo v5, "initTetherScan"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v4, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v4, :cond_0

    const-string/jumbo v4, "ETMLeHelper"

    const-string/jumbo v5, "mPanuScanner is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanFilter:Ljava/util/List;

    new-array v2, v6, [B

    const/16 v4, 0x77

    aput-byte v4, v2, v7

    new-array v3, v6, [B

    const/4 v4, -0x1

    aput-byte v4, v3, v7

    const/16 v1, 0x75

    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v4, v1, v2, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanFilter:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x7500

    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v4, v1, v2, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanFilter:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v4, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanSetting:Landroid/bluetooth/le/ScanSettings;

    return-void
.end method


# virtual methods
.method public resetAdvertise()V
    .locals 5

    const-string/jumbo v1, "ETMLeHelper"

    const-string/jumbo v2, "resetAdvertise"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvSetting:Landroid/bluetooth/le/AdvertiseSettings;

    iget-object v3, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvData:Landroid/bluetooth/le/AdvertiseData;

    iget-object v4, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ETMLeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTetheredDeviceFilter(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "ETMLeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTetheredDeviceFilter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mLastConnectedPanDevice:Ljava/lang/String;

    return-void
.end method

.method public startAdvertise()V
    .locals 4

    const-string/jumbo v0, "ETMLeHelper"

    const-string/jumbo v1, "startAdvertise"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvSetting:Landroid/bluetooth/le/AdvertiseSettings;

    iget-object v2, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvData:Landroid/bluetooth/le/AdvertiseData;

    iget-object v3, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    :cond_0
    return-void
.end method

.method public startScan()V
    .locals 4

    const-string/jumbo v0, "ETMLeHelper"

    const-string/jumbo v1, "startScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanFilter:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanSetting:Landroid/bluetooth/le/ScanSettings;

    iget-object v3, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    :cond_0
    return-void
.end method

.method public stopAdvertise()V
    .locals 2

    const-string/jumbo v0, "ETMLeHelper"

    const-string/jumbo v1, "stopAdvertise"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v1, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mAdvCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 2

    const-string/jumbo v0, "ETMLeHelper"

    const-string/jumbo v1, "stopScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/samsung/bt/pan/ETMLeHelper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_0
    return-void
.end method
