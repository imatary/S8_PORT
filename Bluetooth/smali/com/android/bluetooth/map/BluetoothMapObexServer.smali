.class public Lcom/android/bluetooth/map/BluetoothMapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothMapObexServer.java"


# static fields
.field private static final D:Z

.field public static final MAP:Landroid/os/ParcelUuid;

.field private static final MAP_TARGET:[B

.field public static final MAS:Landroid/os/ParcelUuid;

.field private static final MAS_INSTANCE_INFORMATION_LENGTH:I = 0xc8

.field public static final MNS:Landroid/os/ParcelUuid;

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "BluetoothMapObexServer"

.field private static final THREADED_MAIL_HEADER_ID:I = 0xfa

.field private static final THREAD_MAIL_KEY:J = 0x534c5349L

.field private static final TYPE_GET_CONVO_LISTING:Ljava/lang/String; = "x-bt/MAP-convo-listing"

.field private static final TYPE_GET_FOLDER_LISTING:Ljava/lang/String; = "x-obex/folder-listing"

.field private static final TYPE_GET_MAS_INSTANCE_INFORMATION:Ljava/lang/String; = "x-bt/MASInstanceInformation"

.field private static final TYPE_GET_MESSAGE_LISTING:Ljava/lang/String; = "x-bt/MAP-msg-listing"

.field private static final TYPE_MESSAGE:Ljava/lang/String; = "x-bt/message"

.field private static final TYPE_MESSAGE_UPDATE:Ljava/lang/String; = "x-bt/MAP-messageUpdate"

.field private static final TYPE_SET_MESSAGE_STATUS:Ljava/lang/String; = "x-bt/messageStatus"

.field private static final TYPE_SET_NOTIFICATION_FILTER:Ljava/lang/String; = "x-bt/MAP-notification-filter"

.field private static final TYPE_SET_NOTIFICATION_REGISTRATION:Ljava/lang/String; = "x-bt/MAP-NotificationRegistration"

.field private static final TYPE_SET_OWNER_STATUS:Ljava/lang/String; = "x-bt/participant"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAccountId:J

.field private mAuthority:Ljava/lang/String;

.field private mBaseUriString:Ljava/lang/String;

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mEmailFolderUri:Landroid/net/Uri;

.field private mEnableSmsMms:Z

.field private mIsAborted:Z

.field private mMasId:I

.field private mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageVersion:Ljava/lang/String;

.field private mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mRemoteFeatureMask:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mThreadIdSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    const-string/jumbo v0, "00001134-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MNS:Landroid/os/ParcelUuid;

    const-string/jumbo v0, "00001132-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAS:Landroid/os/ParcelUuid;

    return-void

    nop

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x40t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iput-boolean p6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getRemoteFeatureMask()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    if-eqz p5, :cond_3

    iget-object v0, p5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mResolver:Landroid/content/ContentResolver;

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothMapObexServer(): accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothMapObexServer(): baseUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothMapObexServer(): mEmailFolderUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->buildFolderStructure()V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setFolderStructure(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    return-void
.end method

.method private acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to acquire provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    return-object v0
.end method

.method private addBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 1

    const-string/jumbo v0, "inbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "outbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "sent"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "deleted"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-void
.end method

.method private addEmailBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 4

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "inbox"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;JI)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "draft"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;JI)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "outbox"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;JI)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "sent"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;JI)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "deleted"

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;JI)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "spam"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;JI)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-void
.end method

