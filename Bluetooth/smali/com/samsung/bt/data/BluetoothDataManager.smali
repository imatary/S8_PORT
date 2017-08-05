.class public Lcom/samsung/bt/data/BluetoothDataManager;
.super Ljava/lang/Object;
.source "BluetoothDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/data/BluetoothDataManager$1;
    }
.end annotation


# static fields
.field static final BOND_SUCCESS:I = 0x0

.field static final BT_PROPERTY_BDNAME:I = 0x1

.field static final BT_PROPERTY_LOCAL_FIRMWARE:I = 0x11

.field static final BT_PROPERTY_LOCAL_LMP_SUB_VERSION:I = 0x10

.field static final BT_PROPERTY_LOCAL_LMP_VERSION:I = 0xf

.field static final BT_PROPERTY_LOCAL_MANUFACTURER:I = 0xe

.field static final BT_PROPERTY_MANUFACTURER_DATA:I = 0xf1

.field static final BT_PROPERTY_REMOTE_ADDRESS_TYPE:I = 0x17

.field static final BT_PROPERTY_REMOTE_COD:I = 0x4

.field static final BT_PROPERTY_REMOTE_CONNECTION_INTERVAL:I = 0x18

.field static final BT_PROPERTY_REMOTE_LINK_TYPE:I = 0x15

.field static final BT_PROPERTY_REMOTE_LL_FEATURE:I = 0x1c

.field static final BT_PROPERTY_REMOTE_LMP_SUB_VERSION:I = 0x14

.field static final BT_PROPERTY_REMOTE_LMP_VERSION:I = 0x13

.field static final BT_PROPERTY_REMOTE_MANUFACTURER:I = 0x12

.field static final BT_PROPERTY_REMOTE_PAIRING_RESPONSE_AUTH:I = 0x1a

.field static final BT_PROPERTY_REMOTE_PAIRING_RESPONSE_OOB:I = 0x19

.field static final BT_PROPERTY_REMOTE_ROLE:I = 0x16

.field static final BT_PROPERTY_REMOTE_SMP_FAIL_REASON:I = 0x1b

.field static final BT_PROPERTY_TYPE_OF_DEVICE:I = 0x5

.field private static final DBG:Z

.field public static final ERROR_CMD_TIMEOUT:I = 0xe1

.field public static final ERROR_MAX_TIMEOUT_VALUE:I = 0xd2

.field static final FAIL_BOND:I = 0x1

.field static final FAIL_CONNECTION:I = 0x2

.field static final FAIL_DISCONNECTION:I = 0x3

.field static final FAIL_HWERROR:I = 0x4

.field public static final HW_KEY_APP_ID:Ljava/lang/String; = "com.android.bluetooth"

.field public static final HW_KEY_COMP_ID:Ljava/lang/String; = "Bluetooth"

.field public static final HW_KEY_COMP_MANUFACTURE:Ljava/lang/String; = "sec"

.field public static final HW_KEY_COMP_VER:Ljava/lang/String; = "0.0"

.field public static final HW_KEY_FEATURE:Ljava/lang/String; = "BTHW"

.field public static final HW_KEY_HIT_TYPE:Ljava/lang/String; = "ph"

.field public static final HW_KEY_TYPE:I = 0x0

.field static final LE_BIGDATA_VERSION:D = 1.6

.field static final MAJOR_DEVICE_CLASS_AUDIO_VIDEO:I = 0x400

.field static final MAJOR_DEVICE_CLASS_COMPUTER:I = 0x100

.field static final MAJOR_DEVICE_CLASS_PHONE:I = 0x200

.field static final MESSAGE_GET_REMOTE_INFO:I = 0x2

.field static final MESSAGE_INSERT_LE_ABUSE_CONN_LOG:I = 0x4

.field static final MESSAGE_INSERT_LE_SCAN_INFO_LOG:I = 0x3

.field static final MESSAGE_INSERT_LOG:I = 0x1

.field static final MINOR_DEVICE_CLASS_WEARABLE_HEADSET_DEVICE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothDataManager"

.field public static firmwareVersion:Ljava/lang/String;

.field private static lesiBGAppRate:F

.field private static lesiBatchRate:F

.field private static lesiIntermediateFilterRate:F

.field private static lesiIntermediateNonFilterRate:F

.field private static lesiOnBothRate:F

