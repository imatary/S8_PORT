.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
.super Ljava/lang/Object;
.source "EnhancedProfile.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;


# instance fields
.field private enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

.field private mContext:Landroid/content/Context;

.field private mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

.field private mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;

.field private mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private mSyncTaskArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->init(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mSyncTaskArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->registerFeature(ILcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mSyncTaskArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->postErrorDetails(Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string/jumbo v2, "EnhancedFeatures instance null"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string/jumbo v2, "EnhancedProfile is not available for anonymous type"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static isContactServiceEnabled(Landroid/content/Context;)I
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private postErrorDetails(Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2af8

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "Network Error"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2af9

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "Network Timeout"

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2afa

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "Network No Connection"

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2afb

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "Network IO Error"

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2ee0

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "Server Errors"

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2ee1

    if-ne v0, v1, :cond_5

    const-string/jumbo v0, "Server Bad Access Token"

    goto :goto_0

    :cond_5
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2ee2

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "Server Invalid Response"

    goto :goto_0

    :cond_6
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x7531

    if-ne v0, v1, :cond_7

    const-string/jumbo v0, "Main Thread Not Allowed"

    goto :goto_0

    :cond_7
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x7532

    if-ne v0, v1, :cond_8

    const-string/jumbo v0, "Contact Bad Access Token"

    goto :goto_0

    :cond_8
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x753a

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "Contact No Contents"

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "Undefined error"

    goto :goto_0
.end method

.method private sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$13;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startContactSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v1, "startContactSync() context is null - return"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;

    invoke-direct {v0, p1, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mSyncTaskArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public clearDB()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->clearAllPreference()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearLocalDB(Landroid/content/Context;)V

    const-string/jumbo v0, "Cleared local Data files"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBuddyInfo(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBuddyInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/NumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v1, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->readContactList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public readContactList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "sync_data"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readContactList - cursor count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    const-string/jumbo v0, "readContactList - cursor is null"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPresence(ILjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;",
            ")V"
        }
    .end annotation

    const/16 v10, 0x753c

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v8, "Presence list cannot be empty"

    invoke-direct {p0, p3, v10, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;

    new-instance v3, Lcom/samsung/android/sdk/ssf/contact/io/PresenceBody;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ssf/contact/io/PresenceBody;-><init>()V

    iget-object v8, v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;->id:Ljava/lang/String;

    iput-object v8, v3, Lcom/samsung/android/sdk/ssf/contact/io/PresenceBody;->id:Ljava/lang/String;

    iget-object v8, v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;->val:Ljava/lang/String;

    iput-object v8, v3, Lcom/samsung/android/sdk/ssf/contact/io/PresenceBody;->val:Ljava/lang/String;

    iget-object v8, v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;->msg:Ljava/lang/String;

    iput-object v8, v3, Lcom/samsung/android/sdk/ssf/contact/io/PresenceBody;->msg:Ljava/lang/String;

    iget v8, v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;->expr_hh:I

    iput v8, v3, Lcom/samsung/android/sdk/ssf/contact/io/PresenceBody;->expr_hh:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/samsung/android/sdk/ssf/contact/io/SetPresenceRequestInfo;

    invoke-direct {v6}, Lcom/samsung/android/sdk/ssf/contact/io/SetPresenceRequestInfo;-><init>()V

    iput-object v2, v6, Lcom/samsung/android/sdk/ssf/contact/io/SetPresenceRequestInfo;->presences:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;

    invoke-direct {v7, p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;)V

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    const/4 v9, 0x0

    invoke-static {v8, v6, p1, v9, v7}, Lcom/samsung/android/sdk/ssf/contact/PresenceManager;->setPresence(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/SetPresenceRequestInfo;IILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p3, v10, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v5

    const/16 v8, 0x753b

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p3, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setPresence(Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/Presence;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getServiceId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->setPresence(ILjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPresenceListener;)V

    return-void
.end method

.method public setProfileSetting(ZZZZ)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, -0x1

    if-eqz p1, :cond_4

    move v2, v1

    :goto_0
    if-eqz p4, :cond_5

    move v3, v1

    :goto_1
    if-eqz p2, :cond_6

    move v0, v1

    :goto_2
    if-eqz p3, :cond_7

    :goto_3
    if-eq v2, v4, :cond_0

    const-string/jumbo v5, "email_checking"

    invoke-static {v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V

    :cond_0
    if-eq v3, v4, :cond_1

    const-string/jumbo v5, "organisation_checking"

    invoke-static {v5, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V

    :cond_1
    if-eq v0, v4, :cond_2

    const-string/jumbo v5, "address_checking"

    invoke-static {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V

    :cond_2
    if-eq v1, v4, :cond_3

    const-string/jumbo v4, "date_checking"

    invoke-static {v4, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V

    :cond_3
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_3
.end method

.method public syncContactSinceLastSync(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "Sync contacts - syncContactsSinceLastSync"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "extra_manual_contact_sync"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "extra_get_polling"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->startContactSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    return-void
.end method

.method public syncLocalContact(Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 2

    const-string/jumbo v0, "Sync contacts - syncLocalContacts"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->startContactSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    return-void
.end method

.method public syncLocalContact(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "Sync contacts - syncLocalContacts"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "extra_manual_contact_sync"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "extra_get_contact_from_server"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "extra_get_polling"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->syncLocalContact(Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    return-void
.end method
