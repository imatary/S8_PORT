.class public Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;
.super Ljava/lang/Object;
.source "SlinkImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;,
        Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;,
        Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;,
        Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromRemoteTask;,
        Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$NullImageCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sDecodeBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;

.field private final mContext:Landroid/content/Context;

.field private final mFileCacheExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRemoteExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->sDecodeBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v0, 0x4

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mFileCacheExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move v2, v0

    move v3, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mRemoteExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$NullImageCache;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$NullImageCache;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$NullImageCache;)V

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;II)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->calcScaleFactor(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->loadBitmap(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->isBitmapTooSmall(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mRemoteExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->sDecodeBuffer:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->createFineScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Ljava/io/Closeable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->closeInputStreamQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->dispatchBitmapResult(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private calcScaleFactor(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;II)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxHeight()I

    move-result v1

    if-gt p3, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxWidth()I

    move-result v1

    if-le p2, v1, :cond_1

    :cond_0
    if-le p2, p3, :cond_2

    int-to-float v1, p3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_2
    int-to-float v1, p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private closeInputStreamQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createFineScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v1, :cond_0

    int-to-float v7, v1

    int-to-float v8, v0

    div-float v5, v7, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v0, v7, :cond_1

    move v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v2, v7

    :goto_0
    if-lez v3, :cond_0

    if-lez v2, :cond_0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1, v3, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v6

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v3, v7

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v4

    sget-boolean v7, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Out of memory fine-scaling Bitmap."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private dispatchBitmapResult(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$4;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCacheKey(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaType()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getAlbumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getRowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMediaType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isBitmapTooSmall(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->getRequestedMaxWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->getRequestedMaxHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadBitmap(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v7, "cancel"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)V

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "openInputStream for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    const/4 v5, 0x0

    :try_start_2
    invoke-static {p1, v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)V

    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$3;

    invoke-direct {v7, p0, p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$3;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "openInputStream returned null for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_0
    move-object v4, v6

    :cond_3
    :goto_1
    return-object v4

    :catchall_0
    move-exception v5

    const/4 v6, 0x0

    :try_start_4
    invoke-static {p1, v6}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$8(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/net/Uri;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_2
    throw v5

    :cond_5
    :try_start_6
    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->isCanceled()Z
    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_3
    move-object v4, v6

    goto :goto_1

    :cond_7
    :try_start_8
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->getRequest()Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v3

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->bitmapFactoryOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    iget-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    if-nez v5, :cond_8

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->sDecodeBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v1, 0x1

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_9
    invoke-static {v2, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v4

    :goto_4
    :try_start_a
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->closeInputStreamQuietly(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/4 v5, 0x0

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    :cond_9
    # invokes: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->isCanceled()Z
    invoke-static {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_a
    :goto_5
    move-object v4, v6

    goto :goto_1

    :cond_b
    if-eqz v4, :cond_c

    :try_start_c
    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getMaxHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->createFineScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_c
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->dispatchBitmapResult(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v2, :cond_3

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_4

    :catch_4
    move-exception v5

    goto :goto_5

    :catch_5
    move-exception v6

    goto :goto_2
.end method

.method private throwIfNotOnMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public loadDeviceIcon(JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[ILandroid/widget/ImageView;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
    .locals 9

    const/4 v0, 0x0

    new-instance v7, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;

    invoke-direct {v7, p6, v0, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;-><init>(Landroid/widget/ImageView;II)V

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->loadDeviceIcon(JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[ILcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public loadDeviceIcon(JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[ILcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
    .locals 19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->sort([I)V

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;

    invoke-interface {v3, v6}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;->getBitmapInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;

    move-result-object v16

    new-instance v2, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->updateImageContainer(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V

    if-eqz v16, :cond_1

    sget-boolean v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cache hit for device icon "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$4(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$5(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Z)V

    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->onResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Z)V

    :goto_0
    return-object v2

    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->onResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mFileCacheExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;

    new-instance v8, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object v15, v2

    invoke-direct/range {v8 .. v15}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$2;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[ILcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V

    const/4 v5, 0x0

    invoke-direct {v4, v8, v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;-><init>(Ljava/lang/Runnable;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadImage(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;Landroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
    .locals 12

    const/4 v6, 0x1

    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadImage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->throwIfNotOnMainThread()V

    if-nez p3, :cond_1

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->getCacheKey(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;

    invoke-interface {v1, v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;->getBitmapInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;

    move-result-object v11

    if-eqz v11, :cond_5

    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cache hit for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;)V

    invoke-interface {p2, v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->updateImageContainer(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$6(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/BitmapFactory$Options;)V

    invoke-direct {p0, v11, p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->isBitmapTooSmall(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0, v6}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$5(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Z)V

    :cond_3
    :goto_0
    invoke-interface {p2, v0, v6}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->onResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Z)V

    # getter for: Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->complete:Z
    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$7(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    return-object v0

    :cond_4
    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bitmap in cache too small for request "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->ENABLE_LOGGING:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cache miss for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v5, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    const/4 v7, 0x0

    move-object v6, p0

    move-object v8, p1

    move-object v9, v4

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;)V

    invoke-static {v5, p3}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;->access$6(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p2, v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->updateImageContainer(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V

    if-nez v11, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->isChacheOnly()Z

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;->onResponse(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;Z)V

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->isChacheOnly()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->mFileCacheExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;

    new-instance v3, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$LoadFromFileCacheTask;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->getPriority()I

    move-result v6

    invoke-direct {v2, v3, v6}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$FIFOPriofityRunnable;-><init>(Ljava/lang/Runnable;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_8
    move-object v0, v5

    goto :goto_1
.end method

.method public loadImageFromCursor(Landroid/database/Cursor;Landroid/widget/ImageView;IIIII)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;

    invoke-direct {v0, p2, p6, p7}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageViewImageListener;-><init>(Landroid/widget/ImageView;II)V

    invoke-static {p1, p3, p4, p5}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;->createFromCursor(Landroid/database/Cursor;III)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->loadImage(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageRequest;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageListener;Landroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    move-result-object v2

    return-object v2
.end method

.method public loadImageFromCursor(Landroid/database/Cursor;Landroid/widget/ImageView;IIIIIZ)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;
    .locals 1

    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader;->loadImageFromCursor(Landroid/database/Cursor;Landroid/widget/ImageView;IIIII)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method
