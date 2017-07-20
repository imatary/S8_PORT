.class Lcom/android/services/telephony/advanced911/laaser/NetInfo;
.super Ljava/lang/Object;
.source "NetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/advanced911/laaser/NetInfo$1;,
        Lcom/android/services/telephony/advanced911/laaser/NetInfo$BTScanThread;,
        Lcom/android/services/telephony/advanced911/laaser/NetInfo$MyPhoneStateListener;,
        Lcom/android/services/telephony/advanced911/laaser/NetInfo$ScanThread;
    }
.end annotation


# static fields
.field private static mBleInfoList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private static mBleInfoList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mBootTime:J

.field static volatile mBtScanning:Z

.field private static volatile mBtWasOn:Z

.field private static volatile mCdmaDbm:I

.field private static volatile mGsmDbm:I

.field static volatile mLastWifiResultTime:J

.field private static volatile mNeedTurnOffBt:Z

.field private static final mPhoneStateListener:Lcom/android/services/telephony/advanced911/laaser/NetInfo$MyPhoneStateListener;

.field private static volatile mQuickBtScan:Z

.field private static final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private static volatile mScanning:Z

.field private static volatile mScanningWasEnabled:Z


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBleInfoList1:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get2()J
    .locals 2

    sget-wide v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBootTime:J

    return-wide v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mQuickBtScan:Z

    return v0
.end method

