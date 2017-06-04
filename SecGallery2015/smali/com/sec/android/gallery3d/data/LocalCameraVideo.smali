.class public Lcom/sec/android/gallery3d/data/LocalCameraVideo;
.super Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;
.source "LocalCameraVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/LocalCameraVideo$DeleteOperation;,
        Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field private static final FeatureIsMassModel:Z

.field private static final FeatureUse360Contents:Z

.field private static final INDEX_BUCKET_ID:I = 0xa

.field static final INDEX_CAPTION:I = 0x1

.field static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DURATION:I = 0x9

.field private static final INDEX_FAVORITE:I = 0x12

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_IS_360_VIDEO:I = 0x10

.field private static final INDEX_IS_DRM:I = 0xf

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_RECORDING_MODE:I = 0x11

.field private static final INDEX_RESOLUTION:I = 0xe

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_VIDEO_VIEW_MODE:I = 0x13

.field private static final INDEX_WIDTH:I = 0xc

.field private static final IS_360_VIDEO:Ljava/lang/String; = "is_360_video"

.field private static final IS_DRM:Ljava/lang/String; = "is_drm"

.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field public static PROJECTION:[Ljava/lang/String; = null

.field private static final RECORDING_MODE:Ljava/lang/String; = "recording_mode"

.field public static final RECORD_MODE_FAST:I = 0x2

.field public static final RECORD_MODE_SLOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalCameraVideo"

.field private static final VIDEO_VIEW_MODE:Ljava/lang/String; = "video_view_mode"


# instance fields
.field private duration:I

.field private durationInSec:I

.field private mIsDeleted:Z

.field private mVideoViewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "/localcamera/video/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->FeatureIsMassModel:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->Support360Contents:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->FeatureUse360Contents:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsMassModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v4

    const-string/jumbo v1, "latitude"

    aput-object v1, v0, v5

    const-string/jumbo v1, "longitude"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "is_360_video"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->PROJECTION:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v4

    const-string/jumbo v1, "latitude"

    aput-object v1, v0, v5

    const-string/jumbo v1, "longitude"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "is_drm"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "is_360_video"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "recording_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "video_view_mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->PROJECTION:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;I)V
    .locals 6

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mIsDeleted:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "LocalCameraVideo"

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

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :try_start_2
    const-string/jumbo v3, "LocalCameraVideo"

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

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/database/Cursor;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mIsDeleted:Z

    invoke-direct {p0, p3}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/LocalCameraVideo;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->getVideoViewMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/data/LocalCameraVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mIsDeleted:Z

    return p1
.end method

.method private getFormattedResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocalCameraVideo"

    const-string/jumbo v3, "resolution is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "LocalCameraVideo"

    const-string/jumbo v3, "wrong resolution value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVideoViewMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mVideoViewMode:I

    return v0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->id:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->latitude:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->longitude:D

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateTakenInMs:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateAddedInSec:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateModifiedInSec:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->duration:I

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->duration:I

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->durationInSec:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->bucketId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->fileSize:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->width:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->height:I

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->FeatureUse360Contents:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->is360video:I

    :cond_0
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->resolution:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->updateAttribute()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->filePath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->isSceretBoxItem:Z

    :cond_1
    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->FeatureIsMassModel:Z

    if-nez v0, :cond_2

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->recording_mode:I

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mVideoViewMode:I

    :cond_2
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mIsFavorite:Z

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->isdrm:Z

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateAttribute()V
    .locals 4

    const/4 v0, 0x1

    const-wide/32 v2, 0x8000000

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->is360video:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->setAttribute(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mIsDeleted:Z

    if-eqz v0, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->id:I

    new-instance v3, Lcom/sec/android/gallery3d/data/LocalCameraVideo$DeleteOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/gallery3d/data/LocalCameraVideo$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalCameraVideo;Lcom/sec/android/gallery3d/data/LocalCameraVideo$1;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;ILcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected getContentValues()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mime_type"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "latitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "longitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "datetaken"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateTakenInMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_added"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateAddedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_modified"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateModifiedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "_data"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "bucket_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->bucketId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "_size"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "height"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->FeatureIsMassModel:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "recording_mode"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->recording_mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string/jumbo v1, "is_drm"

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->isdrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "is_360_video"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->is360video:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 8

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateTakenInMs:J

    invoke-static {v4, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->durationInSec:I

    if-lez v2, :cond_0

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->durationInSec:I

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->resolution:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->getFormattedResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->height:I

    return v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->id:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->longitude:D

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide v0, 0x80c200013800485L

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->recording_mode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->recording_mode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    const-wide/16 v2, -0x201

    and-long/2addr v0, v2

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->isSceretBoxItem:Z

    if-eqz v2, :cond_4

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x40000001

    and-long/2addr v0, v2

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->filePath:Ljava/lang/String;

    const-string/jumbo v3, ".pyv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    :cond_3
    return-wide v0

    :cond_4
    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x20000001

    and-long/2addr v0, v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->width:I

    return v0
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

    new-instance v1, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateModifiedInSec:J

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->filePath:Ljava/lang/String;

    move v6, p1

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-object v1
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

    const-string/jumbo v1, "Cannot regquest a large image to a local camera video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 0

    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->id:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->id:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->caption:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->caption:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mimeType:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mimeType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->latitude:D

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->latitude:D

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->longitude:D

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->longitude:D

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateTakenInMs:J

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateTakenInMs:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateAddedInSec:J

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateAddedInSec:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateModifiedInSec:J

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->dateModifiedInSec:J

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->filePath:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->filePath:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->duration:I

    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->duration:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->duration:I

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->durationInSec:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->bucketId:I

    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->bucketId:I

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->fileSize:J

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->fileSize:J

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->width:I

    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->width:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->height:I

    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->height:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->resolution:Ljava/lang/String;

    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->resolution:Ljava/lang/String;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->FeatureIsMassModel:Z

    if-nez v1, :cond_0

    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->recording_mode:I

    :cond_0
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->mIsFavorite:Z

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->updateAttribute()V

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->isdrm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->isdrm:Z

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->is360video:I

    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->is360video:I

    invoke-virtual {p0, v0, p1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->isItemRenamed(Lcom/sec/android/gallery3d/util/UpdateHelper;Landroid/database/Cursor;Z)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method
