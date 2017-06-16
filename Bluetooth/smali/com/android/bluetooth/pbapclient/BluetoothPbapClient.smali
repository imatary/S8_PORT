.class public Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;,
        Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$SessionHandler;
    }
.end annotation


# static fields
.field public static final CCH_PATH:Ljava/lang/String; = "telecom/cch.vcf"

.field private static final DBG:Z = true

.field public static final EVENT_PULL_PHONE_BOOK_DONE:I = 0x2

.field public static final EVENT_PULL_PHONE_BOOK_ERROR:I = 0x66

.field public static final EVENT_PULL_PHONE_BOOK_SIZE_DONE:I = 0x5

.field public static final EVENT_PULL_PHONE_BOOK_SIZE_ERROR:I = 0x69

.field public static final EVENT_PULL_VCARD_ENTRY_DONE:I = 0x4

.field public static final EVENT_PULL_VCARD_ENTRY_ERROR:I = 0x68

.field public static final EVENT_PULL_VCARD_LISTING_DONE:I = 0x3

.field public static final EVENT_PULL_VCARD_LISTING_ERROR:I = 0x67

.field public static final EVENT_PULL_VCARD_LISTING_SIZE_DONE:I = 0x6

.field public static final EVENT_PULL_VCARD_LISTING_SIZE_ERROR:I = 0x6a

.field public static final EVENT_SESSION_AUTH_REQUESTED:I = 0xcb

.field public static final EVENT_SESSION_AUTH_TIMEOUT:I = 0xcc

.field public static final EVENT_SESSION_CONNECTED:I = 0xc9

.field public static final EVENT_SESSION_DISCONNECTED:I = 0xca

.field public static final EVENT_SET_PHONE_BOOK_DONE:I = 0x1

.field public static final EVENT_SET_PHONE_BOOK_ERROR:I = 0x65

.field public static final ICH_PATH:Ljava/lang/String; = "telecom/ich.vcf"

.field public static final MAX_LIST_COUNT:S = -0x1s

.field public static final MCH_PATH:Ljava/lang/String; = "telecom/mch.vcf"

.field public static final OCH_PATH:Ljava/lang/String; = "telecom/och.vcf"

.field public static final ORDER_BY_ALPHABETICAL:B = 0x1t

.field public static final ORDER_BY_DEFAULT:B = -0x1t

.field public static final ORDER_BY_INDEXED:B = 0x0t

.field public static final ORDER_BY_PHONETIC:B = 0x2t

.field public static final PB_PATH:Ljava/lang/String; = "telecom/pb.vcf"

.field public static final SEARCH_ATTR_NAME:B = 0x0t

.field public static final SEARCH_ATTR_NUMBER:B = 0x1t

.field public static final SEARCH_ATTR_SOUND:B = 0x2t

.field public static final SIM_CCH_PATH:Ljava/lang/String; = "SIM1/telecom/cch.vcf"

.field public static final SIM_ICH_PATH:Ljava/lang/String; = "SIM1/telecom/ich.vcf"

.field public static final SIM_MCH_PATH:Ljava/lang/String; = "SIM1/telecom/mch.vcf"

.field public static final SIM_OCH_PATH:Ljava/lang/String; = "SIM1/telecom/och.vcf"

.field public static final SIM_PB_PATH:Ljava/lang/String; = "SIM1/telecom/pb.vcf"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapClient"

.field public static final VCARD_ATTR_ADDR:J = 0x20L

.field public static final VCARD_ATTR_AGENT:J = 0x8000L

.field public static final VCARD_ATTR_BDAY:J = 0x10L

.field public static final VCARD_ATTR_CATEGORIES:J = 0x1000000L

.field public static final VCARD_ATTR_CLASS:J = 0x4000000L

.field public static final VCARD_ATTR_EMAIL:J = 0x100L

.field public static final VCARD_ATTR_FN:J = 0x2L

.field public static final VCARD_ATTR_GEO:J = 0x800L

.field public static final VCARD_ATTR_KEY:J = 0x400000L

.field public static final VCARD_ATTR_LABEL:J = 0x40L

.field public static final VCARD_ATTR_LOGO:J = 0x4000L

.field public static final VCARD_ATTR_MAILER:J = 0x200L

.field public static final VCARD_ATTR_N:J = 0x4L

.field public static final VCARD_ATTR_NICKNAME:J = 0x800000L

.field public static final VCARD_ATTR_NOTE:J = 0x20000L

.field public static final VCARD_ATTR_ORG:J = 0x10000L

.field public static final VCARD_ATTR_PHOTO:J = 0x8L

.field public static final VCARD_ATTR_PROID:J = 0x2000000L

.field public static final VCARD_ATTR_REV:J = 0x40000L

