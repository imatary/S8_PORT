.class public abstract Lcom/sec/android/gallery3d/data/LocalMediaItem;
.super Lcom/sec/android/gallery3d/data/MediaItem;
.source "LocalMediaItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/CursorLoadable;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalMediaItem"


# instance fields
.field public bucketId:I

.field caption:Ljava/lang/String;

.field dateAddedInSec:J

.field dateModifiedInSec:J

.field dateTakenInMs:J

.field drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

.field public filePath:Ljava/lang/String;

.field fileSize:J

.field public groupId:J

.field height:I

.field public id:I

.field is360video:I

.field isdrm:Z

.field public latitude:D

.field public longitude:D

.field final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mCameraItem:Z

.field mUrl:Ljava/lang/String;

.field mUrlVendor:Ljava/lang/String;

.field mimeType:Ljava/lang/String;

.field recording_mode:I

.field resolution:Ljava/lang/String;

.field sphericalMosaic:I

.field width:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mCameraItem:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->isdrm:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method

.method static deleteImageCropRectInCache(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->deleteImageCropRectInCache(I)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->deleteImageCropRectInCache(I)V

    return-void
.end method

.method private deleteLocalMediaItem()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->execute()V

    return-void
.end method

.method private setFavorite(IZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "is_favorite"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v3, v4, p1, p2}, Lcom/sec/samsung/gallery/util/FileUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    const-string/jumbo v4, "."

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->copyTo(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public copyBurstShotItem(Ljava/lang/String;J)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method copyTo(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->bucketId:I

    return v0
.end method

.method protected getContentValues()Landroid/content/ContentValues;
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    return-object v0
.end method

.method public getDRMInfo()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->isdrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDRMInfo(Ljava/lang/String;)Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 12

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v2

    const/16 v6, 0x1f4

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    const/4 v6, 0x4

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xc

    iget v7, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xd

    iget v7, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x9

    const/4 v7, 0x2

    new-array v7, v7, [D

    const/4 v8, 0x0

    iget-wide v10, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v10, v7, v8

    const/4 v8, 0x1

    iget-wide v10, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v10, v7, v8

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xa

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xb

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :goto_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mUrl:Ljava/lang/String;

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mUrl:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x13

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const-string/jumbo v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x5

    invoke-virtual {v2, v6, v0}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->fileSize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/16 v6, 0xe

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->fileSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    return-object v2

    :cond_1
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "LocalMediaItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/16 v6, 0x13

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v6, "LocalMediaItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "StringIndexOutOfBoundsException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v6, "LocalMediaItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NullPointerException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->groupId:J

    return-wide v0
.end method

.method public getLatLong([D)V
    .locals 4

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v2, p1, v0

    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDateInSec()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->dateModifiedInSec:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordingMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->recording_mode:I

    return v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->fileSize:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrlVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mUrlVendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mUrlVendor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mUrlVendor:Ljava/lang/String;

    goto :goto_0
.end method

.method public isCameraItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mCameraItem:Z

    return v0
.end method

.method public isDrm()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->isdrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDRMInfo(Ljava/lang/String;)Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->isdrm:Z

    return v0
.end method

.method isItemRenamed(Lcom/sec/android/gallery3d/util/UpdateHelper;Landroid/database/Cursor;Z)Z
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    if-eqz p3, :cond_0

    :cond_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    if-eqz p3, :cond_1

    :cond_1
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract loadFromCursor(Landroid/database/Cursor;)V
.end method

.method public final move(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    const/4 v12, 0x1

    const/4 v2, 0x0

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v3, v4, p1, p2}, Lcom/sec/samsung/gallery/util/FileUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    iput-object v10, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    const-string/jumbo v4, "."

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->copyTo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    :try_start_1
    const-string/jumbo v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x1

    invoke-direct {p0, v9, v2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->setFavorite(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    :goto_0
    iput-object v11, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->deleteLocalMediaItem()V

    move v2, v12

    :goto_1
    return v2

    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    const-string/jumbo v3, "LocalMediaItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "move():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v8

    :try_start_2
    const-string/jumbo v2, "LocalMediaItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public final moveToSecretBox(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 p1, v19

    :cond_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "LocalMediaItem"

    const-string/jumbo v5, "making a destination album folder is failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v4, "."

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v4, "LocalMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-eq v15, v4, :cond_3

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :goto_0
    new-instance v12, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v11, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v12, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/sec/android/gallery3d/common/Utils;->addNamePostfix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v11, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "LocalMediaItem"

    const-string/jumbo v5, "moveToSecretBox secretBox is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_3
    const-string/jumbo v14, ""

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "LocalMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "LocalMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v5, v0, v1}, Lcom/sec/samsung/gallery/util/FileUtil;->moveFileForPrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    const/4 v4, 0x0

    const-string/jumbo v5, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->copyTo(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->isFavorite()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v10, 0x0

    :try_start_1
    const-string/jumbo v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const-string/jumbo v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->setFavorite(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_9
    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "LocalMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->deleteLocalMediaItem()V

    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v13

    const-string/jumbo v4, "LocalMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v13

    const-string/jumbo v4, "LocalMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ConcurrentModificationException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_2
    move-exception v13

    :try_start_2
    const-string/jumbo v4, "LocalMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_b
    const-string/jumbo v4, "LocalMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSecretModeOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public setCameraItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mCameraItem:Z

    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->isFavorite()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->setFavorite(IZ)V

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/MediaItem;->setIsFavorite(Z)V

    :cond_0
    return-void
.end method

.method public setLatLong([D)V
    .locals 2

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    return-void
.end method

.method public updateContent(Landroid/database/Cursor;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalMediaItem;->mDataVersion:J

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->updateFaceDataVersion()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method updateFaceDataVersion()V
    .locals 0

    return-void
.end method

.method public abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
