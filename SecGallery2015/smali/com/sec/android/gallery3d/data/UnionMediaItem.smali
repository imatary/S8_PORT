.class public abstract Lcom/sec/android/gallery3d/data/UnionMediaItem;
.super Lcom/sec/android/gallery3d/data/MediaItem;
.source "UnionMediaItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/CursorLoadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/UnionMediaItem$SCloudThumbRequest;
    }
.end annotation


# static fields
.field public static final COLUMN_BEST_IMAGE:Ljava/lang/String; = "best_image"

.field public static final COLUMN_CLOUD_CACHED_PATH:Ljava/lang/String; = "cloud_cached_path"

.field public static final COLUMN_CLOUD_FILE_STATUS:Ljava/lang/String; = "file_status"

.field public static final COLUMN_CLOUD_ID:Ljava/lang/String; = "cloud_id"

.field public static final COLUMN_CLOUD_IS_AVAILABLE_THUMB:Ljava/lang/String; = "cloud_is_available_thumb"

.field public static final COLUMN_CLOUD_IS_UPLOADED:Ljava/lang/String; = "cloud_is_uploaded"

.field public static final COLUMN_CLOUD_ORIGINAL_SIZE:Ljava/lang/String; = "cloud_original_size"

.field public static final COLUMN_CLOUD_SERVER_ID:Ljava/lang/String; = "cloud_server_id"

.field public static final COLUMN_CLOUD_SERVER_PATH:Ljava/lang/String; = "cloud_server_path"

.field public static final COLUMN_CLOUD_SIZE:Ljava/lang/String; = "cloud_size"

.field public static final COLUMN_CLOUD_THUMB_PATH:Ljava/lang/String; = "cloud_thumb_path"

.field public static final COLUMN_IS_CLOUD:Ljava/lang/String; = "is_cloud"

.field public static final COLUMN_MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final COLUMN_URL:Ljava/lang/String; = "image_url"

.field public static final COLUMN_URL_VENDOR:Ljava/lang/String; = "vendor"

.field private static final DOWNLOAD_PATH:Ljava/lang/String;

.field static final FEATURE_FACE_THUMBNAIL_ENABLED:Z

.field static final SCloudImageUri:Landroid/net/Uri;

.field static final SCloudVideoUri:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "UnionMediaItem"


# instance fields
.field bestImage:I

.field public bucketId:I

.field caption:Ljava/lang/String;

.field cloudCachedPath:Ljava/lang/String;

.field cloudId:I

.field cloudServerId:Ljava/lang/String;

.field cloudServerPath:Ljava/lang/String;

.field cloudThumbPath:Ljava/lang/String;

.field cloud_is_available_thumb:I

.field cloud_is_uploaded:I

.field cloud_original_size:J

.field cloud_size:J

.field dateAddedInSec:J

.field dateModifiedInSec:J

.field dateTakenInMs:J

.field drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

.field duration:I

.field durationInSec:I

.field public filePath:Ljava/lang/String;

.field fileSize:J

.field fileStatus:I

.field public groupId:J

.field height:I

.field public id:I

.field is360video:I

.field isCloud:I

.field isdrm:Z

.field latitude:D

.field longitude:D

.field final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field mArcHeight:I

.field mArcWidth:I

.field private mCameraItem:Z

.field mIsDeleted:Z

.field mIsGolf:Z

.field mIsMoving:Z

.field private mSceneCropRectFs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneTagDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartCropRectFs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field mUrl:Ljava/lang/String;

.field mUrlVendor:Ljava/lang/String;

.field mVideoViewMode:I

.field mediaId:I

.field mimeType:Ljava/lang/String;

.field recording_mode:I

.field resolution:Ljava/lang/String;

.field rotation:I

.field sefFileSubType:I

.field public sefFileType:I

.field private smartCropRect:Landroid/graphics/RectF;

.field sphericalMosaic:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->SCloudImageUri:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->SCloudVideoUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mCameraItem:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isdrm:Z

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->smartCropRect:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSmartCropRectFs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSceneCropRectFs:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSceneTagDatas:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->latitude:D

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->longitude:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mVideoViewMode:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mIsMoving:Z

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method

