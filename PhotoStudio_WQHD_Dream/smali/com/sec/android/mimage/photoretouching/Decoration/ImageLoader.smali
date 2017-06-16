.class public Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$BitmapDisplayer;,
        Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;,
        Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;
    }
.end annotation


# static fields
.field static final stub_id:I = 0x7f020278


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;

.field fileCache:Lcom/sec/android/mimage/photoretouching/Decoration/FileCache;

.field handler:Landroid/os/Handler;

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field memoryCache:Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->memoryCache:Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->imageViews:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/FileCache;

    invoke-direct {v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/FileCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->fileCache:Lcom/sec/android/mimage/photoretouching/Decoration/FileCache;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    const/16 v0, 0x400

    const/16 v3, 0x400

    :try_start_0
    new-array v1, v3, [B

    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 13

    const/16 v12, 0x46

    const/4 v10, 0x0

    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v11, 0x0

    invoke-static {v7, v11, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    const/16 v0, 0x46

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v6, 0x1

    :goto_0
    div-int/lit8 v11, v9, 0x2

    if-lt v11, v12, :cond_0

    div-int/lit8 v11, v3, 0x2

    if-ge v11, v12, :cond_1

    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v11, 0x0

    invoke-static {v8, v11, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :goto_1
    return-object v1

    :cond_1
    div-int/lit8 v9, v9, 0x2

    div-int/lit8 v3, v3, 0x2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 v6, v6, 0x2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    move-object v1, v10

    goto :goto_1

    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method private decodeResource(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->fileCache:Lcom/sec/android/mimage/photoretouching/Decoration/FileCache;

    invoke-virtual {v9, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/FileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->decodeResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const/16 v9, 0x7530

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v9, 0x7530

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of v9, v4, Ljava/lang/OutOfMemoryError;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->memoryCache:Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    const/4 v0, 0x0

    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v9

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_2
    throw v9

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotosLoader;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->memoryCache:Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->fileCache:Lcom/sec/android/mimage/photoretouching/Decoration/FileCache;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/FileCache;->clear()V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->memoryCache:Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;

    invoke-virtual {v1, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v1, 0x7f020278

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method imageViewReused(Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader;->imageViews:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/sec/android/mimage/photoretouching/Decoration/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
