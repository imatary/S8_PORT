.class public abstract Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;
.super Lcom/sec/android/gallery3d/data/MediaItem;
.source "LocalCameraMediaItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalCameraMediaItem"


# instance fields
.field bucketId:I

.field caption:Ljava/lang/String;

.field dateAddedInSec:J

.field public dateModifiedInSec:J

.field dateTakenInMs:J

.field drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

.field public filePath:Ljava/lang/String;

.field fileSize:J

.field public groupId:J

.field height:I

.field id:I

.field is360video:I

.field isdrm:Z

.field latitude:D

.field longitude:D

.field final mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field public mimeType:Ljava/lang/String;

.field recording_mode:I

.field resolution:Ljava/lang/String;

.field public sphericalMosaic:I

.field width:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->isdrm:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->latitude:D

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->longitude:D

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    return-void
.end method

.method private setFavorite(IZ)V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->mimeType:Ljava/lang/String;

    const-string/jumbo v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

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
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public copyBurstShotItem(Ljava/lang/String;J)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->bucketId:I

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

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->isdrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDRMInfo(Ljava/lang/String;)Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 12

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v2

    const/16 v5, 0x1f4

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    const/4 v5, 0x4

    new-instance v6, Ljava/util/Date;

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->dateModifiedInSec:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xc

    iget v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xd

    iget v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->latitude:D

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->longitude:D

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x9

    const/4 v6, 0x2

    new-array v6, v6, [D

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->latitude:D

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->longitude:D

    aput-wide v8, v6, v7

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xa

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xb

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->filePath:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->filePath:Ljava/lang/String;

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->filePath:Ljava/lang/String;

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v0}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->fileSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    const/16 v5, 0xe

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->fileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    return-object v2

    :cond_1
    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "LocalCameraMediaItem"

    invoke-virtual {v3}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v5, "LocalCameraMediaItem"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->groupId:J

    return-wide v0
.end method

.method public getLatLong([D)V
    .locals 4

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->latitude:D

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->longitude:D

    aput-wide v2, p1, v0

    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDateInSec()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->dateModifiedInSec:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordingMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->recording_mode:I

    return v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->fileSize:J

    return-wide v0
.end method

.method public isDrm()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->isdrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDRMInfo(Ljava/lang/String;)Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->isdrm:Z

    return v0
.end method

.method isItemRenamed(Lcom/sec/android/gallery3d/util/UpdateHelper;Landroid/database/Cursor;Z)Z
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->caption:Ljava/lang/String;

    if-eqz p3, :cond_0

    :cond_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->filePath:Ljava/lang/String;

    if-eqz p3, :cond_1

    :cond_1
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->filePath:Ljava/lang/String;

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

.method public final moveToSecretBox(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setIsFavorite(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->isFavorite()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->id:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->setFavorite(IZ)V

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/MediaItem;->setIsFavorite(Z)V

    :cond_0
    return-void
.end method

.method public setLatLong([D)V
    .locals 2

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->latitude:D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->longitude:D

    return-void
.end method

.method public updateContent(Landroid/database/Cursor;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->mDataVersion:J

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