.method private addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v5, "flagVisible == 1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND accountKey == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " AND type < 14 AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "eas"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "parentServerId IS NULL "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "mailbox"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v4, "mProviderClient is null"

    invoke-direct {v2, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "parentServerId=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "parentKey = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_FOLDER_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "displayName COLLATE NOCASE"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_7

    const/4 v2, -0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_3
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "CASE parentKey WHEN -1 THEN CASE type WHEN 0 THEN \'inbox\' WHEN 4 THEN \'outbox\' WHEN 5 THEN \'sent\' WHEN 6 THEN \'deleted\' WHEN 3 THEN \'draft\' ELSE displayName END ELSE displayName END"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "serverId"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string/jumbo v2, "type"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string/jumbo v2, "eas"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailServer(Ljava/lang/String;JLjava/lang/String;I)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v15

    if-eqz v10, :cond_3

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v14

    :try_start_1
    const-string/jumbo v2, "BluetoothMapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v9, v11}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;JI)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v15

    const-wide/16 v16, -0x1

    cmp-long v2, v8, v16

    if-eqz v2, :cond_3

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :cond_7
    :try_start_3
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "BluetoothMapObexServer"

    const-string/jumbo v4, "addEmailFolders(): no elements found"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private addImFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "inbox"

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "outbox"

    const-wide/16 v2, 0x4

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "sent"

    const-wide/16 v2, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "deleted"

    const-wide/16 v2, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "draft"

    const-wide/16 v2, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addImFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-void
.end method

.method private addSmsMmsFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 1

    const-string/jumbo v0, "inbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "outbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "sent"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "deleted"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v0, "draft"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-void
.end method

.method private buildFolderStructure()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v4, "root"

    invoke-direct {v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v4, "telecom"

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    const-string/jumbo v3, "msg"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasImContent(Z)V

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasEmailContent(Z)V

    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addSmsMmsFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    :cond_2
    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addEmailBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BluetoothMapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildFolderStructure(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addImFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    :cond_5
    return-void
.end method

.method private getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no folder name supplied, setting folder to current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0
.end method

.method private isUserUnlocked()Z
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/obex/HeaderSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONNECTION_ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xcb

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v2, "NEW!!! Dumping HeaderSet END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x138d

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 24

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_0

    const-string/jumbo v19, "BluetoothMapObexServer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pushMessage: Missing charset - unable to decode message content. appParams.getCharset() = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v19, 0xcc

    return v19

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v10

    if-nez v10, :cond_2

    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "pushMessage: folderElement == null - sending OBEX_HTTP_PRECON_FAILED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0xcc

    return v19

    :cond_2
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v19, "outbox"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string/jumbo v19, "draft"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setVersionString(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    if-nez v14, :cond_a

    :cond_5
    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_6

    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "mObserver or parsed message not available"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    const/16 v19, 0xd3

    if-eqz v4, :cond_7

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_0
    return v19

    :cond_8
    :try_start_2
    const-string/jumbo v19, "inbox"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_9

    const-string/jumbo v19, "BluetoothMapObexServer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pushMessage: Is only allowed to outbox and draft and inbox. folderName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v19, 0xc6

    return v19

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_a
    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_b

    const-string/jumbo v19, "BluetoothMapObexServer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "msgType = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", folder = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v19

    sget-object v20, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-nez v19, :cond_e

    :cond_c
    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "Wrong message type recieved"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v19, 0xc6

    if-eqz v4, :cond_d

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_d
    :goto_1
    return v19

    :cond_e
    :try_start_4
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v19

    sget-object v20, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v19

    sget-object v20, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v19

    sget-object v20, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    :cond_f
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    invoke-virtual {v0, v14, v10, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)J

    move-result-wide v12

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_11

    const-string/jumbo v19, "BluetoothMapObexServer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "pushMessage handle: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-wide/16 v20, 0x0

    cmp-long v19, v12, v20

    if-gez v19, :cond_13

    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "Message  handle not created"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v19, 0xd3

    if-eqz v4, :cond_12

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_12
    :goto_2
    return v19

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_2

    :cond_13
    :try_start_6
    new-instance v17, Ljavax/obex/HeaderSet;

    invoke-direct/range {v17 .. v17}, Ljavax/obex/HeaderSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "phone"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v18, :cond_18

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v19

    sget-object v20, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_14

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v19

    sget-object v20, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual/range {v19 .. v20}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    :cond_14
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v16

    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    sget-object v15, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    :goto_3
    invoke-static {v12, v13, v15}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v11

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_15

    const-string/jumbo v19, "BluetoothMapObexServer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "handleStr: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " requested messageType from MCE: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " current messageType from MSE: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_16

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_16
    :goto_4
    const/16 v19, 0xa0

    return v19

    :cond_17
    :try_start_8
    sget-object v15, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_3

    :cond_18
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v15

    goto :goto_3

    :catch_3
    move-exception v6

    goto :goto_4

    :catch_4
    move-exception v7

    :try_start_9
    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_19

    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "Exception:"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_19
    const/16 v19, 0xc0

    if-eqz v4, :cond_1a

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_1a
    :goto_5
    return v19

    :catch_5
    move-exception v6

    goto :goto_5

    :catch_6
    move-exception v6

    :try_start_b
    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_1b

    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "Exception occured: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_1c

    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "PushMessage Operation Aborted"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_1c
    const/16 v19, 0xa0

    if-eqz v4, :cond_1d

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_1d
    :goto_6
    return v19

    :catch_7
    move-exception v6

    goto :goto_6

    :cond_1e
    const/16 v19, 0xc0

    if-eqz v4, :cond_1f

    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_1f
    :goto_7
    return v19

    :catch_8
    move-exception v6

    goto :goto_7

    :catch_9
    move-exception v8

    :try_start_e
    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_20

    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "Wrongly formatted bMessage received"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_20
    const/16 v19, 0xcc

    if-eqz v4, :cond_21

    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    :cond_21
    :goto_8
    return v19

    :catch_a
    move-exception v6

    goto :goto_8

    :catch_b
    move-exception v5

    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_22
    :goto_9
    const/16 v19, 0xc0

    if-eqz v4, :cond_23

    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    :cond_23
    :goto_a
    return v19

    :catch_c
    move-exception v9

    :try_start_12
    sget-boolean v19, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v19, :cond_22

    const-string/jumbo v19, "BluetoothMapObexServer"

    const-string/jumbo v20, "acquireUnstableContentProviderOrThrow FAILED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v19

    if-eqz v4, :cond_24

    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    :cond_24
    :goto_b
    throw v19

    :catch_d
    move-exception v6

    goto :goto_a

    :catch_e
    move-exception v6

    goto :goto_b
.end method

.method private sendConvoListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 18

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    new-instance v12, Ljavax/obex/HeaderSet;

    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setMsgTypeFilterParams(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)V

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/android/bluetooth/map/BluetoothMapContent;->convoListing(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingSize(I)V

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->encode()[B

    move-result-object v9

    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v13, :cond_3

    const-string/jumbo v13, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "outBytes size:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v13, :cond_4

    const-string/jumbo v13, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "outList size:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " MaxListCount: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v10, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getDbIdentifier()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setDatabaseIdentifier(JJ)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(J)V

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v13

    const/16 v14, 0x4c

    invoke-virtual {v12, v14, v13}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v7

    if-eqz v9, :cond_14

    :goto_1
    :try_start_1
    array-length v13, v9

    if-ge v3, v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v13, :cond_e

    array-length v13, v9

    sub-int/2addr v13, v3

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz v11, :cond_5

    invoke-virtual {v11, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    add-int/2addr v3, v2

    goto :goto_1

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/android/bluetooth/map/BluetoothMapContent;->convoListing(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingSize(I)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->refreshSmsMmsConvoVersions()Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->refreshImEmailConvoVersions()Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->refreshConvoListVersionCounter()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    and-int/lit16 v13, v13, 0x2000

    if-lez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getCombinedConvoListVersionCounter()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingVerCounter(JJ)V

    :cond_9
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noBodyHeader()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendConvoListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v11, :cond_a

    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v13, :cond_d

    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v13, :cond_b

    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendConvoListingRsp Operation Aborted"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v13, 0xa0

    return v13

    :catch_1
    move-exception v5

    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendConvoListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v11, :cond_c

    :try_start_4
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_c
    :goto_3
    const/16 v13, 0xc0

    return v13

    :catch_2
    move-exception v6

    goto :goto_3

    :catch_3
    move-exception v6

    goto :goto_2

    :cond_d
    const/16 v13, 0xc0

    return v13

    :cond_e
    if-eqz v11, :cond_f

    :try_start_5
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_f
    :goto_4
    array-length v13, v9

    if-eq v3, v13, :cond_10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v13, :cond_13

    :cond_10
    :goto_5
    const/16 v13, 0xa0

    return v13

    :catch_4
    move-exception v4

    goto :goto_4

    :catch_5
    move-exception v4

    :try_start_6
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v13, :cond_11

    const-string/jumbo v13, "BluetoothMapObexServer"

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_11
    if-eqz v11, :cond_f

    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception v4

    goto :goto_4

    :catchall_0
    move-exception v13

    if-eqz v11, :cond_12

    :try_start_8
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_12
    :goto_6
    throw v13

    :catch_7
    move-exception v4

    goto :goto_6

    :cond_13
    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendConvoListingRsp: bytesWritten != outBytes.length - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0xc0

    return v13

    :cond_14
    if-eqz v11, :cond_10

    :try_start_9
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_5

    :catch_8
    move-exception v4

    goto :goto_5
.end method

.method private sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 16

    const/4 v11, 0x0

    const/4 v10, 0x0

    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    const/4 v2, 0x0

    new-instance v12, Ljavax/obex/HeaderSet;

    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    sget v13, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    :cond_0
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v13, :cond_1

    const-string/jumbo v13, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendFolderList for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v6

    const/4 v13, -0x1

    if-ne v6, v13, :cond_2

    const/4 v6, 0x0

    :cond_2
    const/4 v13, -0x1

    if-ne v8, v13, :cond_3

    sget v8, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    :cond_3
    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v13, v6, v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->encode(II)[B

    move-result-object v10

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolderCount()I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v13

    const/16 v14, 0x4c

    invoke-virtual {v12, v14, v13}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v7

    if-eqz v10, :cond_b

    :goto_0
    :try_start_1
    array-length v13, v10

    if-ge v2, v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v13, :cond_7

    array-length v13, v10

    sub-int/2addr v13, v2

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v11, v10, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v2, v1

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendFolderListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v13, 0xcc

    return v13

    :catch_1
    move-exception v4

    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendFolderListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v13, :cond_6

    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v13, :cond_5

    const-string/jumbo v13, "BluetoothMapObexServer"

    const-string/jumbo v14, "sendFolderListingRsp Operation Aborted"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v13, 0xa0

    return v13

    :cond_6
    const/16 v13, 0xc0

    return v13

    :cond_7
    if-eqz v11, :cond_8

    :try_start_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    :goto_1
    array-length v13, v10

    if-ne v2, v13, :cond_a

    const/16 v13, 0xa0

    return v13

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    if-eqz v11, :cond_8

    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v13

    if-eqz v11, :cond_9

    :try_start_4
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_9
    :goto_2
    throw v13

    :catch_5
    move-exception v3

    goto :goto_2

    :cond_a
    const/16 v13, 0xc0

    return v13

    :cond_b
    const/16 v13, 0xa0

    return v13
.end method

.method private sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 12

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v11, "1.0"

    invoke-virtual {v9, p2, p3, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v9

    if-nez v9, :cond_1

    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    new-instance v8, Ljavax/obex/HeaderSet;

    invoke-direct {v8}, Ljavax/obex/HeaderSet;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionDeliver(I)V

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v9

    const/16 v10, 0x4c

    invoke-virtual {v8, v10, v9}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    invoke-interface {p1, v8}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "sendGetMessageRsp fractionRequest - set FRACTION_DELIVER_LAST header"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v4

    if-eqz v6, :cond_c

    :goto_0
    :try_start_1
    array-length v9, v6

    if-ge v1, v9, :cond_5

    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v9, :cond_5

    array-length v9, v6

    sub-int/2addr v9, v1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v7, :cond_2

    invoke-virtual {v7, v6, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "sendGetMessageRsp: IllegalArgumentException (e.g. invalid handle) - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v9, 0xc0

    return v9

    :catch_1
    move-exception v2

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "sendGetMessageRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v9, :cond_4

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "sendGetMessageRsp Operation Aborted"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v9, 0xa0

    return v9

    :cond_4
    const/16 v9, 0xc0

    return v9

    :cond_5
    :try_start_2
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Write byte size  maxChunkSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  outBytes.length =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "   bytesWritten = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-eqz v7, :cond_7

    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    :goto_1
    array-length v9, v6

    if-eq v1, v9, :cond_8

    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v9, :cond_b

    :cond_8
    const/16 v9, 0xa0

    return v9

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_4
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Abort Received"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "getMessage() Aborted..."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    if-eqz v7, :cond_7

    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v9

    if-eqz v7, :cond_a

    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_a
    :goto_2
    throw v9

    :catch_5
    move-exception v2

    goto :goto_2

    :cond_b
    const/16 v9, 0xc0

    return v9

    :cond_c
    const/16 v9, 0xa0

    return v9
.end method

.method private sendMASInstanceInformationRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 12

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    :try_start_0
    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v10

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    const/16 v9, 0xc8

    invoke-static {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->truncateUtf8StringToBytearray(Ljava/lang/String;I)[B

    move-result-object v4

    :cond_1
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v3

    if-eqz v4, :cond_13

    :goto_1
    :try_start_1
    array-length v9, v4

    if-ge v1, v9, :cond_d

    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v9, :cond_d

    array-length v9, v4

    sub-int/2addr v9, v1

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/2addr v1, v0

    goto :goto_1

    :cond_3
    :try_start_2
    const-string/jumbo v6, "EMAIL\u0000"

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v9

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getUciFull()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getUci()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    if-nez v8, :cond_7

    const/4 v9, 0x5

    :goto_2
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v9, "un"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_8

    const-string/jumbo v9, "00"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_6

    const-string/jumbo v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    goto :goto_2

    :cond_8
    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    const/16 v10, 0x64

    if-ge v9, v10, :cond_5

    const-string/jumbo v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "sendMASInstanceInformationRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v9, :cond_c

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_9

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "sendMASInstanceInformationRsp Operation Aborted"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v9, 0xa0

    return v9

    :cond_a
    :try_start_3
    const-string/jumbo v6, "SMS/MMS\u0000"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_b
    const/16 v9, 0xc0

    return v9

    :cond_c
    const/16 v9, 0xc0

    return v9

    :cond_d
    if-eqz v5, :cond_e

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_e
    :goto_4
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_f

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendMASInstanceInformationRsp sent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " bytes out of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    array-length v9, v4

    if-eq v1, v9, :cond_10

    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v9, :cond_12

    :cond_10
    const/16 v9, 0xa0

    return v9

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    if-eqz v5, :cond_e

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_4

    :catchall_0
    move-exception v9

    if-eqz v5, :cond_11

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_11
    :goto_5
    throw v9

    :catch_4
    move-exception v2

    goto :goto_5

    :cond_12
    const/16 v9, 0xc0

    return v9

    :cond_13
    const/16 v9, 0xa0

    return v9
.end method

.method private sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 22

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    new-instance v16, Ljavax/obex/HeaderSet;

    invoke-direct/range {v16 .. v16}, Ljavax/obex/HeaderSet;-><init>()V

    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    sget v18, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    :cond_0
    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v18

    if-eqz v18, :cond_6

    :cond_1
    const-string/jumbo v18, "BluetoothMapObexServer"

    const-string/jumbo v19, "sendMessageListingRsp: ignore folder "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v8

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setIngore(Z)V

    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    sget v18, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getCount()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-lez v18, :cond_a

    const-string/jumbo v17, "1.1"

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode(ZLjava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread()Z

    move-result v9

    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setIngore(Z)V

    if-eqz v9, :cond_d

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x800

    move/from16 v18, v0

    const/16 v19, 0x800

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getDbIdentifier()J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setDatabaseIdentifier(JJ)V

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    const/16 v19, 0x1000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->refreshFolderVersionCounter()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getFolderVersionCounter()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderVerCounter(JJ)V

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(J)V

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v18

    const/16 v19, 0x4c

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v11

    if-eqz v13, :cond_16

    :goto_4
    :try_start_1
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    move/from16 v18, v0

    if-nez v18, :cond_f

    array-length v0, v13

    move/from16 v18, v0

    sub-int v18, v18, v5

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v15, v13, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v5, v4

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v8

    if-eqz v8, :cond_7

    const-string/jumbo v18, "telecom"

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string/jumbo v18, "msg"

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    :cond_7
    if-nez v8, :cond_8

    const-string/jumbo v18, "BluetoothMapObexServer"

    const-string/jumbo v19, "sendMessageListingRsp: folderToList == null - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/16 v18, 0xc0

    return v18

    :cond_8
    const-string/jumbo v18, "BluetoothMapObexServer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sendMessageListingRsp: folderToList == "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " - sending OBEX_HTTP_BAD_REQUEST"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const-string/jumbo v18, "BluetoothMapObexServer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sendMessageListingRsp: has sms "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", has email "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", has IM "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    :try_start_2
    const-string/jumbo v17, "1.0"

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingSize(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingHasUnread(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v9

    invoke-virtual {v12, v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noBodyHeader()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const-string/jumbo v18, "BluetoothMapObexServer"

    const-string/jumbo v19, "sendMessageListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v18, :cond_c

    const-string/jumbo v18, "BluetoothMapObexServer"

    const-string/jumbo v19, "sendMessageListingRsp Operation Aborted"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v18, 0xa0

    return v18

    :cond_d
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v7

    const-string/jumbo v18, "BluetoothMapObexServer"

    const-string/jumbo v19, "sendMessageListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v18, 0xc0

    return v18

    :cond_e
    const/16 v18, 0xc0

    return v18

    :cond_f
    :try_start_4
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v18, :cond_10

    const-string/jumbo v18, "BluetoothMapObexServer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Write byte size  maxChunkSize = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "  outBytes.length =  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v13

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "   bytesWritten = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_10
    if-eqz v15, :cond_11

    :try_start_5
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_11
    :goto_6
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v5, v0, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    :cond_12
    :goto_7
    const/16 v18, 0xa0

    return v18

    :catch_2
    move-exception v6

    goto :goto_6

    :catch_3
    move-exception v6

    :try_start_6
    sget-boolean v18, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v18, :cond_13

    const-string/jumbo v18, "BluetoothMapObexServer"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_13
    if-eqz v15, :cond_11

    :try_start_7
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v6

    goto :goto_6

    :catchall_0
    move-exception v18

    if-eqz v15, :cond_14

    :try_start_8
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_14
    :goto_8
    throw v18

    :catch_5
    move-exception v6

    goto :goto_8

    :cond_15
    const-string/jumbo v18, "BluetoothMapObexServer"

    const-string/jumbo v19, "sendMessageListingRsp: bytesWritten != outBytes.length - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0xc0

    return v18

    :cond_16
    if-eqz v15, :cond_12

    :try_start_9
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    :catch_6
    move-exception v6

    goto :goto_7
.end method

.method private setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 12

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v11

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v7

    const-string/jumbo v10, ""

    if-nez p1, :cond_0

    const/16 v1, 0xcc

    return v1

    :cond_0
    const/4 v1, -0x1

    if-eq v11, v1, :cond_1

    const/4 v1, -0x1

    if-ne v7, v1, :cond_2

    :cond_1
    if-nez v10, :cond_2

    const/16 v1, 0xcc

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v5, "Error: no mObserver!"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v1, 0xd3

    return v1

    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v4

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMessageStatus. Handle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", MsgType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    const/4 v1, 0x1

    if-ne v11, v1, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v5, "setMessageStatusDeleted failed"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v1, 0xd3

    return v1

    :catch_0
    move-exception v8

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Message type not found in handle string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xcc

    return v1

    :catch_1
    move-exception v9

    const-string/jumbo v1, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wrongly formatted message handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xcc

    return v1

    :cond_7
    if-nez v11, :cond_a

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v5, "not able to update the message"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_8
    const/16 v1, 0xd3

    return v1

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v5, "Error in setMessageStatusRead()"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    const/16 v1, 0xd3

    return v1

    :cond_a
    if-eqz v10, :cond_b

    :cond_b
    const/16 v1, 0xa0

    return v1
.end method

.method private setMsgTypeFilterParams(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-nez v2, :cond_0

    const/4 v0, 0x2

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x8

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-nez v2, :cond_2

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x10

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v2, v3, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v2, v3, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto :goto_1

    :cond_5
    or-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto :goto_1
.end method

.method private setOwnerStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v12

    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v12, v13, :cond_b

    new-instance v5, Landroid/os/Bundle;

    const/4 v12, 0x5

    invoke-direct {v5, v12}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivity()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, -0x1

    if-ne v9, v12, :cond_0

    if-nez v10, :cond_0

    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    if-nez v1, :cond_0

    const/16 v12, 0xcc

    return v12

    :cond_0
    const/4 v12, -0x1

    if-eq v9, v12, :cond_1

    const-string/jumbo v12, "PresenceState"

    invoke-virtual {v5, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-eqz v10, :cond_2

    const-string/jumbo v12, "PresenceStatus"

    invoke-virtual {v5, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "LastActive"

    invoke-virtual {v5, v12, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    const/4 v12, -0x1

    if-eq v0, v12, :cond_4

    if-eqz v1, :cond_4

    const-string/jumbo v12, "ChatState"

    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v12, "ConversationId"

    invoke-virtual {v5, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseUriString:Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v12, :cond_5

    const-string/jumbo v12, "BluetoothMapObexServer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setOwnerStatus in: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :try_start_0
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v12, :cond_6

    const-string/jumbo v12, "BluetoothMapObexServer"

    const-string/jumbo v13, "setOwnerStatus call()..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    const-string/jumbo v13, "SetOwnerStatus"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_7

    const/16 v12, 0xa0

    return v12

    :cond_7
    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v12, :cond_8

    const-string/jumbo v12, "BluetoothMapObexServer"

    const-string/jumbo v13, "setOwnerStatus call failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/16 v12, 0xd1

    return v12

    :catch_0
    move-exception v3

    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v12, :cond_9

    const-string/jumbo v12, "BluetoothMapObexServer"

    const-string/jumbo v13, "setOwnerStatus - if uri is not known"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    const/16 v12, 0xd3

    return v12

    :catch_1
    move-exception v4

    sget-boolean v12, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v12, :cond_a

    const-string/jumbo v12, "BluetoothMapObexServer"

    const-string/jumbo v13, "setOwnerStatus - if uri or method is null"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    const/16 v12, 0xd3

    return v12

    :catch_2
    move-exception v2

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v12

    iput-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    const/16 v12, 0xd3

    return v12

    :cond_b
    const/16 v12, 0xd3

    return v12
.end method

.method private updateInbox()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->REFRESH_INBOX:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "APPLICATION_PACKAGE_NAME"

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "ACCOUNT_ID"

    iget-wide v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v5, "inbox"

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v4, 0xd0

    return v4

    :cond_0
    const-string/jumbo v4, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateInbox inbox="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "MAILBOX_ID"

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v4, 0xf0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0xa0

    return v4

    :cond_2
    const/16 v4, 0xd1

    return v4
.end method


# virtual methods
.method public getRemoteFeatureMask()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    return v0
.end method

.method public isSrmSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapObexServer"

    const-string/jumbo v1, "onAbort()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    const/16 v0, 0xa0

    return v0
.end method

.method public onClose()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    :cond_1
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 15

    const/16 v14, 0x10

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0xc6

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "onConnect()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    const-string/jumbo v8, "1.0"

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    const/4 v6, 0x0

    const/16 v8, 0x46

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    const/16 v8, 0xfa

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Long;

    move-object v6, v0

    if-nez v7, :cond_1

    return v11

    :cond_1
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    array-length v8, v7

    if-eq v8, v14, :cond_3

    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Wrong UUID length"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v14, :cond_5

    aget-byte v8, v7, v3

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    aget-byte v9, v9, v3

    if-eq v8, v9, :cond_4

    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Wrong UUID"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/16 v8, 0x4a

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v7}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x4a

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_7

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v8, :cond_6

    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onConnect(): remote="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v8, 0x46

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x534c5349

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    const-wide/32 v8, 0x534c5349

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0xfa

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v8}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    and-int/lit16 v8, v8, 0x200

    const/16 v9, 0x200

    if-ne v8, v9, :cond_9

    iput-boolean v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    :cond_9
    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    and-int/lit16 v8, v8, 0x100

    const/16 v9, 0x100

    if-ne v8, v9, :cond_a

    const-string/jumbo v8, "1.1"

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    :cond_a
    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "onConnect(): uuid is ok, will send out MSG_SESSION_ESTABLISHED msg."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    const/16 v8, 0x1389

    iput v8, v4, Landroid/os/Message;->what:I

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_b
    const/16 v8, 0xa0

    return v8

    :catch_0
    move-exception v2

    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Exception during onConnect:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v8, 0xd0

    return v8

    :catch_1
    move-exception v2

    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Exception during onConnect:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    const/16 v8, 0xd0

    return v8
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 12

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onDelete() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljavax/obex/HeaderSet;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    const/4 v1, 0x0

    const/16 v8, 0x42

    :try_start_0
    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v8, 0x4c

    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    move-object v1, v2

    :cond_1
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_8

    const-string/jumbo v8, "x-bt/MAP-notification-filter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v8, :cond_3

    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TYPE_SET_NOTIFICATION_FILTER: NotificationFilter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationFilter(J)V

    const/16 v8, 0xa0

    return v8

    :cond_4
    const-string/jumbo v8, "x-bt/participant"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TYPE_SET_OWNER_STATUS: PresenceAvailability "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", PresenceStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", LastActivity: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", ChatStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", ChatStatusConvoId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setOwnerStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    return v8

    :catch_0
    move-exception v4

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v8, :cond_6

    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Exception occured while handling request"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v8, :cond_7

    const/16 v8, 0xa0

    return v8

    :cond_6
    const-string/jumbo v8, "BluetoothMapObexServer"

    const-string/jumbo v9, "Exception occured while handling request"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const/16 v8, 0xc0

    return v8

    :catch_1
    move-exception v3

    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const/16 v8, 0xc0

    return v8

    :cond_8
    const/16 v8, 0xc0

    return v8

    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 3

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v2, "onDisconnect()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string/jumbo v1, "BluetoothMapObexServer"

    const-string/jumbo v2, "onDisconnect(): msg MSG_SESSION_DISCONNECTED sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v9

    const/16 v14, 0x42

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/16 v14, 0x4c

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [B

    move-object v2, v0

    if-eqz v2, :cond_0

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    move-object v3, v4

    :cond_0
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v14, :cond_1

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "OnGet type is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " name is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v13, :cond_2

    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "getType is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0xc0

    return v14

    :cond_2
    const-string/jumbo v14, "x-obex/folder-listing"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_3

    if-eqz v3, :cond_3

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_GET_FOLDER_LISTING: MaxListCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", ListStartOffset = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v14

    return v14

    :cond_4
    const-string/jumbo v14, "x-bt/MAP-msg-listing"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_5

    if-eqz v3, :cond_5

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_GET_MESSAGE_LISTING: folder name is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", MaxListCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", ListStartOffset = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SubjectLength = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", ParameterMask = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterMessageType = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterPeriodBegin = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", FilterPeriodEnd = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", FilterReadStatus = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterRecipient = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", FilterOriginator = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterPriority = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v10

    const-string/jumbo v15, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterMsgHandle = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-wide/16 v18, -0x1

    cmp-long v14, v10, v18

    if-nez v14, :cond_6

    const-string/jumbo v14, ""

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v12

    const-string/jumbo v15, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterConvoId = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v12, :cond_7

    const-string/jumbo v14, ""

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v14

    if-nez v14, :cond_8

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Storage locked, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0xd3

    return v14

    :cond_6
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :cond_7
    invoke-virtual {v12}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v8}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v14

    return v14

    :cond_9
    const-string/jumbo v14, "x-bt/MAP-convo-listing"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_a

    if-eqz v3, :cond_a

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_GET_CONVO_LISTING: name is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", MaxListCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", ListStartOffset = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterLastActivityBegin = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterLastActivityEnd = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterReadStatus = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FilterRecipient = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v14

    if-nez v14, :cond_b

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Storage locked, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0xd3

    return v14

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v8}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendConvoListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v14

    return v14

    :cond_c
    const-string/jumbo v14, "x-bt/MASInstanceInformation"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_d

    if-eqz v3, :cond_d

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_MESSAGE (GET): MASInstandeId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMASInstanceInformationRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v14

    return v14

    :cond_e
    const-string/jumbo v14, "x-bt/message"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v14, :cond_f

    if-eqz v3, :cond_f

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "TYPE_MESSAGE (GET): name is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Attachment = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Charset = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", FractionRequest = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v14

    if-nez v14, :cond_10

    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Storage locked, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " failed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, 0xd3

    return v14

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v3, v14}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v14

    return v14

    :cond_11
    const-string/jumbo v14, "BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unknown type request: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v14, 0xc6

    return v14

    :catch_0
    move-exception v5

    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Exception occured while handling request"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v14, :cond_13

    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v14, :cond_12

    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "onGet Operation Aborted"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/16 v14, 0xa0

    return v14

    :cond_13
    const/16 v14, 0xc0

    return v14

    :catch_1
    move-exception v7

    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Exception:"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v14, 0xcc

    return v14

    :catch_2
    move-exception v6

    const-string/jumbo v14, "BluetoothMapObexServer"

    const-string/jumbo v15, "Exception:"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v14, 0xcc

    return v14
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 14

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "onPut()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v7

    const/16 v9, 0x42

    invoke-virtual {v7, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v9, 0x4c

    invoke-virtual {v7, v9}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    move-object v1, v2

    :cond_1
    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v9, "x-bt/MAP-messageUpdate"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "TYPE_MESSAGE_UPDATE:"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->updateInbox()I

    move-result v9

    return v9

    :cond_4
    const-string/jumbo v9, "x-bt/MAP-NotificationRegistration"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_5

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_SET_NOTIFICATION_REGISTRATION: NotificationStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationRegistration(I)I

    move-result v9

    return v9

    :cond_6
    const-string/jumbo v9, "x-bt/MAP-notification-filter"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_7

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_SET_NOTIFICATION_FILTER: NotificationFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Storage locked, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xd3

    return v9

    :cond_8
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationFilter(J)V

    const/16 v9, 0xa0

    return v9

    :cond_9
    const-string/jumbo v9, "x-bt/messageStatus"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_a

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_SET_MESSAGE_STATUS: StatusIndicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", StatusValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", ExtentedData: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Storage locked, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xd3

    return v9

    :cond_b
    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v9

    return v9

    :cond_c
    const-string/jumbo v9, "x-bt/message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_d

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_MESSAGE: Transparet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", retry: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", charset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->isUserUnlocked()Z

    move-result v9

    if-nez v9, :cond_e

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Storage locked, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xd3

    return v9

    :cond_e
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMessageVersion:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v1, v9}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v9

    return v9

    :cond_f
    const-string/jumbo v9, "x-bt/participant"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v9, :cond_10

    const-string/jumbo v9, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TYPE_SET_OWNER_STATUS: PresenceAvailability "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", PresenceStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", LastActivity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", ChatStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", ChatStatusConvoId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setOwnerStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    return v9

    :catch_0
    move-exception v4

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v9, :cond_11

    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "Exception occured while handling request"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v9, :cond_12

    const/16 v9, 0xa0

    return v9

    :cond_11
    const-string/jumbo v9, "BluetoothMapObexServer"

    const-string/jumbo v10, "Exception occured while handling request"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_12
    const/16 v9, 0xc0

    return v9

    :catch_1
    move-exception v3

    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v9

    iput-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const/16 v9, 0xc0

    return v9

    :cond_13
    const/16 v9, 0xc0

    return v9

    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 7

    const/16 v6, 0xc4

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->V:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothMapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSetPath name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " create: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    if-nez p3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    :cond_4
    :goto_0
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "BluetoothMapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current Folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v3, 0xa0

    return v3

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "BluetoothMapObexServer"

    const-string/jumbo v4, "request headers error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/16 v3, 0xc0

    return v3

    :cond_6
    const-string/jumbo v3, "BluetoothMapObexServer"

    const-string/jumbo v4, "request headers error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "BluetoothMapObexServer"

    const-string/jumbo v4, "No parent folder for requesting backup"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    if-eqz v1, :cond_9

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_0

    :cond_9
    const-string/jumbo v3, "BluetoothMapObexServer"

    const-string/jumbo v4, "No sub-folder requested"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public setRemoteFeatureMask(I)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteFeatureMask() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mRemoteFeatureMask:I

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRemoteFeatureMask(I)V

    return-void
.end method
