.class public Lcom/android/bluetooth/map/BluetoothMapMasInstance;
.super Ljava/lang/Object;
.source "BluetoothMapMasInstance.java"

# interfaces
.implements Lcom/android/bluetooth/IObexConnectionHandler;


# static fields
.field private static final D:Z

.field private static final SDP_MAP_MAS_FEATURES:I = 0x7f

.field private static final SDP_MAP_MAS_VERSION:I = 0x102

.field private static final SDP_MAP_MSG_TYPE_EMAIL:I = 0x1

.field private static final SDP_MAP_MSG_TYPE_IM:I = 0x10

.field private static final SDP_MAP_MSG_TYPE_MMS:I = 0x8

.field private static final SDP_MAP_MSG_TYPE_SMS_CDMA:I = 0x4

.field private static final SDP_MAP_MSG_TYPE_SMS_GSM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothMapMasInstance"

.field public static final TYPE_EMAIL_STR:Ljava/lang/String; = "EMAIL"

.field public static final TYPE_IM_STR:Ljava/lang/String; = "IM"

.field public static final TYPE_SMS_MMS_STR:Ljava/lang/String; = "SMS/MMS"

.field private static final V:Z


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBaseUri:Ljava/lang/String;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private mEnableSmsMms:Z

.field private mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private mImEmailConvoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation
.end field

.field private mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile mInterrupted:Z

.field private mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field private mMasInstanceId:I

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mMsgListMms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListMsg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListRcsChat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListRcsFt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRemoteFeatureMask:I

.field private mSdpHandle:I

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

.field private mServiceHandler:Landroid/os/Handler;

.field private volatile mShutdown:Z

.field private mSmsMmsConvoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mShutdown:Z

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListRcsChat:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListRcsFt:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mShutdown:Z

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListRcsChat:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListRcsFt:Ljava/util/Map;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapMasInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAccount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    :cond_1
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    iput-boolean p5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->init()V

    return-void
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "BluetoothMapMasInstance"

    const-string/jumbo v2, "Close Connection Socket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private final declared-synchronized closeServerSockets(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/ObexServerSockets;->shutdown(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private createMasSdpRecord(II)I
    .locals 9

    const-string/jumbo v1, ""

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    if-eqz v0, :cond_1

    const-string/jumbo v1, "SMS/MMS"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configNetworkTypeCapability : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "CDM-"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x4

    :goto_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMmsSupportStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v6, v6, 0x8

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/EMAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v2, :cond_8

    or-int/lit8 v6, v6, 0x1

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    const/16 v5, 0x102

    const/16 v7, 0x7f

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/bluetooth/sdp/SdpManager;->createMapMasRecord(Ljava/lang/String;IIIIII)I

    move-result v0

    return v0

    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "GLB-"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x6

    goto :goto_0

    :cond_5
    const/4 v6, 0x2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/IM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "Email Message Access"

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v2, :cond_3

    or-int/lit8 v6, v6, 0x10

    goto :goto_2
.end method

.method private init()V
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private removeSdpRecord()V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    if-ltz v1, :cond_1

    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing SDP record for MAS instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Object reference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SDP handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v0

    const-string/jumbo v1, "BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoveSDPrecord returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    :cond_1
    return-void
.end method

.method private updateDbIdentifier()V
    .locals 4

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method


# virtual methods
.method getCombinedConvoListVersionCounter()J
    .locals 4

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getContactList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContactList:Ljava/util/Map;

    return-object v0
.end method

.method getDbIdentifier()J
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mDbIndetifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getFolderVersionCounter()J
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getImEmailConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    return-object v0
.end method

.method getMasId()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    return v0
.end method

.method getMsgListMms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    return-object v0
.end method

.method getMsgListMsg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    return-object v0
.end method

.method getMsgListRcsChat()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListRcsChat:Ljava/util/Map;

    return-object v0
.end method

.method getMsgListRcsFt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListRcsFt:Ljava/util/Map;

    return-object v0
