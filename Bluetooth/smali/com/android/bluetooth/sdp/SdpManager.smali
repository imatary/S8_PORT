.class public Lcom/android/bluetooth/sdp/SdpManager;
.super Ljava/lang/Object;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sdp/SdpManager$1;,
        Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;,
        Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final MESSAGE_SDP_INTENT:I = 0x2

.field public static final OPP_FORMAT_ALL:[B

.field public static final OPP_FORMAT_ANY_TYPE_OF_OBJ:B = -0x1t

.field public static final OPP_FORMAT_ICAL20:B = 0x4t

.field public static final OPP_FORMAT_VCAL10:B = 0x3t

.field public static final OPP_FORMAT_VCARD21:B = 0x1t

.field public static final OPP_FORMAT_VCARD30:B = 0x2t

.field public static final OPP_FORMAT_VMESSAGE:B = 0x6t

.field public static final OPP_FORMAT_VNOTE:B = 0x5t

.field public static final PBAP_REPO_FAVORITES:B = 0x8t

.field public static final PBAP_REPO_LOCAL:B = 0x1t

.field public static final PBAP_REPO_SIM:B = 0x2t

.field public static final PBAP_REPO_SPEED_DAIL:B = 0x4t

.field private static final SDP_INTENT_DELAY:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "SdpManager"

.field private static final V:Z

.field static mSearchInProgress:Z

.field static mTrackerLock:Ljava/lang/Object;

.field private static sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static sNativeAvailable:Z

.field private static sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

.field static sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/sdp/SdpManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/sdp/SdpManager;Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->OPP_FORMAT_ALL:[B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->classInitNative()V

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        -0x1t
    .end array-data
.end method

.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sdp/SdpManager$1;-><init>(Lcom/android/bluetooth/sdp/SdpManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/sdp/SdpManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-direct {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;-><init>()V

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    sput-object p1, Lcom/android/bluetooth/sdp/SdpManager;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->initializeNative()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method public static getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    return-object v0
.end method

.method public static init(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/sdp/SdpManager;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sdp/SdpManager;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    sput-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    return-object v0
.end method

.method private native initializeNative()V
.end method

.method private native sdpCreateMapMasRecordNative(Ljava/lang/String;IIIIII)I
.end method

.method private native sdpCreateMapMnsRecordNative(Ljava/lang/String;IIII)I
.end method

.method private native sdpCreateOppOpsRecordNative(Ljava/lang/String;III[B)I
.end method

.method private native sdpCreatePbapPseRecordNative(Ljava/lang/String;IIIII)I
.end method

.method private native sdpCreateSapsRecordNative(Ljava/lang/String;II)I
.end method

.method private native sdpRemoveSdpRecordNative(I)Z
.end method

.method private native sdpSearchNative([B[B)Z
.end method

.method private sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->stopSearch()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.action.SDP_RECORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.SDP_SEARCH_STATUS"

    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string/jumbo v1, "android.bluetooth.device.extra.SDP_RECORD"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-nez p3, :cond_1

    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->remove(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->startSearch()V

    :cond_1
    return-void
.end method

.method private startSearch()V
    .locals 4

    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getNext()Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting search for UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->startSearch()V

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->uuidToByteArray(Landroid/os/ParcelUuid;)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/sdp/SdpManager;->sdpSearchNative([B[B)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "SdpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSearch(): nextInst = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mSearchInProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/bluetooth/sdp/SdpManager;->mSearchInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - search busy or queue empty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->cleanupNative()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    :cond_1
    sput-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createMapMasRecord(Ljava/lang/String;IIIIII)I
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateMapMasRecordNative(Ljava/lang/String;IIIIII)I

    move-result v0

    return v0
.end method

.method public createMapMnsRecord(Ljava/lang/String;IIII)I
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateMapMnsRecordNative(Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method public createOppOpsRecord(Ljava/lang/String;III[B)I
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateOppOpsRecordNative(Ljava/lang/String;III[B)I

    move-result v0

    return v0
.end method

.method public createPbapPseRecord(Ljava/lang/String;IIIII)I
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreatePbapPseRecordNative(Ljava/lang/String;IIIII)I

    move-result v0

    return v0
.end method

.method public createSapsRecord(Ljava/lang/String;II)I
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager;->sdpCreateSapsRecordNative(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public removeSdpRecord(I)Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SdpManager sNativeAvailable == false - native not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sdp/SdpManager;->sdpRemoveSdpRecordNative(I)Z

    move-result v0

    return v0
.end method

.method sdpMasRecordFoundCallback(I[B[BIIIIIILjava/lang/String;Z)V
    .locals 11

    sget-object v10, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v9

    const/4 v1, 0x0

    if-nez v9, :cond_0

    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v3, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v9, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    if-nez p1, :cond_1

    new-instance v1, Landroid/bluetooth/SdpMasRecord;

    move v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Landroid/bluetooth/SdpMasRecord;-><init>(IIIIIILjava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID in parcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p11

    invoke-direct {p0, v9, v1, v0}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2
.end method

.method sdpMnsRecordFoundCallback(I[B[BIIIILjava/lang/String;Z)V
    .locals 9

    sget-object v8, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v7

    const/4 v1, 0x0

    if-nez v7, :cond_0

    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v3, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v7, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    if-nez p1, :cond_1

    new-instance v1, Landroid/bluetooth/SdpMnsRecord;

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/SdpMnsRecord;-><init>(IIIILjava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID in parcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p9

    invoke-direct {p0, v7, v1, v0}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v8

    throw v2
.end method

.method sdpOppOpsRecordFoundCallback(I[B[BIIILjava/lang/String;[BZ)V
    .locals 9

    sget-object v8, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v7

    const/4 v1, 0x0

    if-nez v7, :cond_0

    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v3, "sdpOppOpsRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v7, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    if-nez p1, :cond_1

    new-instance v1, Landroid/bluetooth/SdpOppOpsRecord;

    move-object/from16 v2, p7

    move v3, p5

    move v4, p4

    move v5, p6

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/SdpOppOpsRecord;-><init>(Ljava/lang/String;III[B)V

    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID in parcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p9

    invoke-direct {p0, v7, v1, v0}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v8

    throw v2
.end method

.method sdpPseRecordFoundCallback(I[B[BIIIIILjava/lang/String;Z)V
    .locals 10

    sget-object v9, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v8

    const/4 v1, 0x0

    if-nez v8, :cond_0

    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v3, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v8, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    if-nez p1, :cond_1

    new-instance v1, Landroid/bluetooth/SdpPseRecord;

    move v2, p4

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/SdpPseRecord;-><init>(IIIIILjava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UUID in parcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p10

    invoke-direct {p0, v8, v1, v0}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v9

    throw v2
.end method

.method sdpRecordFoundCallback(I[B[BI[B)V
    .locals 7

    sget-object v3, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v4, "sdpRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    if-nez p1, :cond_1

    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sdpRecordFoundCallback: found a sdp record of size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Record:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/bluetooth/SdpRecord;

    invoke-direct {v1, p4, p5}, Landroid/bluetooth/SdpRecord;-><init>(I[B)V

    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID in parcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method sdpSapsRecordFoundCallback(I[B[BIILjava/lang/String;Z)V
    .locals 7

    sget-object v3, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v2, p2, p3}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->getSearchInstance([B[B)Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v2, "SdpManager"

    const-string/jumbo v4, "sdpSapsRecordFoundCallback: Search instance is NULL"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;->setStatus(I)V

    if-nez p1, :cond_1

    new-instance v1, Landroid/bluetooth/SdpSapsRecord;

    invoke-direct {v1, p4, p5, p6}, Landroid/bluetooth/SdpSapsRecord;-><init>(IILjava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SdpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UUID in parcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1, p7}, Lcom/android/bluetooth/sdp/SdpManager;->sendSdpIntent(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;Landroid/os/Parcelable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .locals 3

    sget-boolean v1, Lcom/android/bluetooth/sdp/SdpManager;->sNativeAvailable:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "SdpManager"

    const-string/jumbo v2, "Native not initialized!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Lcom/android/bluetooth/sdp/SdpManager;->mTrackerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->isSearching(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;-><init>(Lcom/android/bluetooth/sdp/SdpManager;ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    sget-object v1, Lcom/android/bluetooth/sdp/SdpManager;->sSdpSearchTracker:Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/sdp/SdpManager$SdpSearchTracker;->add(Lcom/android/bluetooth/sdp/SdpManager$SdpSearchInstance;)Z

    invoke-direct {p0}, Lcom/android/bluetooth/sdp/SdpManager;->startSearch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
