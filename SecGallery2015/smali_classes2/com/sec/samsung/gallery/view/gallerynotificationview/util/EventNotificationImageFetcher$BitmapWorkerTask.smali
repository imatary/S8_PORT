.class Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "EventNotificationImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComposeImageItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

.field private final mTextViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewModelReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mContextReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mTextViewReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p5, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mComposeImageItems:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mComposeImageItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getBitmapFromFilePath(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getFaceSize()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p2, v0}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private getCanvasDrawing4Position()[[F
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [[F

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v4, [F

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I

    move-result v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getFaceSize()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v5

    aput v7, v1, v6

    aput-object v1, v0, v6

    new-array v1, v4, [F

    aput v7, v1, v5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I

    move-result v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getFaceSize()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aput v2, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v4, [F

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I

    move-result v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getFaceSize()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v2, v5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I

    move-result v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getFaceSize()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v2, v6

    aput-object v2, v0, v1

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getCoverDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object v0
.end method

.method private getCoverFromCache(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getChannelPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getChannelCreationTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getTotalItemCount()I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v2, v10

    const/4 v4, 0x1

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v8, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$DummyJob;

    invoke-direct {v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$DummyJob;-><init>()V

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {v8, v0, v2, v3, v9}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_1
    invoke-static {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v0
.end method

.method private getFaceCoverBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getCoverFromCache(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getWhoIsThisCover(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->putCoverImage(Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Landroid/graphics/Bitmap;)V

    move-object v1, v0

    goto :goto_0
.end method

.method private getFaceSize()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$1100(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getHiddenCoverBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getCoverFromCache(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getHiddenCoverPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->putCoverImage(Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Landroid/graphics/Bitmap;)V

    move-object v1, v0

    goto :goto_0
.end method

.method private getNormalCoverBitmap()Landroid/graphics/Bitmap;
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getSavedCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getSavedCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v1

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->values()[Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    move-result-object v5

    aget-object v2, v5, v3

    sget-object v5, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$2;->$SwitchMap$com$sec$samsung$gallery$access$cmh$CMHInterface$STORY_TYPES:[I

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->requestDefaultlCoverBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v4, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getHiddenCoverBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v4, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getFaceCoverBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 2

    instance-of v1, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getThumbPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSharedCoverBitmap()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getSavedCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->needToContactUpdate()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getSavedCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->updateContactInfo()V

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getMasterPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mContext:Landroid/content/Context;

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getSuggestedFaceBitmap(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;
    .locals 17

    const/4 v13, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->FACES_VIEW_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$1200()[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "data = ? "

    const-string/jumbo v6, "_id limit 1"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    :cond_0
    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$1300()I

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeSampledBitmap(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v15, :cond_1

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/gallerysearch/base/CategoryUtils;->convertToFaceRect(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFaceRectOfObject(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v16

    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v10

    const/4 v11, 0x1

    invoke-static/range {v6 .. v11}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropFaceByRect(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_1
    return-object v6

    :catch_0
    move-exception v12

    :try_start_1
    const-string/jumbo v1, "EvntNotiImgFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SQLiteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v13}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private getWhoIsThisCover(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v0, 0x0

    const/4 v3, 0x4

    const/4 v13, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getItemList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v3, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getCoverDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v11, 0x6

    invoke-direct {v8, v11}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getCanvasDrawing4Position()[[F

    move-result-object v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v6, :cond_4

    const/4 v5, 0x0

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_4
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getPath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getSuggestedFaceBitmap(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_6

    const/4 v5, 0x0

    invoke-direct {p0, v6, v9}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getBitmapFromFilePath(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_2

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getFaceSize()I

    move-result v11

    invoke-static {v10, v11, v13}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v11

    invoke-static {v10, v11, v13}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    aget-object v11, v2, v4

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v12, v2, v4

    aget v12, v12, v13

    invoke-virtual {v1, v10, v11, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->setCompleteCoverCreation(Z)V

    goto :goto_0
.end method

.method private putCoverImage(Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Landroid/graphics/Bitmap;)V
    .locals 7

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->checkCompleteCoverCreation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getChannelPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getChannelCreationTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getTotalItemCount()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->putImageData(Lcom/sec/android/gallery3d/data/Path;JI[B)V

    goto :goto_0
.end method

.method private refreshCoverImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->hideErrorIcon(Landroid/widget/ImageView;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->setCoverBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private refreshShareCoverImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->hideErrorIcon(Landroid/widget/ImageView;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p4, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->setCoverBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private requestDefaultlCoverBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getCoverItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->requestThumbnail(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_0
    return-void
.end method

.method private requestThumbnail(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 8

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mComposeImageItems:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->cancelImageRequest()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mComposeImageItems:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationTab:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-object v2, p1

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIIZLcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mComposeImageItems:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->requestImage()V

    return-void

    :cond_1
    move v5, v4

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getSharedCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->getNormalCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-virtual {v4, v0, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->showErrorIcon(Landroid/content/Context;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->hideErrorIcon(Landroid/widget/ImageView;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$1500(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->access$102(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_5
    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventType()I

    move-result v4

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mTextViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->refreshShareCoverImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->refreshCoverImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 12

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v5, v6

    move-object v7, v8

    :goto_0
    array-length v1, v0

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    array-length v4, v3

    :cond_0
    add-int v10, v1, v4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_1

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1
    return-object v9

    :catch_0
    move-exception v2

    :goto_1
    :try_start_3
    const-string/jumbo v10, "EvntNotiImgFetcher"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    :goto_2
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v10

    :catchall_1
    move-exception v10

    move-object v7, v8

    goto :goto_2

    :catchall_2
    move-exception v10

    move-object v5, v6

    move-object v7, v8

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v7, v8

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v5, v6

    move-object v7, v8

    goto :goto_1
.end method
