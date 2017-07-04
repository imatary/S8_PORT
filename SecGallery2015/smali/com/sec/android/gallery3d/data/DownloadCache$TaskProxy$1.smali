.class Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy$1;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->get(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->access$300(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->removeProxy(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->access$902(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;

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
