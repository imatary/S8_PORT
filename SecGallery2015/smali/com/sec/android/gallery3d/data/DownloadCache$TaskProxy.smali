.class Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskProxy"
.end annotation


# instance fields
.field private mEntry:Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

.field private mIsCancelled:Z

.field private mTask:Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/DownloadCache$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->get(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;)Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->setResult(Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)V

    return-void
.end method

.method static synthetic access$902(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return p1
.end method

.method private declared-synchronized get(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy$1;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)V

    invoke-interface {p1, v1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "DownloadCache"

    const-string/jumbo v2, "ignore interrupt"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1, v1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method private declared-synchronized setResult(Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
