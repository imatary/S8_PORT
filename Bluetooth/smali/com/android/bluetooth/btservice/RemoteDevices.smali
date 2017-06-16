.class final Lcom/android/bluetooth/btservice/RemoteDevices;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/RemoteDevices$1;,
        Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    }
.end annotation


# static fields
.field protected static final BLE_ADDR_TYPE_MASK:B = -0x40t

.field protected static final BLE_ADDR_TYPE_OFFSET:I = 0x0

.field protected static final BLE_ADDR_TYPE_PUBLIC:I = 0x0

.field protected static final BLE_ADDR_TYPE_RANDOM:I = 0x1

.field protected static final BLE_ADDR_TYPE_RANDOM_NON_RESOLVABLE:I = 0x2

.field protected static final BLE_ADDR_TYPE_RANDOM_RESOLVABLE:I = 0x3

.field protected static final BLE_MSB_RANDOM_NON_RESOLVABLE:I = 0x0

.field protected static final BLE_MSB_RANDOM_RESOLVABLE:I = 0x40

.field private static final DBG:Z = false

.field protected static final MANUFACTURER_DEVICE_ID_MAX:I = 0xff

.field protected static final MANUFACTURER_DEVICE_ID_MIN:I = 0x1

.field protected static final MANUFACTURER_OFFSET_OLD_DEVICE_ID:I = 0x7

.field protected static final MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I = 0xa

.field protected static final MANUFACTURER_OFFSET_OLD_SERVICE_ID:I = 0x5

.field protected static final MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I = 0x7

.field protected static final MANUFACTURER_OFFSET_SS_LE_FEATURES:I = 0x8

.field protected static final MANUFACTURER_OFFSET_SS_SERVICE_ID:I = 0x5

.field protected static final MANUFACTURER_SS_LE_FEATURES_ASSOCIATED_SERVICE_DATA:B = 0x10t

.field protected static final MANUFACTURER_SS_LE_FEATURES_CONNECTIVITY:B = 0x8t

.field protected static final MANUFACTURER_SS_LE_FEATURES_DEVICE:B = 0x4t

.field protected static final MANUFACTURER_SS_LE_FEATURES_PACKET_NUMBER:B = 0x1t

.field protected static final MANUFACTURER_SS_LE_FEATURES_PROXIMITY:B = 0x2t

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothRemoteDevices"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static mSdpTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mObject:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-direct {v0}, Lcom/samsung/bt/data/BluetoothDataManager;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    new-instance v0, Lcom/android/bluetooth/btservice/RemoteDevices$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$1;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    sput-object p1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private warnLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method aclStateChangeCallback(I[BI)V
    .locals 10

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v7, "aclStateChangeCallback: Device is NULL"

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v6

    const-string/jumbo v7, "BluetoothRemoteDevices"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "newState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_1
    const/4 v4, 0x0

    if-nez p3, :cond_6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_2

    const/16 v7, 0xb

    if-ne v6, v7, :cond_4

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "aclStateChangeCallback: State:Connected to Device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BluetoothRemoteDevices -- ACTION_ACL_CONNECTED, device is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :goto_1
    if-eqz v4, :cond_c

    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v7, 0x4000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v8, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v4, v8}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v7, 0xf0

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v7, 0xf

    if-eq v6, v7, :cond_5

    const/16 v7, 0xe

    if-ne v6, v7, :cond_3

    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_7

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v8, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v4, v8}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v7, 0xf0

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v7, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "android.permission.BLUETOOTH"

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    const/16 v7, 0xd

    if-ne v6, v7, :cond_a

    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_9
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "aclStateChangeCallback: State:DisConnected to Device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BluetoothRemoteDevices -- ACTION_ACL_DISCONNECTED, device is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0xf

    if-eq v6, v7, :cond_b

    const/16 v7, 0x10

    if-ne v6, v7, :cond_9

    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    if-eqz v1, :cond_e

    if-nez p3, :cond_f

    const/16 v7, 0xc

    if-eq v6, v7, :cond_d

    const/16 v7, 0xb

    if-ne v6, v7, :cond_e

    :cond_d
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setAclConnected(Z)V

    :cond_e
    :goto_5
    return-void

    :cond_f
    const/16 v7, 0xc

    if-eq v6, v7, :cond_10

    const/16 v7, 0xd

    if-ne v6, v7, :cond_e

    :cond_10
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setAclConnected(Z)V

    goto :goto_5
.end method