.field private static lesiOnFoundRate:F

.field private static lesiOnLostRate:F

.field public static localLmpSubversion:I

.field public static localLmpVersion:I

.field public static localManufacturer:I

.field static nameFromProperty:Ljava/lang/String;

.field static pending:I

.field public static remoteAddresstype:I

.field public static remoteCod:I

.field public static remoteConnectionInterval:I

.field public static remoteDeviceName:Ljava/lang/String;

.field public static remoteDevicetype:I

.field public static remoteLLFeature:I

.field public static remoteLLFeatureBit:[C

.field public static remoteLinktype:I

.field public static remoteLmpSubversion:I

.field public static remoteLmpversion:I

.field public static remoteManufacturer:I

.field public static remoteOui:Ljava/lang/String;

.field public static remotePairingResponseAuth:I

.field public static remotePairingResponseOob:I

.field public static remoteRole:I

.field public static remoteSmpFailReason:I

.field public static remoteWearable:I

.field static update:Z


# instance fields
.field adapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mHandler:Landroid/os/Handler;

.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/bt/data/BluetoothDataManager;II[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/bt/data/BluetoothDataManager;->getRemoteInfo(II[B)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    new-instance v0, Lcom/samsung/bt/data/BluetoothDataManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/bt/data/BluetoothDataManager$1;-><init>(Lcom/samsung/bt/data/BluetoothDataManager;)V

    iput-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    sput-boolean v2, Lcom/samsung/bt/data/BluetoothDataManager;->update:Z

    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    invoke-direct {p0}, Lcom/samsung/bt/data/BluetoothDataManager;->initRemoteInfo()V

    invoke-direct {p0}, Lcom/samsung/bt/data/BluetoothDataManager;->initRemoteBLEInfo()V

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->localManufacturer:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpVersion:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpSubversion:I

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->firmwareVersion:Ljava/lang/String;

    return-void
.end method

.method private getLLFeatureBitInfo()V
    .locals 5

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeature:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeature:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    if-ge v0, v1, :cond_1

    sget-object v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    const/16 v4, 0x30

    aput-char v4, v3, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getRemoteInfo(II[B)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "BluetoothDataManager :: Get Remote Device Information!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "getRemoteInfo :: adapterService is NULL!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-nez p3, :cond_4

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "getRemoteInfo :: address is NULL!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    sput-boolean v3, Lcom/samsung/bt/data/BluetoothDataManager;->update:Z

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1, p3}, Lcom/android/bluetooth/btservice/AdapterService;->getDevicePropertiesNative([B)Z

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getOuiStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteOui:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "Sent Delayed Message Print INFO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private getUartErrorInfo()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string/jumbo v5, "ro.bluetooth.tty"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string/jumbo v4, "NONE"

    :cond_1
    :goto_0
    const-string/jumbo v5, "BluetoothDataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getUartErrorInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    const-string/jumbo v5, "/sys/class/tty/%s/device/error_cnt"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :cond_3
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    throw v5

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v1, v2

    goto :goto_2
.end method

.method private handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothDataManager"

    const-string/jumbo v1, "BluetoothDataManager :: handleSendBroadcastToHWParam :: adapterService is NULL!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSendBroadcastToHWParam(), feat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hitType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string/jumbo v2, "Bluetooth"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string/jumbo v7, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, "com.android.bluetooth"

    const/4 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-boolean v0, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothDataManager"

    const-string/jumbo v1, "handleSendBroadcastToHWParam() mSemHqmManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initLeScanInfo()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/bt/data/BluetoothDataManager;->lesiBatchRate:F

    sput v0, Lcom/samsung/bt/data/BluetoothDataManager;->lesiIntermediateFilterRate:F

    sput v0, Lcom/samsung/bt/data/BluetoothDataManager;->lesiIntermediateNonFilterRate:F

    sput v0, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnFoundRate:F

    sput v0, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnLostRate:F

    sput v0, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnBothRate:F

    sput v0, Lcom/samsung/bt/data/BluetoothDataManager;->lesiBGAppRate:F

    return-void
.end method

.method private initRemoteBLEInfo()V
    .locals 2

    const/4 v1, -0x1

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDevicetype:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteAddresstype:I

    const/16 v0, 0x27

    sput v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteConnectionInterval:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseOob:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseAuth:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteSmpFailReason:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeature:I

    return-void
.end method

.method private initRemoteInfo()V
    .locals 2

    const/4 v1, -0x1

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteOui:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDeviceName:Ljava/lang/String;

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteManufacturer:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpversion:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpSubversion:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLinktype:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteRole:I

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->remoteWearable:I

    return-void
.end method


# virtual methods
.method adjustInvalidValues()V
    .locals 6

    const/16 v5, 0xff

    const/16 v4, 0xf

    const v3, 0xffff

    const/4 v2, -0x1

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->localManufacturer:I

    if-ltz v0, :cond_0

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->localManufacturer:I

    if-le v0, v3, :cond_1

    :cond_0
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->localManufacturer:I

    :cond_1
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpVersion:I

    if-ltz v0, :cond_2

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpVersion:I

    if-le v0, v5, :cond_3

    :cond_2
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpVersion:I

    :cond_3
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpSubversion:I

    if-ltz v0, :cond_4

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpSubversion:I

    if-le v0, v3, :cond_5

    :cond_4
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpSubversion:I

    :cond_5
    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->firmwareVersion:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->firmwareVersion:Ljava/lang/String;

    :cond_6
    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteOui:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteOui:Ljava/lang/String;

    :cond_7
    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDeviceName:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDeviceName:Ljava/lang/String;

    :cond_8
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteManufacturer:I

    if-ltz v0, :cond_9

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteManufacturer:I

    if-le v0, v3, :cond_a

    :cond_9
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteManufacturer:I

    :cond_a
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpversion:I

    if-ltz v0, :cond_b

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpversion:I

    if-le v0, v5, :cond_c

    :cond_b
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpversion:I

    :cond_c
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpSubversion:I

    if-ltz v0, :cond_d

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpSubversion:I

    if-le v0, v3, :cond_e

    :cond_d
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpSubversion:I

    :cond_e
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    if-ltz v0, :cond_f

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    const v1, 0xffffff

    if-le v0, v1, :cond_10

    :cond_f
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    :cond_10
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLinktype:I

    if-ltz v0, :cond_11

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLinktype:I

    if-le v0, v4, :cond_12

    :cond_11
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLinktype:I

    :cond_12
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteRole:I

    if-ltz v0, :cond_13

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteRole:I

    if-le v0, v4, :cond_14

    :cond_13
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteRole:I

    :cond_14
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteWearable:I

    if-ltz v0, :cond_15

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteWearable:I

    if-le v0, v5, :cond_16

    :cond_15
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteWearable:I

    :cond_16
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDevicetype:I

    if-ltz v0, :cond_17

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDevicetype:I

    if-le v0, v4, :cond_18

    :cond_17
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDevicetype:I

    :cond_18
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteAddresstype:I

    if-ltz v0, :cond_19

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteAddresstype:I

    if-le v0, v4, :cond_1a

    :cond_19
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteAddresstype:I

    :cond_1a
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteConnectionInterval:I

    if-ltz v0, :cond_1b

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteConnectionInterval:I

    if-le v0, v3, :cond_1c

    :cond_1b
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteConnectionInterval:I

    :cond_1c
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseOob:I

    if-lt v0, v2, :cond_1d

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseOob:I

    if-le v0, v3, :cond_1e

    :cond_1d
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseOob:I

    :cond_1e
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseAuth:I

    if-ltz v0, :cond_1f

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseAuth:I

    if-le v0, v3, :cond_20

    :cond_1f
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseAuth:I

    :cond_20
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteSmpFailReason:I

    if-lt v0, v2, :cond_21

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteSmpFailReason:I

    if-le v0, v3, :cond_22

    :cond_21
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteSmpFailReason:I

    :cond_22
    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeature:I

    if-lt v0, v2, :cond_23

    sget v0, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeature:I

    if-le v0, v3, :cond_24

    :cond_23
    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeature:I

    :cond_24
    return-void
.end method

.method insertLeAbuseConnLog(ILjava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "BluetoothDataManager :: insertLeAbuseConnLog :: adapterService is NULL!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "app_id"

    const-string/jumbo v8, "com.android.bluetooth"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "feature"

    const-string/jumbo v8, "LEAC"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LO_MUA\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LO_MUC\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"RE_SFR\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"RE_NAM\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"RE_PRO\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"RE_PRA\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LO_LMP\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LO_MUA\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_MUC\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"RE_SFR\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"RE_NAM\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"RE_PRO\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"RE_PRA\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LO_LMP\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "LEAC"

    const-string/jumbo v8, "ph"

    invoke-direct {p0, v7, v8, v4}, Lcom/samsung/bt/data/BluetoothDataManager;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "BluetoothDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[BIGDATA] insertLeAbuseConnLog() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v7, "extra"

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "data"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.providers.context"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BluetoothDataManager -- LE ABUSE CONN INFO : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "Failed to send intent to ContextFramework"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertLeAbuseScanLog(JILjava/lang/String;)V
    .locals 11

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "BluetoothDataManager :: insertLeAbuseScanLog :: adapterService is NULL!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "app_id"

    const-string/jumbo v8, "com.android.bluetooth"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "feature"

    const-string/jumbo v8, "LEAS"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_APK\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_ATM\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_ACT\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_APK\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_ATM\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_ACT\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "LEAS"

    const-string/jumbo v8, "sm"

    invoke-direct {p0, v7, v8, v4}, Lcom/samsung/bt/data/BluetoothDataManager;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "BluetoothDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[BIGDATA] insertLeAbuseScanLog() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v7, "extra"

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "data"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.providers.context"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BluetoothDataManager -- LE ABUSE SCAN INFO : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "Failed to send intent to ContextFramework"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertLeAppInfo(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 10

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "BluetoothDataManager :: insertLeAppInfo :: adapterService is NULL!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "app_id"

    const-string/jumbo v8, "com.android.bluetooth"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "feature"

    const-string/jumbo v8, "LEAI"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LA_TYP\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LA_NAM\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LA_INT\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LA_LNG\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LA_TYP\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LA_NAM\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_INT\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_LNG\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "LEAI"

    const-string/jumbo v8, "ph"

    invoke-direct {p0, v7, v8, v4}, Lcom/samsung/bt/data/BluetoothDataManager;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "BluetoothDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[BIGDATA] insertLeAppInfo() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v7, "extra"

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "data"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.providers.context"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BluetoothDataManager -- LE APP INFO : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "Failed to send intent to ContextFramework"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertLeConnCountLog(I)V
    .locals 10

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "BluetoothDataManager :: insertLeConnCountLog :: adapterService is NULL!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "app_id"

    const-string/jumbo v8, "com.android.bluetooth"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "feature"

    const-string/jumbo v8, "LECC"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LO_MCC\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_MCC\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "LECC"

    const-string/jumbo v8, "sm"

    invoke-direct {p0, v7, v8, v4}, Lcom/samsung/bt/data/BluetoothDataManager;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "BluetoothDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[BIGDATA] insertLeConnCountLog() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v7, "extra"

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "data"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.providers.context"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BluetoothDataManager -- LE CONNECTION COUNT INFO : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "Failed to send intent to ContextFramework"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method insertLeScanLog(IJ)V
    .locals 10

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "BluetoothDataManager :: insertLeScanLog :: adapterService is NULL!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "app_id"

    const-string/jumbo v8, "com.android.bluetooth"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "feature"

    const-string/jumbo v8, "LESI"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_CNT\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_SRC\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_BSC\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiBatchRate:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_IMF\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiIntermediateFilterRate:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_INF\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiIntermediateNonFilterRate:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_FSF\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnFoundRate:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_FSL\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnLostRate:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_FSB\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnBothRate:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LS_BGS\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiBGAppRate:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\"LB_VER\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "1.6\","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_CNT\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_SRC\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_BSC\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiBatchRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_IMF\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiIntermediateFilterRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_INF\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiIntermediateNonFilterRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_FSF\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnFoundRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_FSL\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnLostRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_FSB\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnBothRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\"LE_BGS\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/bt/data/BluetoothDataManager;->lesiBGAppRate:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "LESI"

    const-string/jumbo v8, "sm"

    invoke-direct {p0, v7, v8, v4}, Lcom/samsung/bt/data/BluetoothDataManager;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/bt/data/BluetoothDataManager;->initLeScanInfo()V

    sget-boolean v7, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "BluetoothDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[BIGDATA] insertLeScanLog() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v7, "extra"

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "data"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.providers.context"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BluetoothDataManager -- LE SCAN INFO : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v7, "BluetoothDataManager"

    const-string/jumbo v8, "Failed to send intent to ContextFramework"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method insertLog(II)V
    .locals 19

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothDataManager"

    const-string/jumbo v4, "BluetoothDataManager :: insertLog :: adapterService is NULL!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/bt/data/BluetoothDataManager;->update:Z

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    sget-boolean v3, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BluetoothDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pending : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/bt/data/BluetoothDataManager;->adjustInvalidValues()V

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "app_id"

    const-string/jumbo v4, "com.android.bluetooth"

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "feature"

    const-string/jumbo v4, "BERI"

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\"LO_MFN\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->localManufacturer:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"LO_LMP\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpVersion:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"LO_SUB\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpSubversion:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"LO_FWV\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/bt/data/BluetoothDataManager;->firmwareVersion:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "\"RE_OUI\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteOui:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_NAM\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    and-int/lit16 v14, v3, 0x1f00

    const/16 v3, 0x100

    if-eq v14, v3, :cond_3

    const/16 v3, 0x200

    if-ne v14, v3, :cond_8

    :cond_3
    const-string/jumbo v3, "Personal Device\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v3, 0x4

    move/from16 v0, p1

    if-eq v0, v3, :cond_9

    const-string/jumbo v3, "\"RE_MFN\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteManufacturer:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_LMP\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpversion:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_SUB\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpSubversion:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_COD\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_LTY\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLinktype:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_ROL\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteRole:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_WEA\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteWearable:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    packed-switch p1, :pswitch_data_0

    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v3, "BERI"

    const-string/jumbo v4, "ph"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/bt/data/BluetoothDataManager;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lcom/samsung/bt/data/BluetoothDataManager;->initRemoteInfo()V

    sget-boolean v3, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "BluetoothDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertLog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v3, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v15, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "data"

    invoke-virtual {v13, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.providers.context"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    const/16 v3, 0xd2

    move/from16 v0, p2

    if-lt v0, v3, :cond_6

    const/16 v3, 0xe1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    :cond_6
    const-string/jumbo v3, "BluetoothDataManager"

    const-string/jumbo v4, "Call QmBigDataModule API additionally"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "HqmManagerService"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SemHqmManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"ERROR_REASON\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\"UART\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/samsung/bt/data/BluetoothDataManager;->getUartErrorInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "BluetoothDataManager"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a

    const-string/jumbo v4, "Bluetooth"

    const-string/jumbo v5, "BTHW"

    const-string/jumbo v6, "ph"

    const-string/jumbo v7, "0.0"

    const-string/jumbo v8, "sec"

    const-string/jumbo v9, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, "com.android.bluetooth"

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BluetoothDataManager -- CONNECTION INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :cond_8
    sget-object v3, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDeviceName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v3, "\"RE_MFN\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_LMP\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_SUB\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_COD\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_LTY\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_ROL\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"RE_WEA\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_0
    const-string/jumbo v3, "\"CO_CFR\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"CO_ADR\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"CO_HER\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_1
    const-string/jumbo v3, "\"CO_CFR\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"CO_ADR\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"CO_HER\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_2
    const-string/jumbo v3, "\"CO_CFR\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"CO_ADR\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\","

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\"CO_HER\":\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :catch_0
    move-exception v16

    const-string/jumbo v3, "BluetoothDataManager"

    const-string/jumbo v4, "Failed to send intent to ContextFramework"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v3, "BluetoothDataManager"

    const-string/jumbo v4, "Failed to call QmBigDataModule API"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insertLogforBLE(II)V
    .locals 16

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v12, :cond_1

    sget-boolean v12, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "BluetoothDataManager"

    const-string/jumbo v13, "BluetoothDataManager :: insertLogforBLE :: adapterService is NULL!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v6, ""

    const/4 v12, 0x0

    sput-boolean v12, Lcom/samsung/bt/data/BluetoothDataManager;->update:Z

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    add-int/lit8 v12, v12, -0x1

    sput v12, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    sget-boolean v12, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "BluetoothDataManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pending : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/bt/data/BluetoothDataManager;->adjustInvalidValues()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/bt/data/BluetoothDataManager;->getLLFeatureBitInfo()V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "app_id"

    const-string/jumbo v13, "com.android.bluetooth"

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\"LB_VER\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "1.6\","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_7

    if-eqz p2, :cond_7

    const-string/jumbo v6, "LEAC"

    const-string/jumbo v12, "feature"

    const-string/jumbo v13, "LEAC"

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "\"LO_MUA\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LE_MUC\":\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LO_MUC\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_SFR\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteSmpFailReason:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_NAM\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    and-int/lit16 v3, v12, 0x1f00

    const/16 v12, 0x100

    if-eq v3, v12, :cond_3

    const/16 v12, 0x200

    if-ne v3, v12, :cond_6

    :cond_3
    const-string/jumbo v12, "Personal Device\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v12, "\"RE_PRO\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseOob:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_PRA\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseAuth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LO_LMP\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpVersion:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v12, "ph"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v8}, Lcom/samsung/bt/data/BluetoothDataManager;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "{"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v12, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v12, :cond_4

    const-string/jumbo v12, "BluetoothDataManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "insertLogforBLE : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/bt/data/BluetoothDataManager;->initRemoteInfo()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/bt/data/BluetoothDataManager;->initRemoteBLEInfo()V

    const-string/jumbo v12, "extra"

    invoke-virtual {v4, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v12

    const-string/jumbo v13, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "data"

    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.providers.context"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/bt/data/BluetoothDataManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v12}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "BluetoothDataManager -- CONNECTION INFO : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :cond_6
    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDeviceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_a

    const-string/jumbo v6, "LECI"

    const-string/jumbo v12, "feature"

    const-string/jumbo v13, "LECI"

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "\"LO_LMP\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpVersion:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LO_FWV\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_NAM\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    and-int/lit16 v3, v12, 0x1f00

    const/16 v12, 0x100

    if-eq v3, v12, :cond_8

    const/16 v12, 0x200

    if-ne v3, v12, :cond_9

    :cond_8
    const-string/jumbo v12, "Personal Device\","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string/jumbo v12, "\"RE_LTY\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLinktype:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_DTY\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDevicetype:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_ADT\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteAddresstype:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_COD\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_OUI\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteOui:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_CIT\":\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_CIV\":\""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteConnectionInterval:I

    int-to-double v12, v12

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v12, v14

    double-to-float v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_PRO\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseOob:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_PRA\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseAuth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_DSR\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"RE_LLF\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeature:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LF_ENC\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    const/4 v13, 0x0

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LF_CPR\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    const/4 v13, 0x1

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LF_ERI\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    const/4 v13, 0x2

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LF_SIF\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    const/4 v13, 0x3

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LF_PNG\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    const/4 v13, 0x4

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LF_EXT\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    const/4 v13, 0x5

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LF_PRV\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    const/4 v13, 0x6

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\"LF_ESF\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeatureBit:[C

    const/4 v13, 0x7

    aget-char v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    sget-object v12, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDeviceName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_a
    return-void

    :catch_0
    move-exception v5

    const-string/jumbo v12, "BluetoothDataManager"

    const-string/jumbo v13, "Failed to send intent to ContextFramework"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public insertLogforBOCI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.bluetooth"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ph"

    invoke-direct {p0, p2, v2, p3}, Lcom/samsung/bt/data/BluetoothDataManager;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v2, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Send survey info. app_id: com.android.bluetooth, feature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public notifyBondFailReason([BI)V
    .locals 4

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "BluetoothDataManager :: notifyBondFailReason() is called!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    if-lez v1, :cond_2

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "Another messege is on process. Send Delayed Message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    :goto_0
    return-void

    :cond_2
    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "No messege is on process. Send Message Now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    goto :goto_0
.end method

.method public notifyConnectionFailReason([BI)V
    .locals 4

    const/4 v3, 0x2

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "BluetoothDataManager :: notifyConnectionFailReason() is called!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    if-lez v1, :cond_2

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "Another messege is on process. Send Delayed Message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    :goto_0
    return-void

    :cond_2
    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "No messege is on process. Send Message Now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    goto :goto_0
.end method

.method public notifyDisconnectReason([BI)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "BluetoothDataManager :: notifyDisconnectReason() is called!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    if-lez v1, :cond_2

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Another messege is on process. Send Delayed Message. Pending : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    mul-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    :goto_0
    return-void

    :cond_2
    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothDataManager"

    const-string/jumbo v2, "No messege is on process. Send Message Now"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    goto :goto_0
.end method

.method public notifyLeAbuseConnInfo(ILjava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[BIGDATA] BluetoothDataManager :: notifyLeAbuseConnInfo() mostUsedCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mostUsedApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLeScanInfo(IJ)V
    .locals 4

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[BIGDATA] BluetoothDataManager :: notifyLeScanInfo() scanCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", scanResultCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLocalErrorReason(I)V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v1, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothDataManager :: notifyLocalErrorReason() is called!!! Reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-boolean v4, Lcom/samsung/bt/data/BluetoothDataManager;->update:Z

    sget v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/bt/data/BluetoothDataManager;->pending:I

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothDataManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateLeScanInfo(Ljava/lang/String;F)V
    .locals 1

    const-string/jumbo v0, "BATCH_SCAN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->lesiBatchRate:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "FULL_SCAN_IMMEDIATE_FILTER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->lesiIntermediateFilterRate:F

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "FULL_SCAN_IMMEDIATE_NONFILTER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->lesiIntermediateNonFilterRate:F

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "FULL_SCAN_ONLOST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnLostRate:F

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "FULL_SCAN_ONFOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnFoundRate:F

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "FULL_SCAN_ONBOTH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->lesiOnBothRate:F

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "SCAN_FROM_BACKGROUND_APP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->lesiBGAppRate:F

    goto :goto_0
.end method

.method public updateLocalInfo(II)V
    .locals 3

    const-string/jumbo v0, "BluetoothDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocalInfo for int is called!!!type :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->localManufacturer:I

    goto :goto_0

    :pswitch_1
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpVersion:I

    goto :goto_0

    :pswitch_2
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->localLmpSubversion:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateLocalInfo(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "BluetoothDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateLocalInfo for String is called!!! type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "persist.bluetooth_fw_ver"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "bluetooth.fw.ver"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "persist.sys.bt.driver.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    :cond_5
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sput-object p2, Lcom/samsung/bt/data/BluetoothDataManager;->firmwareVersion:Ljava/lang/String;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->nameFromProperty:Ljava/lang/String;

    sput-object v0, Lcom/samsung/bt/data/BluetoothDataManager;->firmwareVersion:Ljava/lang/String;

    const-string/jumbo v0, "BluetoothDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "firmwareVersion from Property : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/bt/data/BluetoothDataManager;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public updateRemoteInfo(II)V
    .locals 5

    sget-boolean v2, Lcom/samsung/bt/data/BluetoothDataManager;->update:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BluetoothDataManager :: updateRemoteInfo for int is called!!! type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", val : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteManufacturer:I

    goto :goto_0

    :sswitch_1
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpversion:I

    goto :goto_0

    :sswitch_2
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLmpSubversion:I

    goto :goto_0

    :sswitch_3
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLinktype:I

    goto :goto_0

    :sswitch_4
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteRole:I

    goto :goto_0

    :sswitch_5
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    goto :goto_0

    :sswitch_6
    sget v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    and-int/lit16 v0, v2, 0x1f00

    sget v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteCod:I

    and-int/lit16 v1, v2, 0xfc

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const/16 v2, 0x400

    if-ne v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v2, 0x3

    sput v2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteWearable:I

    :goto_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/bt/data/BluetoothDataManager;->update:Z

    goto :goto_0

    :cond_2
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteWearable:I

    goto :goto_1

    :sswitch_7
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDevicetype:I

    goto :goto_0

    :sswitch_8
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteAddresstype:I

    goto :goto_0

    :sswitch_9
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteConnectionInterval:I

    goto :goto_0

    :sswitch_a
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseOob:I

    goto :goto_0

    :sswitch_b
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remotePairingResponseAuth:I

    goto :goto_0

    :sswitch_c
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteSmpFailReason:I

    goto :goto_0

    :sswitch_d
    sput p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteLLFeature:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x5 -> :sswitch_7
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x1b -> :sswitch_c
        0x1c -> :sswitch_d
        0xf1 -> :sswitch_6
    .end sparse-switch
.end method

.method public updateRemoteInfo(ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/bt/data/BluetoothDataManager;->update:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/bt/data/BluetoothDataManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothDataManager :: updateRemoteInfo for String is called!!! type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sput-object p2, Lcom/samsung/bt/data/BluetoothDataManager;->remoteDeviceName:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
