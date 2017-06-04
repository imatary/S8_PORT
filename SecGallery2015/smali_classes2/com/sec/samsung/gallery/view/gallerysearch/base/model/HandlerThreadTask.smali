.class public abstract Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;
.super Ljava/lang/Object;
.source "HandlerThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$ResultsHandler;,
        Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;
    }
.end annotation


# static fields
.field private static final FINISH_TOKEN:I = -0x21524111

.field private static final MSG_PUBLISH_RESULT:I = 0x0

.field private static final MSG_PUBLISH_TEMP_RESULT:I = 0x1

.field private static final START_TOKEN:I = -0x2f2f0ff3

.field private static final THREAD_NAME:Ljava/lang/String; = "HandlerThreadTask"


# instance fields
.field private mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

.field private final mLock:Ljava/lang/Object;

.field private final mResultHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$ResultsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$ResultsHandler;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mResultHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final process()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v3, "HandlerThreadTask"

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask$RequestHandler;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    const v3, -0x2f2f0ff3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    const v3, -0x2f2f0ff3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    const v3, -0x21524111

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract publishResults(Ljava/lang/Object;)V
.end method

.method protected abstract publishTempResults(Ljava/lang/Object;)V
.end method

.method public stop()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->mThreadHandler:Landroid/os/Handler;

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
