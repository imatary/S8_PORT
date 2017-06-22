.class public Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;
.super Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;
.source "CrossLocalVideo.java"


# static fields
.field private static final CAMERA_BUCKET_NAME:Ljava/lang/String;

.field private static final EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

.field private static final HIGHLIGHT_BUCKET_NAME:Ljava/lang/String;

.field private static final ITEM_PATH_STR:Ljava/lang/String; = "/local/video/item"

.field private static final SDCARD_CAMERA_BUCKET_NAME:Ljava/lang/String; = "/storage/extSdCard/DCIM/Camera"

.field private static final TAG:Ljava/lang/String; = "CrossLocalVideo"


# instance fields
.field private thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Highlight Video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->HIGHLIGHT_BUCKET_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;-><init>(Landroid/content/Context;II)V

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->getCache()Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    return-void
.end method

.method private static uriHasUserId(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 6

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mMediaId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->myUserId()I

    move-result v3

    sget v4, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->USER_CURRENT:I

    if-eq v3, v4, :cond_0

    const-string v4, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbnail(III)Landroid/graphics/Bitmap;
    .locals 18

    const-string v2, "CrossLocalVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoThumbnail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mMediaId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/local/video/item/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mMediaId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mDateModified:J

    move/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->get(Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const-wide/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mFilePath:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mFilePath:Ljava/lang/String;

    const-string v4, "/storage/extSdCard/DCIM/Camera"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mFilePath:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->HIGHLIGHT_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/32 v16, 0xe975a0

    :cond_1
    const/4 v2, 0x2

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v7, v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mDateModified:J

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->put(Ljava/lang/String;JILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v15, 0x0

    :cond_2
    :goto_0
    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->getBrokenVideoThumbnail(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mIsBroken:Z

    :goto_1
    const-string v2, "CrossLocalVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoThumbnail mIsBroken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mIsBroken:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mIsBroken:Z

    if-nez v2, :cond_3

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->getCache(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    move-result-object v8

    div-int/lit8 v2, p2, 0x8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mDateModified:J

    move-object v9, v3

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->put(Ljava/lang/String;JILandroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mIsThumbExist:Z

    :cond_3
    return-object v7

    :catch_0
    move-exception v14

    const-string v2, "CrossLocalVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoThumbnail():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v14

    :try_start_2
    const-string v2, "CrossLocalVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoThumbnail():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v14

    const-string v2, "CrossLocalVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoThumbnail():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v15, 0x0

    :goto_2
    throw v2

    :catch_3
    move-exception v14

    const-string v4, "CrossLocalVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoThumbnail():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mIsBroken:Z

    goto/16 :goto_1
.end method

.method public getThumbnailFromCache(I)Landroid/graphics/Bitmap;
    .locals 5

    const-string v2, "CrossLocalVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoThumbnailFromCache : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mMediaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/video/item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mMediaId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->getCache(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalVideo;->mDateModified:J

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->get(Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
