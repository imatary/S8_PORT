.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$AsyncDrawable;,
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final FACE_THUMBNAIL_SIZE:I

.field private static final FEATURE_IS_NOS:Z

.field private static final FEATURE_USE_QURAM_DECODER:Z

.field private static final SEARCH_FACE_ITEM_PATH:Ljava/lang/String; = "searchfaceitem"

.field private static final TAG:Ljava/lang/String; = "ImageWorker"

.field private static final THUMBNAIL_SIZE:I

.field private static final TYPE_THUMBNAIL:I = 0x1

.field private static final VIDEO_SEARCH_DIR:Ljava/lang/String;


# instance fields
.field private final mCacheService:Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

.field private final mContext:Landroid/content/Context;

.field private mExitTasksEarly:Z

.field private mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field private final mResources:Landroid/content/res/Resources;

.field private mSkipBorder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->FEATURE_IS_NOS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQuramDecoder:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->FEATURE_USE_QURAM_DECODER:Z

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->THUMBNAIL_SIZE:I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->FACE_THUMBNAIL_SIZE:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.face/.videosearch/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->VIDEO_SEARCH_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mExitTasksEarly:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mPauseWork:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mSkipBorder:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mCacheService:Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mSkipBorder:Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->VIDEO_SEARCH_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mCacheService:Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->getBrokenThumbnailBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/ImageView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;
    .locals 1

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->FEATURE_USE_QURAM_DECODER:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mPauseWork:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mExitTasksEarly:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->FEATURE_IS_NOS:Z

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->THUMBNAIL_SIZE:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->FACE_THUMBNAIL_SIZE:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->getRectOfObject(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private static cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->mData:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static cancelWork(Landroid/widget/ImageView;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-static {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mCacheService:Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v0, Lcom/sec/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;

    iget-object v1, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {v0, v1, v2, v3, v8}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_0
    invoke-static {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    return-object v6

    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v0
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$AsyncDrawable;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$AsyncDrawable;->getBitmapWorkerTask()Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBrokenThumbnailBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenMovieThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getRectOfObject(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    if-le p4, v1, :cond_2

    iget v1, p1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p4

    div-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p4

    div-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p4

    div-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p4

    div-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mSkipBorder:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->FEATURE_IS_NOS:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    const v0, 0x7f0202a0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f02029f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public loadImage(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Landroid/widget/ImageView;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Landroid/widget/ImageView;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$AsyncDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :try_start_0
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ImageWorker"

    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->cancelWork(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public setExitTasksEarly(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mExitTasksEarly:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->setPauseWork(Z)V

    return-void
.end method

.method public setPauseWork(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mPauseWork:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mPauseWork:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

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
