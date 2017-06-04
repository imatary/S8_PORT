.class public Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;
.super Ljava/lang/Object;
.source "UnifiedLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$LoggingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnifiedLogUtils"

.field private static mInstance:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

.field private static mLoggingJobCompleted:Z


# instance fields
.field private final mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;",
            "Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$LoggingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoggingThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLoggingJobCompleted:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mListenerMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$1;

    const-string/jumbo v1, "UnifiedLogUtils"

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$1;-><init>(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLoggingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLoggingJobCompleted:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLoggingJobCompleted:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->doLog()V

    return-void
.end method

.method private doLog()V
    .locals 5

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;

    if-nez v0, :cond_1

    const-string/jumbo v2, "UnifiedLogUtils"

    const-string/jumbo v3, "doLog : mLogQueue is empty!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->getCategory()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$LoggingListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$LoggingListener;->doLog(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;)V

    const-string/jumbo v2, "UnifiedLogUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " >>> DeQueued : category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->getCategory()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", subType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->getSubType()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mInstance:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mInstance:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mInstance:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;

    return-object v0
.end method

.method private notifyLog()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLoggingJobCompleted:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public enQueue(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;)V
    .locals 3

    const-string/jumbo v0, "UnifiedLogUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " ---- enQueue : category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->getCategory()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", subType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->getSubType()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", queue size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",jobCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLoggingJobCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->notifyLog()V

    return-void
.end method

.method public setLoggingListener(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$LoggingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
