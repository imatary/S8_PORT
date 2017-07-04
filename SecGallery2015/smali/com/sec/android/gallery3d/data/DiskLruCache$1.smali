.class Lcom/sec/android/gallery3d/data/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/DiskLruCache;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$1;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$1;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$1;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$000(Lcom/sec/android/gallery3d/data/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$1;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$100(Lcom/sec/android/gallery3d/data/DiskLruCache;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$1;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$200(Lcom/sec/android/gallery3d/data/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$1;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$300(Lcom/sec/android/gallery3d/data/DiskLruCache;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DiskLruCache$1;->this$0:Lcom/sec/android/gallery3d/data/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache;->access$402(Lcom/sec/android/gallery3d/data/DiskLruCache;I)I

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
