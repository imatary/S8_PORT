.class Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Ljava/io/File;",
        ">;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mFuture:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field private mNoNetworkProxy:Z

.field private final mProxySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/DownloadCache;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    return-object p1
.end method


# virtual methods
.method public addProxy(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 1

    invoke-static {p1, p0}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->access$302(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;)Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    const-wide/16 v2, 0x0

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$500(Lcom/sec/android/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v2

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$400(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$600(Lcom/sec/android/gallery3d/data/DownloadCache;)Lcom/sec/android/gallery3d/common/LruCache;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_4

    :try_start_1
    new-instance v0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache;JLjava/io/File;Lcom/sec/android/gallery3d/data/DownloadCache$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$600(Lcom/sec/android/gallery3d/data/DownloadCache;)Lcom/sec/android/gallery3d/common/LruCache;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lcom/sec/android/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "DownloadCache"

    const-string/jumbo v5, "Entrymap put fail"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-static {v7, v0}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->access$700(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    :goto_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v6

    :goto_4
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw v1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$400(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    const/16 v5, 0x10

    invoke-static {v1, v5}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$800(Lcom/sec/android/gallery3d/data/DownloadCache;I)V

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v0, v6

    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_4

    :cond_4
    move-object v0, v6

    goto :goto_1
.end method

.method public removeProxy(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$400(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mProxySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$400(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/io/File;
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-interface {p1, v4}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "cache"

    const-string/jumbo v5, ".tmp"

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$100(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mNoNetworkProxy:Z

    if-eqz v4, :cond_0

    invoke-static {p1, v3, v2}, Lcom/sec/android/gallery3d/data/DownloadUtils;->requestDownloadNoProxy(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z

    move-result v0

    :goto_0
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {p1, v7}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-object v4, v2

    :goto_1
    return-object v4

    :cond_0
    :try_start_1
    invoke-static {p1, v3, v2}, Lcom/sec/android/gallery3d/data/DownloadUtils;->requestDownload(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v7}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "DownloadCache"

    const-string/jumbo v5, "delete temp file is failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v4, "DownloadCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail to download"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1, v7}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-interface {p1, v7}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    throw v4
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public setNoNetworkProxy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mNoNetworkProxy:Z

    return-void
.end method