.method static synthetic -get4()Landroid/bluetooth/le/ScanCallback;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBleInfoList1:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -set1(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBleInfoList2:Ljava/util/List;

    return-object p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mCdmaDbm:I

    return p0
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mGsmDbm:I

    return p0
.end method

.method static synthetic -set4(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mQuickBtScan:Z

    return p0
.end method

.method static synthetic -set5(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanning:Z

    return p0
.end method

.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->shutdownBLE()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput v2, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mCdmaDbm:I

    sput v2, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mGsmDbm:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBleInfoList1:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBleInfoList2:Ljava/util/List;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mLastWifiResultTime:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBootTime:J

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtWasOn:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mNeedTurnOffBt:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mQuickBtScan:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanning:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanningWasEnabled:Z

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo$MyPhoneStateListener;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo$MyPhoneStateListener;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mPhoneStateListener:Lcom/android/services/telephony/advanced911/laaser/NetInfo$MyPhoneStateListener;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo$1;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enableWifiScan(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanningWasEnabled:Z

    invoke-static {p0, v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->putWifiScanAlwaysAvailable(Landroid/content/Context;I)V

    return-void
.end method

.method private static fixTimeStamp(JJJ)J
    .locals 6

    const-wide/16 v4, 0x3e8

    div-long v2, p4, v4

    sub-long v4, p0, p2

    sub-long v0, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    cmp-long v4, p4, p2

    if-lez v4, :cond_0

    return-wide p4

    :cond_0
    add-long v4, p2, v2

    return-wide v4
.end method

.method static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    :try_start_0
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    const-string/jumbo v3, ""

    return-object v3

    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    const-string/jumbo v3, "NetInfo"

    invoke-static {v3, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private static getCurrentWifiInfo(Landroid/content/Context;Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;)V
    .locals 8

    :try_start_0
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setConBssId(Ljava/lang/String;)V

    const-string/jumbo v5, ""

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setConSsId(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setConBssId(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setConSsId(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setConSignal(I)V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setConFreq(I)V

    invoke-virtual {p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConSsId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConSsId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\""

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setConSsId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v5, "NetInfo"

    invoke-static {v5, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static getNetworkInfo(Landroid/content/Context;)Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;
    .locals 14

    new-instance v6, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;

    invoke-direct {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;-><init>()V

    const-string/jumbo v8, "NetInfo"

    const-string/jumbo v9, "Checking netinfo start)"

    invoke-static {v8, v9}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setInfoTime(J)V

    invoke-static {p0, v6}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->getCurrentWifiInfo(Landroid/content/Context;Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;)V

    invoke-static {p0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setConType(Ljava/lang/String;)V

    sget-wide v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mLastWifiResultTime:J

    invoke-virtual {v6, v8, v9}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setLastWifiResultTime(J)V

    invoke-static {p0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->loadWifiAvailableList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setWifiInfoList(Ljava/util/List;)V

    const-string/jumbo v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-gt v9, v8, :cond_0

    const-string/jumbo v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v8}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v8}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    return-object v6

    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-gt v9, v8, :cond_2

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_3

    const-string/jumbo v8, "NetInfo"

    const-string/jumbo v9, "ERROR NO CELL INFO (null)"

    invoke-static {v8, v9}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v6, v3}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setCellInfoList(Ljava/util/List;)V

    :cond_2
    sget-object v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBleInfoList2:Ljava/util/List;

    invoke-virtual {v6, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->setBleInfoList(Ljava/util/List;)V

    const-string/jumbo v8, "NetInfo"

    const-string/jumbo v9, "Checking netinfo stop"

    invoke-static {v8, v9}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    const-string/jumbo v8, "NetInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NEW Cell info: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    new-instance v2, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;

    invoke-direct {v2}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    sget-wide v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBootTime:J

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTimeStamp(J)V

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setRegistered(Z)V

    instance-of v8, v1, Landroid/telephony/CellInfoLte;

    if-eqz v8, :cond_7

    const-string/jumbo v8, "LTE"

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTech(Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoLte;

    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setMcc(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoLte;

    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setMnc(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoLte;

    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setCellId(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoLte;

    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setPcId(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoLte;

    invoke-virtual {v8}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTaclac(I)V

    if-nez v4, :cond_6

    sget v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mGsmDbm:I

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setSignal(I)V

    :cond_4
    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    const-string/jumbo v8, "NetInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cellinfo : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getTech()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setSignal(I)V

    invoke-virtual {v2}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getSignal()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v2}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getSignal()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0xa

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setSignal(I)V

    goto :goto_1

    :cond_7
    instance-of v8, v1, Landroid/telephony/CellInfoGsm;

    if-eqz v8, :cond_8

    const-string/jumbo v8, "GSM"

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTech(Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setMcc(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setMnc(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setCellId(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v8}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTaclac(I)V

    check-cast v1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setSignal(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    instance-of v8, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v8, :cond_a

    const-string/jumbo v8, "WCDMA"

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTech(Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setMcc(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setMnc(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setCellId(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v8}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTaclac(I)V

    if-nez v4, :cond_9

    sget v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mGsmDbm:I

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setSignal(I)V

    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    check-cast v1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setSignal(I)V

    goto :goto_3

    :cond_a
    instance-of v8, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v8, :cond_b

    const-string/jumbo v8, "CDMA"

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTech(Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v8}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setCellId(I)V

    move-object v8, v1

    check-cast v8, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v8}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTaclac(I)V

    check-cast v1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setPcId(I)V

    sget v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mCdmaDbm:I

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setSignal(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->MCCMNC:Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setMcc(I)V

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setMnc(I)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v8, "UNK"

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->setTech(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method static initiateScan(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "NetInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WIFI Scan requested: isscanalwaysavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->enableWifiScan(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method

.method static loadWifiAvailableList(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;",
            ">;"
        }
    .end annotation

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    new-instance v15, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;

    invoke-direct {v15}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;-><init>()V

    iget-object v4, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v15, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->setBssId(Ljava/lang/String;)V

    iget v4, v8, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v15, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->setSignal(I)V

    iget-object v4, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v15, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->setSsId(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getSsId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v15}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getSsId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\""

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->setSsId(Ljava/lang/String;)V

    :cond_0
    sget-wide v4, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBootTime:J

    iget-wide v6, v8, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-static/range {v2 .. v7}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->fixTimeStamp(JJJ)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->setTimeStamp(J)V

    iget-object v4, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v15, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->setCapabilities(Ljava/lang/String;)V

    iget v4, v8, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v15, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->setFrequency(I)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->setRemembered(Z)V

    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v5, v12, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "any"

    iget-object v5, v12, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v5, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string/jumbo v6, "\""

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->setRemembered(Z)V

    :cond_3
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v4, "NetInfo"

    const-string/jumbo v5, "wifi Scan results null"

    invoke-static {v4, v5}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mLastWifiResultTime:J

    :cond_5
    return-object v16
.end method

.method private static putWifiScanAlwaysAvailable(Landroid/content/Context;I)V
    .locals 3

    const-string/jumbo v0, "NetInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting scan always to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_scan_always_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static registerForPhoneStateListener(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mPhoneStateListener:Lcom/android/services/telephony/advanced911/laaser/NetInfo$MyPhoneStateListener;

    const/16 v2, 0x121

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static resetScanningSetting(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanningWasEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->putWifiScanAlwaysAvailable(Landroid/content/Context;I)V

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanningWasEnabled:Z

    :cond_0
    return-void
.end method

.method static setNeedTurnOffBtStatus(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mNeedTurnOffBt:Z

    return-void
.end method

.method static setupBLE(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "bluetooth"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static setupNetInfo()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBootTime:J

    return-void
.end method

.method private static shutdownBLE()V
    .locals 5

    const/4 v1, 0x1

    const-string/jumbo v2, "NetInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Turn off BT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtWasOn:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtWasOn:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "NetInfo"

    const-string/jumbo v2, "Try Turning off BT - STATE_TURNING_ON"

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mNeedTurnOffBt:Z

    :cond_1
    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static startBTScanThread(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    const-string/jumbo v1, "NetInfo"

    const-string/jumbo v2, "No BT"

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "NetInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BTScan start Thread - Quick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / Scanning : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtScanning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mQuickBtScan:Z

    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtScanning:Z

    if-nez v1, :cond_2

    sput-boolean v5, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtScanning:Z

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    sput-boolean v5, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtWasOn:Z

    :goto_0
    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mNeedTurnOffBt:Z

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo$BTScanThread;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo$BTScanThread;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "NetInfo"

    const-string/jumbo v2, "Turning on BT"

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtWasOn:Z

    goto :goto_0
.end method

.method static startScanThread()V
    .locals 2

    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanning:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mScanning:Z

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/NetInfo$ScanThread;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo$ScanThread;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static tryTurnOffBT()V
    .locals 3

    :try_start_0
    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mNeedTurnOffBt:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetInfo"

    const-string/jumbo v2, "TryTurnOffBT BT"

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mNeedTurnOffBt:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
