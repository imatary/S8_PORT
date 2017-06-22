.class public Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;
.super Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;
.source "CrossCloudImage.java"


# static fields
.field private static final CLOUD_ITEM_PATH_STR:Ljava/lang/String; = "/scloud/image/item"

.field private static final TAG:Ljava/lang/String; = "CrossCloudImage"


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

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 6

    const-string v0, "com.sec.android.gallery3d.provider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/scloud/image/item"

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mCloudId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getThumbnail(III)Landroid/graphics/Bitmap;
    .locals 15

    const-string v2, "CrossCloudImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImageThumbnail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mCloudId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/scloud/image/item/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mCloudId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mDateModified:J

    move/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->get(Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mCloudIsAvailableThumb:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mResource:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->getBrokenPictureThumbnail(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mIsBroken:Z

    :cond_1
    :goto_0
    const-string v2, "CrossCloudImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImageThumbnail mIsBroken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mIsBroken:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mIsBroken:Z

    if-nez v2, :cond_2

    if-eqz v7, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->getCache(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    move-result-object v8

    div-int/lit8 v2, p2, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0, v7, v2, v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v13

    iget-wide v10, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mDateModified:J

    move-object v9, v3

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->put(Ljava/lang/String;JILandroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mIsThumbExist:Z

    :cond_2
    return-object v7

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mThumbFilePath:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mThumbFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mThumbFilePath:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->getThumbBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mThumbFilePath:Ljava/lang/String;

    if-eqz v2, :cond_5

    if-nez v7, :cond_6

    :cond_5
    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mCloudId:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->CLOUD_IMAGE_BASE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->getCloudThumbnail(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_6
    if-eqz v7, :cond_1

    move/from16 v0, p2

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->getResizedThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mIsBroken:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->thumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mDateModified:J

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->put(Ljava/lang/String;JILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getThumbnailFromCache(I)Landroid/graphics/Bitmap;
    .locals 5

    const-string v2, "CrossCloudImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImageThumbnailFromCache : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mCloudId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/scloud/image/item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mCloudId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->getCache(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossCloudImage;->mDateModified:J

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->get(Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