.field public static final VCARD_ATTR_ROLE:J = 0x2000L

.field public static final VCARD_ATTR_SORT_STRING:J = 0x8000000L

.field public static final VCARD_ATTR_SOUND:J = 0x80000L

.field public static final VCARD_ATTR_TEL:J = 0x80L

.field public static final VCARD_ATTR_TITLE:J = 0x1000L

.field public static final VCARD_ATTR_TZ:J = 0x400L

.field public static final VCARD_ATTR_UID:J = 0x200000L

.field public static final VCARD_ATTR_URL:J = 0x100000L

.field public static final VCARD_ATTR_VERSION:J = 0x1L

.field public static final VCARD_ATTR_X_IRMC_CALL_DATETIME:J = 0x10000000L

.field public static final VCARD_TYPE_21:B = 0x0t

.field public static final VCARD_TYPE_30:B = 0x1t


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mClientHandler:Landroid/os/Handler;

.field private mConnectionState:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

.field private final mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

.field private mSessionHandler:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$SessionHandler;


# direct methods
.method static synthetic -set0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;)Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mConnectionState:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->sendToClient(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->sendToClient(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->sendToClient(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->sendToClient(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/accounts/Account;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;->DISCONNECTED:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mConnectionState:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    const-string/jumbo v0, "BluetoothPbapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "BluetoothDevice is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mClientHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$SessionHandler;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$SessionHandler;-><init>(Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSessionHandler:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$SessionHandler;

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSessionHandler:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$SessionHandler;

    invoke-direct {v0, p1, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    return-void
.end method

.method private sendToClient(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->sendToClient(IILjava/lang/Object;)V

    return-void
.end method

.method private sendToClient(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->sendToClient(IILjava/lang/Object;)V

    return-void
.end method

.method private sendToClient(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mClientHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendToClient(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->sendToClient(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->abort()V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->start()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->stop()V

    return-void
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->stop()V

    :cond_0
    return-void
.end method

.method public getState()Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mConnectionState:Lcom/android/bluetooth/pbapclient/BluetoothPbapClient$ConnectionState;

    return-object v0
.end method

.method public pullPhoneBook(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;JBII)Z

    move-result v0

    return v0
.end method

.method public pullPhoneBook(Ljava/lang/String;II)Z
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;JBII)Z

    move-result v0

    return v0
.end method

.method public pullPhoneBook(Ljava/lang/String;JB)Z
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;JBII)Z

    move-result v0

    return v0
.end method

.method public pullPhoneBook(Ljava/lang/String;JBII)Z
    .locals 10

    new-instance v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mAccount:Landroid/accounts/Account;

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBook;-><init>(Ljava/lang/String;Landroid/accounts/Account;JBII)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->makeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    move-result v0

    return v0
.end method

.method public pullPhoneBookSize(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullPhoneBookSize;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->makeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    move-result v1

    return v1
.end method

.method public pullVcardEntry(Ljava/lang/String;)Z
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullVcardEntry(Ljava/lang/String;JB)Z

    move-result v0

    return v0
.end method

.method public pullVcardEntry(Ljava/lang/String;JB)Z
    .locals 8

    new-instance v1, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;

    iget-object v3, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mAccount:Landroid/accounts/Account;

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardEntry;-><init>(Ljava/lang/String;Landroid/accounts/Account;JB)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->makeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    move-result v0

    return v0
.end method

.method public pullVcardListing(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public pullVcardListing(Ljava/lang/String;B)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z
    .locals 7

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListing;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListing;-><init>(Ljava/lang/String;BBLjava/lang/String;II)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->makeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    move-result v1

    return v1
.end method

.method public pullVcardListing(Ljava/lang/String;BII)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public pullVcardListing(Ljava/lang/String;BLjava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public pullVcardListing(Ljava/lang/String;II)Z
    .locals 7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->pullVcardListing(Ljava/lang/String;BBLjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public pullVcardListingSize(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListingSize;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestPullVcardListingSize;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->makeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    move-result v1

    return v1
.end method

.method public setAuthResponse(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "BluetoothPbapClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setAuthResponse key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->setAuthResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPhoneBookFolderDown(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->makeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    move-result v1

    return v1
.end method

.method public setPhoneBookFolderRoot()Z
    .locals 2

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;-><init>(Z)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->makeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    move-result v1

    return v1
.end method

.method public setPhoneBookFolderUp()Z
    .locals 2

    new-instance v0, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbapclient/BluetoothPbapRequestSetPath;-><init>(Z)V

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/BluetoothPbapClient;->mSession:Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/pbapclient/BluetoothPbapSession;->makeRequest(Lcom/android/bluetooth/pbapclient/BluetoothPbapRequest;)Z

    move-result v1

    return v1
.end method
