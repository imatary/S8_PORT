.class public Lcom/sec/android/gallery3d/data/UnionSCloudVideo;
.super Lcom/sec/android/gallery3d/data/UnionVideo;
.source "UnionSCloudVideo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/UnionSCloudItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "UnionSCloudVideo"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 6

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/sec/android/gallery3d/data/UnionVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "UnionSCloudVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cannot get cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :try_start_2
    const-string/jumbo v3, "UnionSCloudVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cannot find data for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/gallery3d/data/UnionVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private getVideoURL()Ljava/lang/String;
    .locals 8

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/sec/android/gallery3d/data/UnionSCloudVideo$1;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo$1;-><init>(Lcom/sec/android/gallery3d/data/UnionSCloudVideo;)V

    invoke-direct {v3, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "SCloudVideoUrl"

    invoke-direct {v5, v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    const/4 v4, 0x0

    const-wide/16 v6, 0x12

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    const-string/jumbo v5, "UnionSCloudVideo"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isShareSupported()Z
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->filePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    :cond_0
    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mIsMoving:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteByServerId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mIsMoving:Z

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 7

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/UnionVideo;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_original_size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/16 v2, 0xe

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_original_size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->duration:I

    div-int/lit16 v1, v2, 0x3e8

    if-lez v1, :cond_1

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_1
    const/16 v2, 0xf

    const-string/jumbo v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v2, 0x1f4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->duration:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->filePath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudCachedPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudId:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->getVideoURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "application/vnd.apple.mpegurl"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_size:J

    return-wide v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide v0, 0xc600004000481L

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->isShareSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getUnionContentUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->id:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->latitude:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->longitude:D

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateTakenInMs:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateAddedInSec:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateModifiedInSec:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->duration:I

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->duration:I

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->durationInSec:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->bucketId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->fileSize:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->width:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->height:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->resolution:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->isdrm:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->FEATURE_USE_360_CONTENTS:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->is360video:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->updateAttribute()V

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->FEATURE_SUPPORT_RECORDING_MODE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->recording_mode:I

    :cond_1
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mIsFavorite:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mVideoViewMode:I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->filePath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->isSceretBoxItem:Z

    :cond_4
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->isCloud:I

    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudId:I

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerId:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudCachedPath:Ljava/lang/String;

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudThumbPath:Ljava/lang/String;

    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->fileStatus:I

    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerPath:Ljava/lang/String;

    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_size:J

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_original_size:J

    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_is_available_thumb:I

    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/UnionMediaItem$SCloudThumbRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateModifiedInSec:J

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudThumbPath:Ljava/lang/String;

    sget-object v8, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITHOUT_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/gallery3d/data/UnionMediaItem$SCloudThumbRequest;-><init>(Lcom/sec/android/gallery3d/data/UnionMediaItem;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot request a large image to a scloud video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateAttribute()V
    .locals 4

    const/4 v0, 0x1

    const-wide/32 v2, 0x8000000

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->is360video:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->setAttribute(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->id:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->id:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->caption:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->caption:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mimeType:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mimeType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->latitude:D

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->latitude:D

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->longitude:D

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->longitude:D

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateTakenInMs:J

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateTakenInMs:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateAddedInSec:J

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateAddedInSec:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateModifiedInSec:J

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->dateModifiedInSec:J

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->filePath:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->filePath:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->duration:I

    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->duration:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->duration:I

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->durationInSec:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->bucketId:I

    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->bucketId:I

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->fileSize:J

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->fileSize:J

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->width:I

    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->width:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->height:I

    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->height:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->resolution:Ljava/lang/String;

    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->resolution:Ljava/lang/String;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->FEATURE_USE_360_CONTENTS:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->is360video:I

    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->is360video:I

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->isdrm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->isdrm:Z

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->FEATURE_SUPPORT_RECORDING_MODE:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->recording_mode:I

    :cond_1
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mIsFavorite:Z

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->isCloud:I

    const/16 v2, 0x14

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->isCloud:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudId:I

    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudId:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerId:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudCachedPath:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudCachedPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudThumbPath:Ljava/lang/String;

    const/16 v2, 0x19

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudThumbPath:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->fileStatus:I

    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->fileStatus:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerPath:Ljava/lang/String;

    const/16 v2, 0x1b

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudServerPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_size:J

    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_size:J

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_original_size:J

    const/16 v1, 0x1d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_original_size:J

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_is_available_thumb:I

    const/16 v2, 0x1f

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloud_is_available_thumb:I

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->FEATURE_IS_TABLET:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mVideoViewMode:I

    const/16 v2, 0x13

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mVideoViewMode:I

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->updateAttribute()V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1

    :cond_3
    move v1, v3

    goto/16 :goto_0

    :cond_4
    move v2, v3

    goto/16 :goto_1
.end method
