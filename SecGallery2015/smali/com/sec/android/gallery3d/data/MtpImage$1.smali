.class Lcom/sec/android/gallery3d/data/MtpImage$1;
.super Ljava/lang/Object;
.source "MtpImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/MtpImage;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field private final mCacheService:Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

.field private final mKey:Lcom/sec/android/gallery3d/data/Path;

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/MtpImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/MtpImage;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MtpImage;->access$000(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->mCacheService:Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/MtpImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MtpImage;->access$100(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->mKey:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method private getThumbnailFromCache(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->mCacheService:Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->mKey:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/MtpImage;->access$800(Lcom/sec/android/gallery3d/data/MtpImage;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v7

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v6, v9

    :goto_0
    return-object v6

    :cond_0
    if-eqz v7, :cond_1

    :try_start_1
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v1, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v2, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {p1, v0, v1, v2, v8}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v6, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v0
.end method

.method private setThumbnailToCache(Landroid/graphics/Bitmap;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/data/MtpImage;->access$900(Lcom/sec/android/gallery3d/data/MtpImage;Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->mCacheService:Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->mKey:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/MtpImage;->access$800(Lcom/sec/android/gallery3d/data/MtpImage;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->putImageData(Lcom/sec/android/gallery3d/data/Path;JI[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpImage$1;->getThumbnailFromCache(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$400(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MtpImage;->access$200(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v5

    invoke-static {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MtpImage;->access$300(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/data/MtpClient;->getThumbnail(Ljava/lang/String;I)[B

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v4, v2

    if-nez v4, :cond_4

    :cond_1
    const-string/jumbo v3, "MtpImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Google MtpDevice returns thumbnail to null or empty : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MtpImage;->access$500(Lcom/sec/android/gallery3d/data/MtpImage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v3

    if-ne v3, v7, :cond_3

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$000(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$000(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    invoke-static {p1, v2, v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v1, v3

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    const-string/jumbo v3, "MtpImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decoding failed so bitmap is null or recycled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MtpImage;->access$500(Lcom/sec/android/gallery3d/data/MtpImage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_7
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v3

    if-ne v3, v7, :cond_8

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$000(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$000(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    invoke-static {v0, v3, v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_c
    const-string/jumbo v3, "MtpImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resize failed so bitmap is null or recycled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MtpImage;->access$500(Lcom/sec/android/gallery3d/data/MtpImage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_d
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v3

    if-ne v3, v7, :cond_e

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$000(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$000(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$1;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_10
    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MtpImage$1;->setThumbnailToCache(Landroid/graphics/Bitmap;)V

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/MtpImage$1;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
