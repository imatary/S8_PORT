.class public Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;
.super Lcom/sec/android/gallery3d/data/ImageCacheRequest;
.source "UnionLocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UnionLocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnionLocalImageRequest"
.end annotation


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mIsGolf:Z

.field private final mLocalFilePath:Ljava/lang/String;

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mRequestAttributes:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;ZLcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V
    .locals 11

    invoke-static/range {p5 .. p5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v9

    const/4 v10, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JIIZ)V

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mType:I

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mIsGolf:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mRequestAttributes:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    return-void
.end method

.method private loadFaceRect(Z)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->loadRectOfAllFaces()V

    :cond_0
    return-void
.end method

.method private updateBurstShotAttributes()V
    .locals 6

    const-wide/16 v4, 0x200

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "group_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and bucket_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and (file_status = 0 or file_status = 4)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v4, v5, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v5, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_1
    return-void
.end method

.method private updatePanoramaAttribute()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    return v0
.end method

.method private updatePendingAttribute()V
    .locals 8

    const-wide/16 v6, 0x20

    const-wide/16 v4, 0x10

    const-wide/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->access$000(Lcom/sec/android/gallery3d/data/UnionLocalImage;)Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateFileAccessAttribute()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v6, v7, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_2
    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_SOUND_SCENE_ENABLED:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->access$100(Lcom/sec/android/gallery3d/data/UnionLocalImage;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v4, v5, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mIsGolf:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/golf/GolfMgr;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/golf/GolfMgr;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/golf/GolfMgr;->createThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v8, v0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, "UnionLocalImage"

    const-string/jumbo v4, "mLocalFilePath is null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    if-ne p2, v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodePanoramaThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v0, "UnionLocalImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OutOfMemoryError : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v10, 0x20000000

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isRaw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v6, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v7

    move-object v0, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnailDirectly(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IIZZZ)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_0

    :cond_6
    move v6, v5

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3, p2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public resizeDownAndCropCenterForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->access$200(Lcom/sec/android/gallery3d/data/UnionLocalImage;)I

    move-result v0

    if-nez v0, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mTargetSize:I

    invoke-static {p1, v2, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->loadRectOfAllFaces()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getRectOfAllFaces(Z)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mTargetSize:I

    invoke-static {p1, v2, v1, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropFace(Landroid/graphics/Bitmap;ILandroid/graphics/RectF;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mTargetSize:I

    invoke-static {p1, v2, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mTargetSize:I

    invoke-static {p1, v2, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->resizeDownAndCropCenterForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public resizeDownBySideLengthForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->FeatureUseCropCenterPanoramaThumbnail:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mTargetSize:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->resizeDownBySideLengthForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isValidRights(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mType:I

    if-ne v2, v4, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->updatePanoramaAttribute()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->loadFaceRect(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->updateBurstShotAttributes()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mRequestAttributes:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    sget-object v3, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITH_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->updatePendingAttribute()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_6
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mType:I

    if-ne v2, v4, :cond_7

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
