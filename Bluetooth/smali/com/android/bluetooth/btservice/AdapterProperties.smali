.class Lcom/android/bluetooth/btservice/AdapterProperties;
.super Ljava/lang/Object;
.source "AdapterProperties.java"


# static fields
.field private static final BD_ADDR_LEN:I = 0x6

.field private static final DBG:Z

.field private static final HCI_BLE_ENH_RECEIVER_TEST:I = 0x2033

.field private static final HCI_BLE_ENH_TRANSMITTER_TEST:I = 0x2034

.field private static final HCI_BLE_RECEIVER_TEST:I = 0x201d

.field private static final HCI_BLE_TEST_END:I = 0x201f

.field private static final HCI_BLE_TRANSMITTER_TEST:I = 0x201e

.field private static final HCI_GRP_BLE_CMDS:I = 0x2000

.field public static final NO_PROFILE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterProperties"

.field private static final VDBG:Z


# instance fields
.field private mA2dpLinkFeedbackSupported:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private volatile mAddress:[B

.field private volatile mBluetoothClass:I

.field private mBluetoothDisabling:Z

.field private mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mConnectionState:I

.field mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

.field private mDbfwSupported:I

.field private volatile mDiscoverableTimeout:I

.field private mDiscovering:Z

.field private mIsActivityAndEnergyReporting:Z

.field private mIsDebugLogSupported:Z

.field private mIsExtendedScanSupported:Z

.field private volatile mName:Ljava/lang/String;

.field private mNumOfAdvertisementInstancesSupported:I

.field private mNumOfOffloadedIrkSupported:I

.field private mNumOfOffloadedScanFilterSupported:I

.field private mObject:Ljava/lang/Object;

.field private mOffloadedScanResultStorageBytes:I

.field private mProfileConnectedDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mRpaOffloadSupported:Z

.field private volatile mScanMode:I

.field private mService:Lcom/android/bluetooth/btservice/AdapterService;

.field private volatile mState:I

.field private mTotNumOfTrackableAdv:I

.field private volatile mUuids:[Landroid/os/ParcelUuid;

.field private mVersSupported:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/AdapterProperties;->DBG:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDbfwSupported:I

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mA2dpLinkFeedbackSupported:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-direct {v0}, Lcom/samsung/bt/data/BluetoothDataManager;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private convertToAdapterState(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "BluetoothAdapterProperties"

    const-string/jumbo v1, "Error in convertToAdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterProperties;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    packed-switch p1, :pswitch_data_1

    return v0

    :pswitch_0
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-ne v2, v0, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_4
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-ne v2, v0, :cond_1

    :goto_2
    return v0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_5
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    if-ne v2, v0, :cond_2

    move v1, v0

    :cond_2
    return v1

    :pswitch_6
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-nez v2, :cond_3

    move v1, v0

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateProfileConnectionState(IIILandroid/bluetooth/BluetoothDevice;)V
    .locals 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x1

    move v1, p2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    if-eq p2, v8, :cond_3

    if-ne p2, v7, :cond_4

    if-eq v0, v8, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    if-ne v2, v7, :cond_5

    if-ne p3, v0, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    if-le v2, v7, :cond_7

    if-ne p3, v0, :cond_7

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v8, :cond_6

    if-ne v0, v7, :cond_0

    :cond_6
    move v1, v0

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private validateProfileConnectionState(I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method adapterPropertyChangedCallback([I[[B)V
    .locals 21

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v11, v2, :cond_4

    aget-object v19, p2, v11

    aget v18, p1, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "adapterPropertyChangedCallback with type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " len:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    packed-switch v18, :pswitch_data_0

    :pswitch_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Property change not handled in Java land:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v20

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :pswitch_1
    :try_start_1
    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.adapter.extra.LOCAL_NAME"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v14, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Name is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v20

    throw v2

    :pswitch_2
    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Address is:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Populate values"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->populateRssi()V

    goto/16 :goto_1

    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BT Class:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeFromHal(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.adapter.extra.SCAN_MODE"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v14, v4}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v14, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scan Mode:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    const/16 v4, 0x17

    if-ne v2, v4, :cond_3

    const-string/jumbo v2, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v2, "Device Visible"

    const/4 v4, 0x0

    aput-object v2, v6, v4

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x0

    const/4 v4, 0x2

    aput-object v2, v6, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "bluetoothLogForDevice"

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string/jumbo v2, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "API"

    const-string/jumbo v4, "AuditLoggerAsUser"

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "severity"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "group"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "outcome"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "component"

    const-string/jumbo v4, "AdapterProperties"

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "message"

    const-string/jumbo v4, "Setting bluetooth device as discoverable succeeded"

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userid"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->startBluetoothDisable()V

    goto/16 :goto_1

    :pswitch_5
    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, v19

    array-length v2, v0

    div-int/lit8 v17, v2, 0x6

    const/4 v2, 0x6

    new-array v8, v2, [B

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    mul-int/lit8 v2, v15, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, v19

    invoke-static {v0, v2, v8, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v8}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :pswitch_7
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Discoverable Timeout:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateFeatureSupport([B)V

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v4

    move/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Lcom/samsung/bt/data/BluetoothDataManager;->updateLocalInfo(II)V

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    move/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Lcom/samsung/bt/data/BluetoothDataManager;->updateLocalInfo(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public cleanup()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    :cond_1
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    :cond_2
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

.method discoveryStateChangeCallback(I)V
    .locals 11

    const/4 v5, 0x1

    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Callback:discoveryStateChangeCallback with state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v10

    if-nez p1, :cond_1

    :try_start_0
    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "Discovery Ended"

    const/4 v2, 0x0

    aput-object v0, v4, v2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const/4 v0, 0x0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "bluetoothLogForDevice"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v9, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v9, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_1
    if-ne p1, v5, :cond_3

    :try_start_1
    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "Discovery Started"

    const/4 v2, 0x0

    aput-object v0, v4, v2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const/4 v0, 0x0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "bluetoothLogForDevice"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v9, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v9, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit v10

    return-void
.end method

.method edrTestModeRecvCallback(III)V
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback:edrTestModeCallback with status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " packetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.adapter.action.ACTION_EDR_TEST_END_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.adapter.extra.EXTRA_EDR_PACKET_COUNTS"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v2, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    monitor-exit v4

    return-void
.end method

.method getA2dpLinkFeedbackSupported()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mA2dpLinkFeedbackSupported:I

    return v0
.end method

.method getAddress()[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    return-object v0
.end method

.method getBluetoothClass()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    return v0
.end method

.method getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 5

    const/4 v3, 0x0

    new-array v1, v3, [Landroid/bluetooth/BluetoothDevice;

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBondedDevices: length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Error retrieving bonded device array"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getConnectedDeviceList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_0
    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method getConnectionState()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    return v0
.end method

.method getDiscoverableTimeout()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getNumOfAdvertisementInstancesSupported()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    return v0
.end method

.method getNumOfOffloadedIrkSupported()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    return v0
.end method

.method getNumOfOffloadedScanFilterSupported()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    return v0
.end method

.method getOffloadedScanResultStorage()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    return v0
.end method

.method getProfileConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getProfileConnectionState(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getProfileConnectionState(I)I
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getScanMode()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    return v0
.end method

.method getState()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    return v0
.end method

.method getTotalNumOfTrackableAdvertisements()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mTotNumOfTrackableAdv:I

    return v0
.end method

.method getTxPowerPathCallback(I)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTxPowerPathCallback, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.adapter.action.ACTION_HPM_READ_TEST_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.adapter.extra.EXTRA_CURRENT_TX_POWER_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public init(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    :goto_1
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2
.end method

.method isActivityAndEnergyReportingSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    return v0
.end method

.method isDiscovering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    return v0
.end method

.method isRpaOffloadSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    return v0
.end method

.method leTestModeRecvCallback(III)V
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Callback:leTestModeCallback with status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.adapter.action.ACTION_LE_TEST_END_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.adapter.extra.EXTRA_LE_TEST_STATUS"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p2, :cond_1

    const/16 v3, 0x201f

    if-ne p1, v3, :cond_0

    const-string/jumbo v3, "android.bluetooth.adapter.extra.EXTRA_IS_LE_TEST_END"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.adapter.extra.EXTRA_LE_PACKET_COUNTS"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v2, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LE Test Failed : Status = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v4

    return-void
.end method

.method logCollectorCallback(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void
.end method

.method modelRssiValuesCallback(III)V
    .locals 2

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

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->updateModelRssiValues(III)V
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

.method onBleDisable()V
    .locals 2

    const-string/jumbo v0, "onBleDisable"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    :cond_0
    return-void
.end method

.method onBluetoothDisable()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "onBluetoothDisable()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getScanMode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscovery()Z

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    :cond_2
    return-void
.end method

.method onBluetoothReady()V
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setConnectionState(I)V

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectedDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ScanMode =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "State =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    if-nez v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit v12

    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->isDeviceWhitelisted(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    :cond_6
    :try_start_2
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    const/16 v2, 0x17

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    if-nez v0, :cond_8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isLimitedDiscoverableEnabled"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_a

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isLimitedDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_b

    const/4 v10, 0x1

    :goto_3
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_4
    if-nez v10, :cond_4

    const-string/jumbo v0, "BluetoothAdapterProperties"

    const-string/jumbo v2, "onBluetoothReady MDM: Limited Discoverable is Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    :catch_0
    move-exception v9

    :try_start_5
    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    return-void
.end method

.method onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v9

    if-nez v9, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v9

    :cond_1
    invoke-virtual {v9, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBondState(I)V

    const/16 v0, 0xc

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding bonded device:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setBondedTimeStamp(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v0, 0xa

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing bonded device:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setBondedTimeStamp(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "BluetoothAdapterProperties"

    const-string/jumbo v2, "Exception in onBondStateChanged : "

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to remove device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "Device Pairing Failed"

    const/4 v2, 0x0

    aput-object v0, v4, v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "bluetoothLogForRemote"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 10

    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendConnectionStateChange : mProfilesConnecting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mProfilesConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mProfilesDisconnecting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothAdapterProperties -- sendConnectionStateChange : mProfilesConnecting = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mProfilesConnected = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mProfilesDisconnecting = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateConnectedDeviceList(Landroid/bluetooth/BluetoothDevice;II)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateProfileConnectionState(IIILandroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->setConnectionState(I)V

    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v2

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONNECTION_STATE_CHANGE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

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

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v9

    if-eqz v8, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothAdapterProperties -- CONNECTION_STATE_CHANGE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Change to : mProfilesConnecting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mProfilesConnected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mProfilesDisconnecting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothAdapterProperties -- Change to : mProfilesConnecting = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mProfilesConnected = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", mProfilesDisconnecting = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in sendConnectionStateChange: prevState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const/4 v0, 0x3

    :try_start_1
    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "Connection Started"

    const/4 v2, 0x0

    aput-object v0, v4, v2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "bluetoothLogForDevice"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :pswitch_2
    const/4 v0, 0x3

    :try_start_2
    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "Connection Ended"

    const/4 v2, 0x0

    aput-object v0, v4, v2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "bluetoothLogForDevice"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setConnectionState(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    return-void
.end method

.method setDiscoverableTimeout(I)Z
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setManufacturerData()V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->makeManufacturerData(Landroid/content/Context;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/16 v3, 0xf1

    invoke-virtual {v1, v3, v0}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method setName(Ljava/lang/String;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setScanMode(I)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isDiscoverableEnabled"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isDiscoverableEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    :goto_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    const-string/jumbo v0, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "API"

    const-string/jumbo v2, "AuditLoggerAsUser"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "severity"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "group"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "outcome"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "component"

    const-string/jumbo v2, "AdapterProperties"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v12, :cond_4

    if-eqz v9, :cond_3

    const-string/jumbo v0, "message"

    const-string/jumbo v2, "Discoverable mode status has changed to discoverable succeeded"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v0, "userid"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    if-ne p1, v12, :cond_1

    if-eqz v9, :cond_5

    :cond_1
    :goto_3
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/Utils;->isKnoxBluetoothEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScanMode(): Bluetooth for KNOX blocked by MDM policy: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v10

    return v11

    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    :try_start_3
    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    const-string/jumbo v0, "message"

    const-string/jumbo v2, "Discoverable mode status has changed to discoverable failed Reason: MDM policy"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v0, "message"

    const-string/jumbo v2, "Discoverable mode status has changed to not discoverable succeeded"

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v0, "BluetoothAdapterProperties"

    const-string/jumbo v2, "MDM: Discoverable mode is Disabled. make scanMode to connectable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    monitor-exit v10

    return v0
.end method

.method setState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Setting state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    return-void
.end method

.method setUuids([Landroid/os/ParcelUuid;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->uuidsToByteArray([Landroid/os/ParcelUuid;)[B

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateConnectedDeviceList(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v4

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit v4

    return-void

    :pswitch_1
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_2
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateFeatureSupport([B)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mVersSupported:I

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    const/16 v0, 0x9

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    const/16 v0, 0xb

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v3, 0xa

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mTotNumOfTrackableAdv:I

    const/16 v0, 0xc

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsExtendedScanSupported:Z

    const/16 v0, 0xd

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsDebugLogSupported:Z

    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BT_PROPERTY_LOCAL_LE_FEATURES: update from BT controller mNumOfAdvertisementInstancesSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mRpaOffloadSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mNumOfOffloadedIrkSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mNumOfOffloadedScanFilterSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mOffloadedScanResultStorageBytes= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsActivityAndEnergyReporting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mVersSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mVersSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mTotNumOfTrackableAdv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mTotNumOfTrackableAdv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsExtendedScanSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsExtendedScanSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsDebugLogSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsDebugLogSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v1, v2

    goto/16 :goto_3
.end method

.method vscGetVendorCapabilitiesCallback([B)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-byte v0, p1, v2

    if-nez v0, :cond_2

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDbfwSupported:I

    const/16 v0, 0x8

    aget-byte v0, p1, v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mA2dpLinkFeedbackSupported:I

    const-string/jumbo v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[VendorCapa] : mDbfwSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDbfwSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , mA2dpLinkFeedbackSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mA2dpLinkFeedbackSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDbfwSupported:I

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mA2dpLinkFeedbackSupported:I

    const-string/jumbo v0, "BluetoothAdapterProperties"

    const-string/jumbo v1, "[VendorCapa] : not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
