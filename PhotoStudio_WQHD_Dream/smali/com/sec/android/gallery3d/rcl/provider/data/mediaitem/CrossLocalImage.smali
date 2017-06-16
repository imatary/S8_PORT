.class public Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;
.super Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;
.source "CrossLocalImage.java"


# static fields
.field private static final ITEM_PATH_STR:Ljava/lang/String; = "/local/image/item"

.field private static final TAG:Ljava/lang/String; = "CrossLocalImage"


# instance fields
.field private thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;-><init>(Landroid/content/Context;II)V

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->getCache()Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

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

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mMediaId:I

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
    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mContext:Landroid/content/Context;

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

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->uriHasUserId(Landroid/net/Uri;)Z

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
    .locals 16

    const-string v2, "CrossLocalImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImageThumbnail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mMediaId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/local/image/item/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mMediaId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mDateModified:J

    move/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->get(Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->getThumbBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mResource:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->getBrokenPictureThumbnail(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mIsBroken:Z

    :cond_1
    :goto_0
    const-string v2, "CrossLocalImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImageThumbnail mIsBroken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mIsBroken:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mIsBroken:Z

    if-nez v2, :cond_2

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->getCache(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    move-result-object v8

    div-int/lit8 v2, p2, 0x8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mDateModified:J

    move-object v9, v3

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->put(Ljava/lang/String;JILandroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mIsThumbExist:Z

    :cond_2
    return-object v7

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->getResizedThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mIsBroken:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mDateModified:J

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->put(Ljava/lang/String;JILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getThumbnailFromCache(I)Landroid/graphics/Bitmap;
    .locals 5

    const-string v2, "CrossLocalImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImageThumbnailFromCache : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mMediaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/image/item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mMediaId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->getCache(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossLocalImage;->mDateModified:J

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->get(Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
