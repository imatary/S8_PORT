.class public Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.super Ljava/lang/Object;
.source "BluetoothOppObexClientSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;,
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$2;,
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;,
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;,
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$5;,
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;,
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final EIR_IDX_ADDR_TYPE:I = 0x11

.field private static final EIR_IDX_P2P_MAC:I = 0x12

.field public static final P2P_LISTEN_TIMEOUT:I = 0x65

.field public static final P2P_LISTEN_TIMEOUT_DURATION:J = 0x61a8L

.field private static final STATUS_COMPLETED:Ljava/lang/String; = "STATUS_COMPLETED"

.field private static final STATUS_FAILED:Ljava/lang/String; = "STATUS_FAILED"

.field private static final STATUS_PROGRESS:Ljava/lang/String; = "STATUS_PROGRESS"

.field private static final STATUS_STARTED:Ljava/lang/String; = "STATUS_STARTED"

.field private static final TAG:Ljava/lang/String; = "BtOppObexClient"

.field private static final V:Z


# instance fields
.field private MacAddress:Ljava/lang/String;

.field private TargetMacAddress:Ljava/lang/String;

.field appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

.field private block_for_GSIM:Z

.field private block_for_advopp:Z

.field private isAdvancedOppAtClient:Z

.field private mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentshareInfoForWifi:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mDestination:Ljava/lang/String;

.field private mFileShareActionListener:Lcom/android/bluetooth/opp/IFileShareActionListener;

.field mFileShareCallback:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;

.field private mFileShareConnection:Landroid/content/ServiceConnection;

.field mFileShareService:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;

.field private volatile mInterrupted:Z

.field private mIsBtP2pBroadcast:Z

.field private mMimetype:Ljava/lang/String;

.field private mPrevP2pConnected:Z

.field private mPrevWifiState:Z

.field private mSharesForWifi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

.field private mTransferList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTransport:Ljavax/obex/ObexTransport;

.field private mUpdateListener:Lcom/android/bluetooth/opp/IFileShareActionListener;

.field private mUriForWifiShareInfo1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mWaitingForRemote:Z

.field private mWifiConnectionHandler:Landroid/os/Handler;

.field private needToRecover:Z

.field private serviceConn:Landroid/content/ServiceConnection;