.end method

.method getMsgListSms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    return-object v0
.end method

.method public getRemoteFeatureMask()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    return v0
.end method

.method getSmsMmsConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onAcceptFailed()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mShutdown:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapMasInstance"

    const-string/jumbo v1, "Failed to accept incomming connection - shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "BluetoothMapMasInstance"

    const-string/jumbo v1, "Failed to accept incomming connection - restarting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v1, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapService;->onConnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public restartObexServerSession()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MAP Service restartObexServerSession : masId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeConnectionSocket()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startRfcommSocketListener()V

    :cond_3
    return-void
.end method

.method setContactList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContactList:Ljava/util/Map;

    return-void
.end method

.method setImEmailConvoList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoList:Ljava/util/HashMap;

    return-void
.end method

.method setMsgListMms(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMms:Ljava/util/Map;

    return-void
.end method

.method setMsgListMsg(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListMsg:Ljava/util/Map;

    return-void
.end method

.method setMsgListRcsChat(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListRcsChat:Ljava/util/Map;

    return-void
.end method

.method setMsgListRcsFt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListRcsFt:Ljava/util/Map;

    return-void
.end method

.method setMsgListSms(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMsgListSms:Ljava/util/Map;

    return-void
.end method

.method public setRemoteFeatureMask(I)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapMasInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteFeatureMask : Curr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setObserverRemoteFeatureMask(I)V

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothMapMasInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteFeatureMask : set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mRemoteFeatureMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method setSmsMmsConvoList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoList:Ljava/util/HashMap;

    return-void
.end method

.method public shutdown()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapMasInstance"

    const-string/jumbo v1, "MAP Service shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->removeSdpRecord()V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeConnectionSocket()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeServerSockets(Z)V

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    if-ltz v0, :cond_4

    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothMapMasInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing SDP record for MAS instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Object reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "SDP handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    :cond_4
    return-void
.end method

.method public startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Map Service startObexServerSession masid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    return v9

    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->init()V

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V

    new-instance v7, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v7, v1}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    new-instance v1, Ljavax/obex/ServerSession;

    invoke-direct {v1, v7, v0, v8}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BluetoothMapMasInstance"

    const-string/jumbo v2, "    ServerSession started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v9

    :cond_3
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "BluetoothMapMasInstance"

    const-string/jumbo v2, "    No connection for this instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized startRfcommSocketListener()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Map Service startRfcommSocketListener : masId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapMasInstance"

    const-string/jumbo v2, "mServerSession exists - shutting it down..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSession:Ljavax/obex/ServerSession;

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->D:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothMapMasInstance"

    const-string/jumbo v2, "mObserver exists - shutting it down..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deinit()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->closeConnectionSocket()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets;->prepareForNewConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-static {p0, v1}, Lcom/android/bluetooth/ObexServerSockets;->create(Lcom/android/bluetooth/IObexConnectionHandler;I)Lcom/android/bluetooth/ObexServerSockets;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    if-nez v1, :cond_7

    const-string/jumbo v1, "BluetoothMapMasInstance"

    const-string/jumbo v2, "Failed to start the listeners"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->removeSdpRecord()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {v1}, Lcom/android/bluetooth/ObexServerSockets;->getRfcommChannel()I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServerSockets:Lcom/android/bluetooth/ObexServerSockets;

    invoke-virtual {v2}, Lcom/android/bluetooth/ObexServerSockets;->getL2capPsm()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->createMasSdpRecord(II)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->V:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "BluetoothMapMasInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating new SDP record for MAS instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Object reference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SDP handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSdpHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateDbIdentifier()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mServiceHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MasId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mMasInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SMS/MMS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mEnableSmsMms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateFolderVersionCounter()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mFolderVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method

.method updateImEmailConvoListVersionCounter()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mImEmailConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method

.method updateSmsMmsConvoListVersionCounter()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->mSmsMmsConvoListVersionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method