.method aclStateChangeCallback(I[BIII)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v5, "aclStateChangeCallback: Device is NULL."

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[1003]{000B}(28::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")(1F::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")(01::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")(20::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const/4 v4, 0x0

    if-nez p3, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "aclStateChangeCallback: State:Connected to Device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", linktype is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BluetoothRemoteDevices -- ACTION_ACL_CONNECTED, device is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :goto_0
    if-eqz v4, :cond_2

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    invoke-virtual {v4, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.bluetooth.device.extra.LINKTYPE"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v5, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v4, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v5, 0xf0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v5, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v7, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "aclStateChangeCallback: State:DisConnected to Device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BluetoothRemoteDevices -- ACTION_ACL_DISCONNECTED, device is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", reason is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", linktype is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    if-eqz v1, :cond_3

    if-ne p4, v9, :cond_3

    if-nez p3, :cond_5

    invoke-virtual {v1, v9}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setAclConnected(Z)V

    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    sget-object v5, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget v5, Lcom/android/bluetooth/btservice/AdapterService;->mOutgoing:I

    if-lez v5, :cond_6

    if-nez p5, :cond_6

    iget-object v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-virtual {v5, p2, p5}, Lcom/samsung/bt/data/BluetoothDataManager;->notifyConnectionFailReason([BI)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    invoke-virtual {v1, v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setAclConnected(Z)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-virtual {v5, p2, p5}, Lcom/samsung/bt/data/BluetoothDataManager;->notifyDisconnectReason([BI)V

    goto :goto_3
.end method

.method addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set6(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method cleanup()V
    .locals 1

    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method deviceFoundCallback([B)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deviceFoundCallback: Remote Address is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Device Properties is null for Device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v5, "Device Properties is null for Device: null"

    invoke-direct {p0, v5}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.bluetooth.device.action.FOUND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v5, "android.bluetooth.device.extra.CLASS"

    new-instance v6, Landroid/bluetooth/BluetoothClass;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v5, "android.bluetooth.device.extra.RSSI"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get11(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    const-string/jumbo v5, "android.bluetooth.device.extra.NAME"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get8(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.bluetooth.device.extra.APPEARANCE"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.bluetooth.device.extra.MANUFACTURER_DATA"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    sget-object v5, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-array v6, v11, [Ljava/lang/String;

    const-string/jumbo v7, "android.permission.BLUETOOTH"

    aput-object v7, v6, v9

    const-string/jumbo v7, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v7, v6, v10

    invoke-virtual {v5, v4, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    const/16 v5, 0xf0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v5, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-array v6, v11, [Ljava/lang/String;

    const-string/jumbo v7, "android.permission.BLUETOOTH"

    aput-object v7, v6, v9

    const-string/jumbo v7, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v7, v6, v10

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastMultiplePermissionsAsUser(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method devicePropertyChangedCallback([B[I[[B)V
    .locals 31

    invoke-virtual/range {p0 .. p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v8

    invoke-virtual/range {p0 .. p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    :goto_0
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_10

    aget v20, p2, v15

    aget-object v21, p3, v15

    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    if-gtz v23, :cond_4

    :cond_0
    if-eqz v6, :cond_3

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "devicePropertyChangedCallback: bdDevice: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", value is empty for type: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    :goto_2
    const/16 v23, 0xf1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    :cond_1
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v8

    goto :goto_0

    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "devicePropertyChangedCallback: bdDevice: null, value is empty for type: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    sparse-switch v20, :sswitch_data_0

    :cond_5
    :goto_4
    monitor-exit v24

    goto :goto_3

    :sswitch_0
    :try_start_0
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set10(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v23, "android.bluetooth.device.action.NAME_CHANGED"

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v23, "android.bluetooth.device.extra.NAME"

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get8(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v23, 0x4000000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v23, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v25, "android.permission.BLUETOOTH"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v23, 0xf0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    sget-object v23, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v25, Landroid/os/UserHandle;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v26, "android.permission.BLUETOOTH"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v23

    monitor-exit v24

    throw v23

    :cond_6
    :try_start_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Remote Device name is: "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get8(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get8(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(ILjava/lang/String;)V

    goto/16 :goto_4

    :sswitch_1
    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_7

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v23

    move/from16 v3, v27

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    :cond_7
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_2
    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Remote Address is:"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_3
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set4(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v23, "android.bluetooth.device.action.CLASS_CHANGED"

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v23, "android.bluetooth.device.extra.CLASS"

    new-instance v25, Landroid/bluetooth/BluetoothClass;

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v23, 0x4000000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v23, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v25, "android.permission.BLUETOOTH"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v23, 0xf0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    sget-object v23, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v25, Landroid/os/UserHandle;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v26, "android.permission.BLUETOOTH"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Remote class is:"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    goto/16 :goto_4

    :sswitch_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    div-int/lit8 v18, v23, 0x10

    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set15(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[Landroid/os/ParcelUuid;)[Landroid/os/ParcelUuid;

    if-eqz v6, :cond_9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "BluetoothRemoteDevices -- AbstractionLayer.BT_PROPERTY_UUIDS, device is "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v25, "  , "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get13(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/Utils;->uuidsToString([Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :cond_9
    sget-object v23, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual/range {v23 .. v23}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v23

    const/16 v25, 0xc

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    :sswitch_5
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get5(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    goto/16 :goto_4

    :sswitch_6
    const/16 v23, 0x0

    aget-byte v23, v21, v23

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set13(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S

    goto/16 :goto_4

    :sswitch_7
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToShort([B)S

    move-result v23

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set3(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Remote appearance is:"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get2(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_8
    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set9(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v25

    const/16 v23, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    :goto_7
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    aget-byte v7, v25, v23

    const-string/jumbo v27, "%02X "

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    :cond_a
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Remote manufacturer data is:"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    const/16 v22, 0x0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v23

    const/16 v25, 0x5

    aget-byte v23, v23, v25

    if-nez v23, :cond_c

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v23

    const/16 v25, 0x6

    aget-byte v23, v23, v25

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v23

    const/16 v25, 0x8

    aget-byte v23, v23, v25

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    goto/16 :goto_4

    :cond_c
    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v23

    const/16 v25, 0x5

    aget-byte v23, v23, v25

    const/16 v25, 0x9

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v23

    const/16 v25, 0x7

    aget-byte v23, v23, v25

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v23

    const/16 v25, 0x8

    aget-byte v23, v23, v25

    and-int/lit8 v23, v23, 0x10

    const/16 v25, 0x10

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    const/16 v13, 0xa

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v23

    const/16 v25, 0x8

    aget-byte v9, v23, v25

    const/4 v10, 0x0

    :goto_9
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v10, v0, :cond_d

    const/16 v23, 0x1

    shl-int v23, v23, v10

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v17, v0

    and-int v23, v9, v17

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    :goto_a
    :pswitch_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :pswitch_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :pswitch_2
    add-int/lit8 v13, v13, 0x2

    goto :goto_a

    :pswitch_3
    add-int/lit8 v13, v13, 0x6

    goto :goto_a

    :pswitch_4
    add-int/lit8 v13, v13, 0x12

    goto :goto_a

    :cond_d
    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get7(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[B

    move-result-object v23

    add-int/lit8 v25, v13, 0x1

    aget-byte v23, v23, v25

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    goto/16 :goto_8

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    goto/16 :goto_4

    :sswitch_a
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v23

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    const/16 v23, 0x0

    aget-byte v23, p1, v23

    and-int/lit8 v5, v23, -0x40

    if-nez v5, :cond_f

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    :cond_e
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get0(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    goto/16 :goto_4

    :cond_f
    const/16 v23, 0x40

    move/from16 v0, v23

    if-ne v5, v0, :cond_e

    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set1(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    goto :goto_b

    :sswitch_b
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set5(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get4(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    goto/16 :goto_4

    :sswitch_c
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set12(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get10(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    goto/16 :goto_4

    :sswitch_d
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set11(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get9(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    goto/16 :goto_4

    :sswitch_e
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set14(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get12(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V

    goto/16 :goto_4

    :sswitch_f
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v8, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-set8(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v23, v0

    invoke-static {v8}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get6(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateRemoteInfo(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_10
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0xa -> :sswitch_1
        0xb -> :sswitch_6
        0x12 -> :sswitch_9
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_c
        0x1a -> :sswitch_d
        0x1b -> :sswitch_e
        0x1c -> :sswitch_f
        0xf0 -> :sswitch_7
        0xf1 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method fetchUuids(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteServicesNative([B)Z

    return-void
.end method

.method getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    return-object v1
.end method

.method getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v1

    if-nez p1, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isB1(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "isB1: device is NULL"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "isB1: name is NULL"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GALAXY GEAR ("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "isB1: device is B1"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method monitorRawRssiCallback([BII)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "monitorRawRssiCallback: Device is NULL"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "monitorRawRssiCallback: Remote Address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", rssi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Value of threshold ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget v3, v3, Lcom/android/bluetooth/btservice/AdapterService;->mRssiThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget v2, v2, Lcom/android/bluetooth/btservice/AdapterService;->mRssiThreshold:I

    if-gt p2, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->isB1(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Broadcasting out range alert for B1"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.bluetooth.device.action.RSSI_OUT_OF_RANGE_ALERT_FOR_GEAR1"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {v2, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "Broadcasting out range alert"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.bluetooth.device.action.RSSI_OUT_OF_RANGE_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget v2, v2, Lcom/android/bluetooth/btservice/AdapterService;->mRssiNearThreshold:I

    if-lt p2, v2, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->isB1(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "Broadcasting in range alert for B1"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.bluetooth.device.action.RSSI_IN_RANGE_ALERT_FOR_GEAR1"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {v2, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "Broadcasting in range alert"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.bluetooth.device.action.RSSI_IN_RANGE_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method readRawRssiCallback([BII)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "readRawRssiCallback: Device is NULL"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readRawRssiCallback: Remote Address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", rssi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    if-nez p3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.bluetooth.device.action.RSSI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "com.sec.android.permission.SMART_UNLOCK"

    invoke-virtual {v2, v1, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "Read Raw RSSI Failed"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.bluetooth.device.action.UUID"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "android.bluetooth.device.extra.UUID"

    if-nez v3, :cond_0

    move-object v4, v5

    :goto_0
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/btservice/AdapterService;->initProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v2, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v4, 0xf0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get13(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->-get13(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;

    move-result-object v5

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->mSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateUuids(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
