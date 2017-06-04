.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;
.super Ljava/lang/Object;
.source "EnhancedShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;
    }
.end annotation


# static fields
.field private static final CONTENT_TOKEN_PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

.field private mContext:Landroid/content/Context;

.field private mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

.field private mORS:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;

.field private mShareAppid:Ljava/lang/String;

.field private mShareCid:Ljava/lang/String;

.field private mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

.field private mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "EnhancedShare"

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "contents_token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->CONTENT_TOKEN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareAppid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareCid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->registerFeature(ILcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mORS:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$ORS;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;)C
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getPushType(Ljava/lang/String;)C

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->cleanupTransactions()V

    return-void
.end method

.method private cleanupTransactions()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private cleanupTransactions(J)V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string/jumbo v2, "EnhancedFeatures instance null"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isAnonymous()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "EnhancedShare is not available for anonymous type"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    const-string/jumbo v0, "29.GET INSTANCE"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getPushType(Ljava/lang/String;)C
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private restoreQuota(J)V
    .locals 11

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "byte_usage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v6, v4, p1

    cmp-long v1, v6, v2

    if-lez v1, :cond_0

    move-wide v2, v6

    :cond_0
    const-string/jumbo v1, "Restore usage %d -> %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v8, 0x0

    invoke-static {v1, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->putQuota(Ljava/lang/Long;Ljava/lang/Long;)Z

    :cond_1
    return-void
.end method

.method private startUploading(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;)V
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;-><init>(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public addPushListener(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;)V
    .locals 2

    const-string/jumbo v0, "28.ADD PUSH LISTENER"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;

    return-void
.end method

.method public cancel(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 17

    const/4 v6, 0x0

    const-string/jumbo v4, "36.CANCEL"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->get(Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    move-result-object v13

    if-nez v13, :cond_2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v4

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    const-string/jumbo v4, "size"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string/jumbo v4, "media_box"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v4, 0x2

    if-ne v12, v4, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->restoreQuota(J)V

    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v11, :cond_3

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$17;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$17;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stop is getting called for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v13, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->cancel(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    :cond_3
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$18;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$18;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->cleanupTransactions(J)V

    goto :goto_0
.end method

.method public createPublicFolderToken(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v3, "20.CREATE PUBLIC FOLDER TOKEN"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v3, "user not authenticated"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0xd

    const-string/jumbo v4, "authentication failed"

    const-string/jumbo v5, "unable to authenticate user"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$45;

    invoke-direct {v3, p0, p2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$45;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz p2, :cond_0

    const-string/jumbo v3, "Security Exception"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x2e

    const-string/jumbo v4, "Security Exception"

    const-string/jumbo v5, "Security Exception"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$46;

    invoke-direct {v3, p0, p2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$46;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/CreatePublicFolderTransaction;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CreatePublicFolderTokenRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public deletePublicMode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 4

    const-string/jumbo v2, "8.DELETE PUBLIC MODE"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v2, "user not authenticated"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$15;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$15;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    const-string/jumbo v2, "Security Exception"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$16;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$16;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DeleteContentsPublicTransaction;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DeleteContentsRequestPublicMode;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public downloadContentsPublicMode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;)V
    .locals 9

    const-wide/16 v4, -0x1

    const-string/jumbo v0, "9.DOWNLOAD CONTENTS PUBLIC MODE"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "user not authenticated"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    const/16 v0, -0xd

    const-string/jumbo v1, "authentication failed"

    const-string/jumbo v2, "unable to authenticate user"

    invoke-direct {v6, v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getRequestToken()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    invoke-interface {p2, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    if-eqz p2, :cond_0

    const-string/jumbo v0, "Security permission error"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    const/16 v0, -0x2e

    const-string/jumbo v1, "Security permission error"

    const-string/jumbo v2, "Security permission error"

    invoke-direct {v7, v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    invoke-interface {p2, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;-><init>(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getContentsTokenByGroupID(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "group_id"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->CONTENT_TOKEN_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contentstoken in group_info DB : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v7

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contentstoken is not exist for gruopid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "groupid is null"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    goto :goto_1
.end method

.method public getFolderExpiryTime(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 8

    if-nez p1, :cond_0

    const-string/jumbo v1, "groupid is null"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "groupid is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v1, "45.GET FOLDER EXPIRY TIME"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v1, "user not authenticated"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0xd

    const-string/jumbo v2, "authentication failed"

    const-string/jumbo v3, "unable to authenticate user"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v6

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$59;

    invoke-direct {v1, p0, p2, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$59;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v1, "Security Exception"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x2e

    const-string/jumbo v2, "Security Exception"

    const-string/jumbo v3, "Security Exception"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v6

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$60;

    invoke-direct {v1, p0, p2, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$60;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareAppid:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareCid:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderExpiredTimeTransaction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public getFolderInfo(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;)V
    .locals 6

    const-string/jumbo v3, "19.GET FOLDER INFO"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v3, "user not authenticated"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0xd

    const-string/jumbo v4, "authentication failed"

    const-string/jumbo v5, "unable to authenticate user"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$43;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$43;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz p2, :cond_0

    const-string/jumbo v3, "Security Exception"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x2e

    const-string/jumbo v4, "Security Exception"

    const-string/jumbo v5, "Security Exception"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$44;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$44;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderInfoTransaction;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/FolderInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/CloudListener;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public getORSServerURL(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v1, "46.GET ORS SERVER URL"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v1, "contentToken is null"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "contentToken is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v1, "user not authenticated"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$61;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$61;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v6

    if-eqz p2, :cond_1

    const-string/jumbo v1, "Security Exception"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$62;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$62;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareAppid:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareCid:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderOrsTransaction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public getPublicFolderToken(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v1, "21.GET PUBLIC FOLDER TOKEN"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v1, "contentToken is null"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "contentToken is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    const-string/jumbo v1, "user not authenticated"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$47;

    invoke-direct {v1, p0, p1, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$47;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v6

    if-eqz p3, :cond_1

    const-string/jumbo v1, "Security Exception"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$48;

    invoke-direct {v1, p0, p1, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$48;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Z[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public getSharePolicy(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;)V
    .locals 7

    const/16 v6, -0xd

    const-string/jumbo v3, "24. GET SHARE POLICY"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    const-string/jumbo v3, "user not authenticated"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0xd

    const-string/jumbo v4, "authentication failed"

    const-string/jumbo v5, "unable to authenticate user"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$53;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$53;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz p1, :cond_0

    const-string/jumbo v3, "Security Exception"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Security Exception"

    const-string/jumbo v4, "Security Exception"

    invoke-static {v6, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$54;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$54;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareCid:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareAppid:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetSharePolicyTransaction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/GetSharePolicyListener;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public getSharedContentsList(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)V
    .locals 4

    const-string/jumbo v2, "12.GET SHARED CONTENTS LIST"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v2, "user not authenticated"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$31;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$31;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "listener is null"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    const-string/jumbo v2, "Security error"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$32;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$32;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsListTransaction;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentListRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public getUploadedCapacityQuota()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "User not authenticated or dergistered"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Security permission error"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;-><init>()V

    const-string/jumbo v3, "byte_usage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->setByteUsage(J)V

    const-string/jumbo v3, "quota"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->setTotalQuota(J)V

    goto :goto_0
.end method

.method public getUploadedFileCount()I
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "30.GET UPLOADED FILE COUNT"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "uploaded_file_count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getWebURLs(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v1, "46.GET ORS SERVER URL"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v1, "contentToken is null"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "contentToken is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    const-string/jumbo v1, "user not authenticated"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$63;

    invoke-direct {v1, p0, p1, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$63;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    if-eqz p3, :cond_1

    const-string/jumbo v1, "Security Exception"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$64;

    invoke-direct {v1, p0, p1, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$64;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareAppid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareCid:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderWebUrlTransaction;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public pause(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 3

    const-string/jumbo v1, "38.PAUSE"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->get(Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$21;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pause is getting called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->pause(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$22;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$22;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resetCapacityQuota(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "32.RESET CAPACITY QUOTA"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "resetCapacityQuota"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->init(Landroid/content/Context;)V

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->putQuota(Ljava/lang/Long;Ljava/lang/Long;)Z

    return-void
.end method

.method public resetFileCountQuota(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "33. RESET FILE COUNT QUOTA"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "resetFileCountQuota"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "uploaded_file_count"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRQuotaDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQuotaDbHandler;->put(Landroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uploaded_file_count"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public resumeDownload(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;Landroid/os/Bundle;)V
    .locals 15

    const-string/jumbo v3, "11. RESUME DOWNLOAD"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v3, "user not authenticated"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    const/16 v3, -0xd

    const-string/jumbo v4, "authentication failed"

    const-string/jumbo v5, "unable to authenticate user"

    invoke-direct {v12, v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setUserData(Landroid/os/Bundle;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v12, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$29;

    move-object/from16 v0, p3

    invoke-direct {v3, p0, v0, v12}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$29;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v14

    if-eqz p3, :cond_0

    const-string/jumbo v3, "Security permission error"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    const/16 v3, -0x2e

    const-string/jumbo v4, "Security permission error"

    const-string/jumbo v5, "Security permission error"

    invoke-direct {v12, v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setUserData(Landroid/os/Bundle;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v12, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$30;

    move-object/from16 v0, p3

    invoke-direct {v3, p0, v0, v12}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$30;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string/jumbo v4, "rshare_download"

    invoke-virtual {v13, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v3, "[WakeLock] acquire pm lock"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareAppid:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareCid:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    sget-object v11, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/Bundle;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeDownloadTransaction;->start()V

    goto :goto_0
.end method

.method public resumeUpload(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;)V
    .locals 15

    const-string/jumbo v3, "40.RESUME UPLOAD"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_0

    const-string/jumbo v3, "user not authenticated"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0xd

    const-string/jumbo v4, "authentication failed"

    const-string/jumbo v5, "unable to authenticate user"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v11

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$27;

    move-object/from16 v0, p3

    invoke-direct {v3, p0, v0, v11}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$27;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v13

    if-eqz p3, :cond_0

    const-string/jumbo v3, "Security permission error"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x2e

    const-string/jumbo v4, "Security permission error"

    const-string/jumbo v5, "Security permission error"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v11

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$28;

    move-object/from16 v0, p3

    invoke-direct {v3, p0, v0, v11}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$28;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string/jumbo v4, "rshare_folder_resume_upload"

    invoke-virtual {v12, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeUploadTransaction;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareAppid:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareCid:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    sget-object v10, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ResumeUploadTransaction;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->start()V

    goto :goto_0
.end method

.method public stop(JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->get(Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    move-result-object v8

    if-nez v8, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-nez v7, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$19;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop is getting called for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;->cancel(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$20;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->cleanupTransactions(J)V

    goto :goto_0
.end method

.method public uploadContentsPublicMode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v2, "1.UPLOAD CONTENTS PUBLIC MODE"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest;->getGroupID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "The groupId is missing"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The groupId is missing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->mShareUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->isUserAuthenticated()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v2, "user not authenticated"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0xd

    const-string/jumbo v3, "authentication failed"

    const-string/jumbo v4, "unable to authenticate user"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$5;

    invoke-direct {v2, p0, p2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$5;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz p2, :cond_1

    const-string/jumbo v2, "Security Exception"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x2e

    const-string/jumbo v3, "Security Exception"

    const-string/jumbo v4, "Security Exception"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$6;

    invoke-direct {v2, p0, p2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$6;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$7;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->startUploading(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;)V

    goto :goto_0
.end method
