.class public Lcom/sec/android/gallery3d/rcl/provider/adapter/ThumbnailSettingTaskDispatcher;
.super Ljava/lang/Object;
.source "ThumbnailSettingTaskDispatcher.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x3

.field private static final KEEP_ALIVE:I = 0xa

.field private static final MAXIMUM_POOL_SIZE:I = 0x3

.field private static final MAX_SIZE:I = 0x48

.field private static final TAG:Ljava/lang/String; = "AsyncTaskDispatcher"

.field private static final mExecutor:Ljava/util/concurrent/Executor;

.field private static final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v2, 0x3

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/ThumbnailSettingTaskDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/sec/android/gallery3d/rcl/provider/adapter/ThumbnailSettingTaskDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/sec/android/gallery3d/rcl/provider/util/PriorityThreadFactory;

    const-string v0, "thread-pool"

    const/16 v3, 0xa

    invoke-direct {v8, v0, v3}, Lcom/sec/android/gallery3d/rcl/provider/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/sec/android/gallery3d/rcl/provider/adapter/ThumbnailSettingTaskDispatcher;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static put(Landroid/os/AsyncTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/adapter/ThumbnailSettingTaskDispatcher;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/adapter/ThumbnailSettingTaskDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    const/16 v3, 0x48

    if-le v2, v3, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/adapter/ThumbnailSettingTaskDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AsyncTaskDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncTask execution fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