.method private copySCloudItem(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->createNewFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->copyByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private createNewFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static deleteImageCropRectInCache(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->deleteImageCropRectInCache(I)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->deleteImageCropRectInCache(I)V

    return-void
.end method

.method private static getImageCropRectF(I)Landroid/graphics/RectF;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->getImageCropRectF(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private moveSCloudItem(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->createNewFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->moveByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    goto :goto_0
.end method

.method private setFavorite(IZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

.method private setFavoriteSCloud(Z)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->setFavoriteWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "UnionMediaItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Succeed to set favorite property - isFavorite["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "UnionMediaItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to set favorite property - isFavorite ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UnionMediaItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloud:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->copySCloudItem(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v3, v4, p1, p2}, Lcom/sec/samsung/gallery/util/FileUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    const-string/jumbo v4, "."

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->caption:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->copyTo(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

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

.method public download(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->DOWNLOAD_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SCLOUD_VIDEO_DOWNLOAD"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    invoke-static {v2, v3, v0, v6}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->downloadByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->bucketId:I

    return v0
.end method

.method public getCMHFileId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->id:I

    return v0
.end method

.method public getCloudServerPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentValues()Landroid/content/ContentValues;
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    return-object v0
.end method

.method public getDRMInfo()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isdrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDRMInfo(Ljava/lang/String;)Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->dateTakenInMs:J

    return-wide v0
.end method

.method public getDateModifiedInSec()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->dateModifiedInSec:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 15

    const/16 v14, 0xb

    const/16 v13, 0xa

    const/16 v12, 0x9

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x1f4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v0, v11, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    const/4 v4, 0x4

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->dateModifiedInSec:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v4, 0xc

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v4, 0xd

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->latitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->longitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->latitude:D

    aput-wide v6, v4, v5

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->longitude:D

    aput-wide v6, v4, v11

    invoke-virtual {v0, v12, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v13, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v14, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mUrl:Ljava/lang/String;

    if-eqz v4, :cond_2

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x13

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0, v12, v10}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-virtual {v0, v13, v10}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-virtual {v0, v14, v10}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "UnionMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/16 v4, 0x13

    invoke-virtual {v0, v4, v10}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGolf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mIsGolf:Z

    return v0
.end method

.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->groupId:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    return v0
.end method

.method public getLatLong([D)V
    .locals 4

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->latitude:D

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->longitude:D

    aput-wide v2, p1, v0

    return-void
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->longitude:D

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDateInSec()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->dateModifiedInSec:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordingMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->recording_mode:I

    return v0
.end method

.method public getRectOfAllFaces()Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getRectOfAllFaces(Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method getRectOfAllFaces(Z)Landroid/graphics/RectF;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->smartCropRect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->smartCropRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-boolean v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_4

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->rotation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->rotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->rotation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_7

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_7
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->rotation:I

    return v0
.end method

.method public getSceneCropRectFs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSceneCropRectFs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSceneTagDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSceneTagDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSefFileSubType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->sefFileSubType:I

    return v0
.end method

.method public getSefFileType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->sefFileType:I

    return v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->fileSize:J

    return-wide v0
.end method

.method public getSmartCropRectFs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSmartCropRectFs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSphericalMosaic()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->sphericalMosaic:I

    return v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->width:I

    return v0
.end method

.method public isBestImage()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->bestImage:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mCameraItem:Z

    return v0
.end method

.method public isCloudExistedItem()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloud:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloud:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCloudOnlyItem()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloud:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrm()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isdrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDRMInfo(Ljava/lang/String;)Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isdrm:Z

    return v0
.end method

.method isItemRenamed(Lcom/sec/android/gallery3d/util/UpdateHelper;Landroid/database/Cursor;Z)Z
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->caption:Ljava/lang/String;

    if-eqz p3, :cond_0

    :cond_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    if-eqz p3, :cond_1

    :cond_1
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

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

.method public isLocalCloudItem()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloud:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract loadFromCursor(Landroid/database/Cursor;)V
.end method

.method declared-synchronized loadRectOfAllFaces()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->smartCropRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->smartCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudId:I

    :goto_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getImageCropRectF(I)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->smartCropRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->smartCropRect:Landroid/graphics/RectF;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->smartCropRect:Landroid/graphics/RectF;

    :cond_2
    sget-boolean v1, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->getSmartCropRectFs(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSmartCropRectFs:Ljava/util/ArrayList;

    :cond_3
    sget-boolean v1, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSceneCropRectFs(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSceneCropRectFs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSceneTagDatas(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSceneTagDatas:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_4
    :try_start_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mediaId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final move(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloud:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->moveSCloudItem(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-object v12, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v2, v3, p1, p2}, Lcom/sec/samsung/gallery/util/FileUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    iput-object v11, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    const-string/jumbo v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->caption:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->copyTo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v8, 0x0

    :try_start_1
    const-string/jumbo v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionMediaItem"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x1

    invoke-direct {p0, v10, v2}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->setFavorite(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mIsMoving:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->delete(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloud:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSyncOffFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v7, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteByServerId(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    :cond_4
    iput-object v12, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v2, "UnionMediaItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "move():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v9

    :try_start_2
    const-string/jumbo v2, "UnionMediaItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public final moveToSecretBox(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    move-object/from16 p1, v20

    :cond_0
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "UnionMediaItem"

    const-string/jumbo v5, "making a destination album folder is failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v4, "."

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v4, "UnionMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_3

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :goto_0
    new-instance v13, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v12, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v13, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->caption:Ljava/lang/String;

    invoke-static {v5, v10}, Lcom/sec/android/gallery3d/common/Utils;->addNamePostfix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v12, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "UnionMediaItem"

    const-string/jumbo v5, "moveToSecretBox secretBox is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_3
    const-string/jumbo v15, ""

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "UnionMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "UnionMediaItem"

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

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v5, v0, v1}, Lcom/sec/samsung/gallery/util/FileUtil;->moveFileForPrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    const-string/jumbo v5, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->caption:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->copyTo(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/data/UnionMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isFavorite()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v11, 0x0

    :try_start_1
    const-string/jumbo v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

    aput-object v18, v6, v7

    const/4 v7, 0x0

    const-string/jumbo v8, "UnionMediaItem"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->setFavorite(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_9
    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "UnionMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->execute()V

    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v14

    const-string/jumbo v4, "UnionMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v14

    const-string/jumbo v4, "UnionMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ConcurrentModificationException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_2
    move-exception v14

    :try_start_2
    const-string/jumbo v4, "UnionMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_b
    const-string/jumbo v4, "UnionMediaItem"

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

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCameraItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mCameraItem:Z

    return-void
.end method

.method public setGolf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mIsGolf:Z

    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isFavorite()Z

    move-result v2

    if-eq p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudServerPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->setFavoriteWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->fileStatus:I

    :goto_0
    const-string/jumbo v1, "UnionMediaItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Succeed to set favorite property - isFavorite["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/MediaItem;->setIsFavorite(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->fileStatus:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UnionMediaItem"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_2
    const-string/jumbo v1, "UnionMediaItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to set favorite property - isFavorite ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mediaId:I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->setFavorite(IZ)V

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloud:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->setFavoriteSCloud(Z)V

    goto :goto_1
.end method

.method public setLatLong([D)V
    .locals 2

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->latitude:D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->longitude:D

    return-void
.end method

.method public setSceneCropRectFs()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->cloudId:I

    :goto_0
    sget-boolean v1, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSceneCropRectFs(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSceneCropRectFs:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSceneTagDatas(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mSceneTagDatas:Ljava/util/ArrayList;

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mediaId:I

    goto :goto_0
.end method

.method public updateContent(Landroid/database/Cursor;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionMediaItem;->mDataVersion:J

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->updateFaceDataVersion()V

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
