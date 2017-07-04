.class Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;
.super Lcom/sec/android/gallery3d/data/ImageCacheRequest;
.source "ShareEventItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/gallery3d/data/ImageCacheRequest;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mType:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;ILcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 9

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$000(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getDateInMs()J

    move-result-wide v4

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p3

    move v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JIIZ)V

    iput p2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    iget v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mTargetSize:I

    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v8, 0x2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$100(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "ShareEventItem"

    const-string/jumbo v8, "mLocalFilePath is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$100(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eq p2, v8, :cond_3

    const/4 v7, 0x3

    if-eq p2, v7, :cond_3

    const/4 v7, 0x4

    if-ne p2, v7, :cond_5

    :cond_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$200(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOwner:I

    if-eq v7, v8, :cond_5

    new-instance v2, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$100(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_4

    invoke-static {p1, v6, v3, v5}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$100(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v3, v5, p2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "ShareEventItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to find file to read thumbnail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {v9}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$100(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v7, "ShareEventItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to get thumbnail from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {v9}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$100(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v7, "ShareEventItem"

    const-string/jumbo v8, "fail to get exif thumb"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    const/4 v7, 0x6

    if-ne p2, v7, :cond_4

    :try_start_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$100(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodePanoramaThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v7, "ShareEventItem"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v3, :cond_1

    const/4 v14, 0x0

    :cond_0
    :goto_0
    return-object v14

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getDateInMs()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v15

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :cond_2
    if-eqz v15, :cond_4

    :try_start_1
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v3, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v4, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v5, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v3, v4, v5, v1}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    if-nez v14, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "ShareEventItem"

    const-string/jumbo v4, "decode cached failed "

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->loadRectOfSmartCrop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v14, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v3

    :cond_5
    if-nez v14, :cond_6

    const-string/jumbo v3, "ShareEventItem"

    const-string/jumbo v4, "decode orig failed "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    if-nez v14, :cond_7

    const-string/jumbo v3, "ShareEventItem"

    const-string/jumbo v4, "bitmap is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "ShareEventItem"

    const-string/jumbo v4, "jc isCancelled!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/high16 v3, -0x1000000

    const/4 v4, 0x1

    invoke-static {v14, v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->setBGColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v14

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_b
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->access$200(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    move-result-object v3

    iget-wide v10, v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mDateInMs:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->mType:I

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    move-object v8, v2

    invoke-interface/range {v8 .. v13}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->putImageData(Lcom/sec/android/gallery3d/data/Path;JI[B)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
