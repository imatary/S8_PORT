.class Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;
.super Ljava/lang/Object;
.source "NearbyItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;
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
.field private mInputStream:Ljava/io/BufferedInputStream;

.field private final mType:I

.field private mURLConnection:Ljava/net/URLConnection;

.field private final mUriString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mURLConnection:Ljava/net/URLConnection;

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mUriString:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/lang/String;ILcom/sec/android/gallery3d/remote/nearby/NearbyItem$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;)Ljava/io/BufferedInputStream;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    return-object v0
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mUriString:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "no uri to request"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :cond_0
    :goto_0
    return-object v14

    :cond_1
    new-instance v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$700(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$800(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v17

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :cond_2
    if-eqz v17, :cond_4

    :try_start_1
    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "found is true"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v20

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v3, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v6, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v8, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v3, v6, v8, v1}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    if-nez v14, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "decode cached failed "

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "jc is cancelled"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v3

    :cond_5
    :try_start_2
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mUriString:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mURLConnection:Ljava/net/URLConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mURLConnection:Ljava/net/URLConnection;

    const v6, 0xea60

    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    new-instance v3, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "bmp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "bmp type"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->convertInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v15

    const/4 v3, 0x0

    array-length v6, v15

    invoke-static {v15, v3, v6}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v14

    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "jc is cancelled"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_6
    :try_start_3
    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "other type"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getHeight()I

    move-result v6

    mul-int/2addr v3, v6

    mul-int v6, v22, v22

    mul-int/lit8 v6, v6, 0x2

    if-le v3, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getHeight()I

    move-result v6

    move/from16 v0, v22

    invoke-static {v3, v6, v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-static {v3, v6, v0}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_1

    :cond_8
    if-nez v14, :cond_a

    const-string/jumbo v6, "RemoteMediaItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot decode bitmap from InputStream : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v3}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getWidth()I

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getHeight()I

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$402(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v3, v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$502(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;I)I

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    packed-switch v3, :pswitch_data_0

    :goto_3
    if-nez v14, :cond_10

    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "bitmap is null"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :pswitch_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getHeight()I

    move-result v6

    if-le v3, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getWidth()I

    move-result v18

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    move/from16 v0, v18

    if-le v0, v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v14, v3, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v14

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mUriString:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->getOrientationValue(Ljava/lang/String;)I

    move-result v21

    const/4 v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_d

    const/16 v21, 0x0

    :cond_d
    const/4 v3, 0x1

    move/from16 v0, v21

    invoke-static {v14, v0, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getHeight()I

    move-result v18

    goto :goto_4

    :cond_f
    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-static {v14, v0, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v14, v3, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_3

    :cond_10
    invoke-static {v14}, Lcom/sec/android/gallery3d/common/BitmapUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "thumbnail image download"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$900(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mType:I

    move-object v8, v2

    move-wide v10, v4

    invoke-interface/range {v8 .. v13}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->putImageData(Lcom/sec/android/gallery3d/data/Path;JI[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v16

    :try_start_6
    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v6, "Error while retrieving NearbyImage"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "RemoteMediaItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_12
    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
