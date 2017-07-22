.class public Lcom/android/phone/FDNContactsCache;
.super Ljava/lang/Object;
.source "FDNContactsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/FDNContactsCache$FDNCacheLoader;
    }
.end annotation


# static fields
.field protected static sInstance:Lcom/android/phone/FDNContactsCache;


# instance fields
.field private mCacheLock:Ljava/lang/Object;

.field protected mFDNRecordsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessageQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueLock:Ljava/lang/Object;

.field protected mbDone:Z

.field protected mbLoading:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/FDNContactsCache;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/FDNContactsCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/FDNContactsCache;->sendResultForFDNContactQueryToAllMsgInQueue()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    iput-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/phone/FDNContactsCache;
    .locals 2

    const-class v1, Lcom/android/phone/FDNContactsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    if-nez v0, :cond_0

    const-string/jumbo v0, "get new instance"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/phone/FDNContactsCache;

    invoke-direct {v0}, Lcom/android/phone/FDNContactsCache;-><init>()V

    sput-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;

    :cond_0
    sget-object v0, Lcom/android/phone/FDNContactsCache;->sInstance:Lcom/android/phone/FDNContactsCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNameFromMsg(Landroid/os/Message;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "NAME_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v5

    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "record not found for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "FDNContactsCache"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendResultForFDNContactQueryToAllMsgInQueue()V
    .locals 6

    const-string/jumbo v3, "sendResultForFDNContactQueryToAllMsgInQueue"

    invoke-static {v3}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message queue. size - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/FDNContactsCache;->sendResultForFDNContactQueryToMessage(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    :try_start_1
    const-string/jumbo v3, "Message queue is empty"

    invoke-static {v3}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void
.end method

.method private sendResultForFDNContactQueryToMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    const-string/jumbo v2, "sendResultForFDNContactQueryToMessage"

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/FDNContactsCache;->getRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "NUMBER_KEY"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "NAME_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendResultForFDNContactQueryToMessage - sendToTarget name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private startLoading(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "startLoading"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    iput-boolean v1, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    new-instance v0, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;

    invoke-direct {v0, p0}, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;-><init>(Lcom/android/phone/FDNContactsCache;)V

    new-array v1, v1, [Landroid/content/Context;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/FDNContactsCache$FDNCacheLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "startLoading - already loading"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "clear cache"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/FDNContactsCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache;->mFDNRecordsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    iput-boolean v2, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    iput-boolean v2, p0, Lcom/android/phone/FDNContactsCache;->mbLoading:Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "init"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/FDNContactsCache;->startLoading(Landroid/content/Context;)V

    return-void
.end method

.method public queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/FDNContactsCache;->mbDone:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "queryFDNContactByNumber - mloaded"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/android/phone/FDNContactsCache;->sendResultForFDNContactQueryToMessage(Ljava/lang/String;Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "queryFDNContactByNumber - !mloaded"

    invoke-static {v0}, Lcom/android/phone/FDNContactsCache;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/FDNContactsCache;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/FDNContactsCache;->mMessageQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {p0, p1}, Lcom/android/phone/FDNContactsCache;->startLoading(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
