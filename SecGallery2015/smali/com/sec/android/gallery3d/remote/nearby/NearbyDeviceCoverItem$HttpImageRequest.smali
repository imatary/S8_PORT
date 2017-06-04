.class Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;
.super Ljava/lang/Object;
.source "NearbyDeviceCoverItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mType:I

.field private final mUriString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;Ljava/lang/String;I)V
    .locals 5

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mUriString:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mType:I

    if-eqz p2, :cond_0

    const-string/jumbo v2, "wlan0"

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mDevice:Lcom/samsung/android/allshare/Device;
    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$100(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Lcom/samsung/android/allshare/Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    # setter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;
    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$202(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NearbyDeviceCoverItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initURLConnection()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mUriString:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mUriString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    # setter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;
    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$202(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NearbyDeviceCoverItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mType:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mPath:Lcom/sec/android/gallery3d/data/Path;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mDataVersion:J
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$500(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)J

    move-result-wide v2

    iget v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mType:I

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v8

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mType:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v1, v11

    :goto_0
    return-object v1

    :cond_0
    if-eqz v8, :cond_2

    :try_start_1
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v1, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v1, v2, v3, v10}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v1, "NearbyDeviceCoverItem"

    const-string/jumbo v2, "decode cached failed "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mType:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v1, v11

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # invokes: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->convertToThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v1, v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$600(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mType:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mType:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    const/4 v9, 0x0

    :try_start_3
    const-string/jumbo v1, "NearbyDeviceCoverItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUriString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mUriString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->initURLConnection()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-nez v1, :cond_5

    if-eqz v9, :cond_4

    :try_start_4
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_1
    move-object v1, v11

    goto :goto_0

    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->mType:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v1

    :catch_0
    move-exception v7

    const-string/jumbo v1, "NearbyDeviceCoverItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    if-eqz v9, :cond_6

    :try_start_6
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    :goto_2
    move-object v1, v11

    goto/16 :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v1, "NearbyDeviceCoverItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v7

    :try_start_7
    const-string/jumbo v1, "NearbyDeviceCoverItem"

    const-string/jumbo v2, "Error while retrieving nearby cover item"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NearbyDeviceCoverItem"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v9, :cond_6

    :try_start_8
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v7

    const-string/jumbo v1, "NearbyDeviceCoverItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception v1

    if-eqz v9, :cond_7

    :try_start_9
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_7
    :goto_3
    throw v1

    :catch_4
    move-exception v7

    const-string/jumbo v2, "NearbyDeviceCoverItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
