.class public Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;
.super Lcom/sec/android/gallery3d/data/ImageCacheRequest;
.source "SCloudMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SCloudThumbRequest"
.end annotation


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mLocalFilePath:Ljava/lang/String;

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mRequestAttributes:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

.field private final mType:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V
    .locals 12

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-static/range {p6 .. p6}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v9

    const/4 v10, 0x1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JIIZ)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mType:I

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mLocalFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mRequestAttributes:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    return-void
.end method

.method private loadFaceRect(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->loadRectOfAllFaces()V

    :cond_0
    return-void
.end method

.method private updateBurstShotAttributes()V
    .locals 6

    const-wide/16 v4, 0x200

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "group_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getAlbumId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v4, v5, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v5, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_1
    return-void
.end method

.method private updatePanoramaAttribute()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    return v0
.end method

.method private updatePendingAttribute()V
    .locals 10

    const-wide/16 v8, 0x20

    const-wide/16 v6, 0x10

    const-wide/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getCachedPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getSCloudImageAttributes()Lcom/sec/android/gallery3d/remote/scloud/SCloudImageAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImageAttributes;->updateFileAccessAttribute()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4, v5, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v8, v9, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getSCloudImageAttributes()Lcom/sec/android/gallery3d/remote/scloud/SCloudImageAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImageAttributes;->updateSoundShotAttribute()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 13

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->isGolf()Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Lcom/sec/android/gallery3d/golf/GolfMgr;

    invoke-direct {v11}, Lcom/sec/android/gallery3d/golf/GolfMgr;-><init>()V

    iget-object v12, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/golf/GolfMgr;->createThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    if-eqz v11, :cond_5

    new-instance v8, Ljava/io/File;

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x2

    if-eq p2, v11, :cond_3

    const/4 v11, 0x3

    if-eq p2, v11, :cond_3

    const/4 v11, 0x4

    if-ne p2, v11, :cond_4

    :cond_3
    new-instance v3, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/sec/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_4

    invoke-static {p1, v9, v5, v7}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    invoke-static {p1, v11, v5, v7, p2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_5
    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    if-eqz v11, :cond_6

    if-nez v4, :cond_7

    :cond_6
    :try_start_1
    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    sget-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mBaseImageUri:Landroid/net/Uri;

    :goto_2
    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    check-cast v11, Landroid/content/Context;

    invoke-static {v11, v10}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :cond_7
    :goto_3
    if-nez v1, :cond_0

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v11, :cond_0

    iget-object v12, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v11, v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    if-eqz v11, :cond_9

    if-eqz v4, :cond_9

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v11, "SCloudMediaItem"

    const-string/jumbo v12, "failed to get thumbnail from cache path"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v6

    const-string/jumbo v11, "SCloudMediaItem"

    const-string/jumbo v12, "fail to get exif thumb"

    invoke-static {v11, v12, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_8
    :try_start_2
    sget-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mBaseVideoUri:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    const-string/jumbo v11, "SCloudMediaItem"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setNeedCloudOnlyThumb(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->updatePanoramaAttribute()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->loadFaceRect(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->updateBurstShotAttributes()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mRequestAttributes:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    sget-object v3, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITH_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->updatePendingAttribute()V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mType:I

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setNeedCloudOnlyThumb(Z)V

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mType:I

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/util/ResourceManager;->getCloudOnlyThumbBG(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