.field private status_adv:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->D:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->MacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mPrevWifiState:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mSharesForWifi:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransferList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljavax/obex/ObexTransport;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/IFileShareActionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUpdateListener:Lcom/android/bluetooth/opp/IFileShareActionListener;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWifiConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->needToRecover:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->status_adv:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->TargetMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->block_for_GSIM:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->block_for_advopp:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->isAdvancedOppAtClient:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/IFileShareActionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareActionListener:Lcom/android/bluetooth/opp/IFileShareActionListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->MacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->block_for_GSIM:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->needToRecover:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->status_adv:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->block_for_advopp:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->isAdvancedOppAtClient:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mDestination:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mMimetype:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mPrevP2pConnected:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mPrevWifiState:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->UriCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->isAFWMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->isTargetSupportEIR(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mimeTypeCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Ljava/io/InputStream;[BI)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;Lcom/android/bluetooth/opp/BluetoothOppBatch;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/obex/ObexTransport;",
            "Lcom/android/bluetooth/opp/BluetoothOppBatch;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->MacAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mDestination:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mPrevWifiState:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->isAdvancedOppAtClient:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mPrevP2pConnected:Z

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUriForWifiShareInfo1:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mIsBtP2pBroadcast:Z

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->block_for_GSIM:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->needToRecover:Z

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->block_for_advopp:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransferList:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUpdateListener:Lcom/android/bluetooth/opp/IFileShareActionListener;

    const/16 v1, 0xc7

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->status_adv:I

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->TargetMacAddress:Ljava/lang/String;

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->serviceConn:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareActionListener:Lcom/android/bluetooth/opp/IFileShareActionListener;

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareCallback:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$5;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$5;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWifiConnectionHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "transport is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUriForWifiShareInfo1:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getBatchShareInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mSharesForWifi:Ljava/util/ArrayList;

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->serviceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "[ADVANCED OPP] should send only BT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method private UriCheck()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUriForWifiShareInfo1:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP] mUriForWifiShareInfo1 is null return flase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUriForWifiShareInfo1:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUriForWifiShareInfo1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "content://0@media"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "content://media/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_2

    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[ADVANCED OPP] URI is not available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public static applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v5, "00:04:48"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    array-length v5, v0

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_3

    aget-char v5, v0, v2

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    if-nez v1, :cond_1

    const/4 v3, 0x1

    const/16 v5, 0x5f

    aput-char v5, v0, v2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->D:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "BtOppObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sending file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\" as \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\" to workaround Poloroid filename quirk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private isAFWMode()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "com.samsung.android.allshare.service.fileshare"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BtOppObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ADVANCED OPP] PackageManager Exception AllshareFileShare fail >> TRUE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method

.method private isTargetSupportEIR(Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object v3

    new-array v1, v5, [B

    if-eqz v3, :cond_0

    const/16 v4, 0x11

    aget-byte v4, v3, v4

    or-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    invoke-static {v3, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->parseMacAddressToString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->TargetMacAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->TargetMacAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[ADVANCED OPP] Target(Server) MacAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BtOppObexClient[ADVANCED OPP] Target(Server) MacAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :cond_0
    const-string/jumbo v4, "BtOppObexClient"

    const-string/jumbo v5, "[ADVANCED OPP] not Support EIR > Transfer via BT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private makeIntentforSendFile(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP] makeFileShareListIntentInvalid device."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP] makeFileShareListIntentInvalid content list."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[ADVANCED OPP] makeFileShareListIntent to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " + p2pConnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mPrevP2pConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mPrevWifiState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mPrevWifiState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP] sending single file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.android.allshare.service.fileshare.FILE_SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v3, "com.samsung.android.allshare.service.fileshare"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "DevMac"

    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "DevName"

    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "DevP2p"

    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mPrevP2pConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "DevWifi"

    iget-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mPrevWifiState:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "BT_MAC"

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mDestination:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object v2

    :cond_3
    const-string/jumbo v3, "text"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP] sending multiple file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.android.allshare.service.fileshare.FILE_SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private mimeTypeCheck()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUriForWifiShareInfo1:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    const-string/jumbo v4, "BtOppObexClient"

    const-string/jumbo v5, "[ADVANCED OPP] mUriForWifiShareInfo1 is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUriForWifiShareInfo1:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-eq v0, v4, :cond_5

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v4, "BtOppObexClient"

    const-string/jumbo v5, "[ADVANCED OPP] mimeType is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    const-string/jumbo v4, "image/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "video/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "audio/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "application/ogg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_4

    const-string/jumbo v4, "BtOppObexClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[ADVANCED OPP] mimeType is not available : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BAOI"

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    const/16 v6, 0x3e8

    invoke-static {v4, v6, v1, v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->insertGSIMLog(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    :cond_2
    return v8

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "BtOppObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[ADVANCED OPP] mimeType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "BtOppObexClient"

    const-string/jumbo v6, "[ADVANCED OPP] info is SEND_FILE_INFO_ERROR"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "BtOppObexClient"

    const-string/jumbo v6, "[ADVANCED OPP] mimeType is available"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private static readFully(Ljava/io/InputStream;[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    sub-int v2, p2, v0

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public GetRecover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->needToRecover:Z

    return v0
.end method

.method public SetRecover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->needToRecover:Z

    return-void
.end method

.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCurrentshareInfoForWifi:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    :cond_0
    return-void
.end method

.method public getDeviceP2pMacFromWifiMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v7

    :cond_0
    const-string/jumbo v3, ""

    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    const/16 v5, 0x10

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v5, "BtOppObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDeviceP2pMacFromWifiMac error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    throw v5
.end method

.method public getP2pMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->getDeviceP2pMacFromWifiMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWifiMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isP2pConnected()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    :cond_0
    const-string/jumbo v2, "BtOppObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ADVANCED OPP] isP2pConnected() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isWifiApEnabled()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v2, "BtOppObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ADVANCED OPP] isWifiApEnabled() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public parseMacAddressToString([B)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-byte v0, p1, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public sendBtP2pSettingsStartedBroadcast(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.bluetooth.p2p.SETTINGS_STRATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "started"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mIsBtP2pBroadcast:Z

    if-eq v1, p1, :cond_0

    const-string/jumbo v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ADVANCED OPP] send intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mIsBtP2pBroadcast:Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ADVANCED OPP] already send intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendFileViaWifiDirect(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "[ADVANCED OPP] sendFileViaWifiDirect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isP2pConnection()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "[ADVANCED OPP] sendFileViaWifiDirect p2p is not connected. try it later"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "[ADVANCED OPP] sendFile bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "[ADVANCED OPP] sendFilestartService Failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUpdateListener(Lcom/android/bluetooth/opp/IFileShareActionListener;)V
    .locals 3

    const-string/jumbo v0, "BtOppObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUpdateListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUpdateListener:Lcom/android/bluetooth/opp/IFileShareActionListener;

    return-void
.end method

.method public start(Landroid/os/Handler;I)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtOppObexClient"

    const-string/jumbo v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->start()V

    return-void
.end method

.method public stop()V
    .locals 6

    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "Stop!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->interrupt()V

    sget-boolean v3, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->V:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "waiting for thread to terminate"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->join()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->serviceConn:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP] callback unbind serviceConn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->sendBtP2pSettingsStartedBroadcast(Z)V

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareService:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    :try_start_2
    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP] callback unregisterCallback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareService:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareCallback:Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;

    invoke-interface {v3, v4}, Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareService;->unregisterCallback(Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP] unbindService mFileShareConnection"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mFileShareConnection:Landroid/content/ServiceConnection;

    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    :try_start_6
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    const/4 v3, 0x0

    :try_start_7
    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->serviceConn:Landroid/content/ServiceConnection;

    :cond_4
    :goto_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->TargetMacAddress:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->isAdvancedOppAtClient:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Interrupted waiting for thread to join : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_2
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :cond_5
    const-string/jumbo v3, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP]  unbind fail appNet is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4
.end method

.method public unblock()V
    .locals 0

    return-void
.end method

.method public updateThisDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string/jumbo v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ADVANCED OPP]  : updating device device is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUriForWifiShareInfo1:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mUriForWifiShareInfo1:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->makeIntentforSendFile(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->updateShareInfoListForWifi()V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->sendFileViaWifiDirect(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWifiConnectionHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v1, "BtOppObexClient"

    const-string/jumbo v2, "[ADVANCED OPP] connect return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
