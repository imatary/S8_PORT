.class public Lcom/sec/android/gallery3d/data/LocalVideo;
.super Lcom/sec/android/gallery3d/data/LocalMediaItem;
.source "LocalVideo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/VideoProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/LocalVideo$DeleteOperation;,
        Lcom/sec/android/gallery3d/data/LocalVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field private static final FEATURE_IS_TABLET:Z

.field private static final FEATURE_SUPPORT_RECORDING_MODE:Z

.field private static final FEATURE_USE_360_CONTENTS:Z

.field private static final FEATURE_USE_FULL_VIEW_MODE_FOR_VIDEO:Z

.field private static final INDEX_BUCKET_ID:I = 0xa

.field public static final INDEX_CAPTION:I = 0x1

.field public static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DURATION:I = 0x9

.field private static final INDEX_FAVORITE:I = 0x12

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_IS_360_VIDEO:I = 0x10

.field static final INDEX_IS_DRM:I = 0xf

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_RECORDING_MODE:I = 0x11

.field private static final INDEX_RESOLUTION:I = 0xe

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_VIDEO_VIEW_MODE:I = 0x13

.field private static final INDEX_WIDTH:I = 0xc

.field public static final IS_360_VIDEO:Ljava/lang/String; = "is_360_video"

.field private static final IS_DRM:Ljava/lang/String; = "is_drm"

.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field public static final ITEM_PATH_STR:Ljava/lang/String; = "/local/video/item"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RECORDING_MODE:Ljava/lang/String; = "recording_mode"

.field private static final TAG:Ljava/lang/String; = "LocalVideo"

.field private static final VIDEO_VIEW_MODE:Ljava/lang/String; = "video_view_mode"


# instance fields
.field private duration:I

.field private durationInSec:I

.field private mIsDeleted:Z

.field private mIsGolf:Z

.field private mVideoViewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "/local/video/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_IS_TABLET:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFullViewModeForVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_USE_FULL_VIEW_MODE_FOR_VIDEO:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsJ1xlteModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportRecordingMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_SUPPORT_RECORDING_MODE:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->Support360Contents:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_USE_360_CONTENTS:Z

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v0, v2

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsGolf:Z

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsDeleted:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mVideoViewMode:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "LocalVideo"

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

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :try_start_2
    const-string/jumbo v3, "LocalVideo"

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

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;II)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsGolf:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsDeleted:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mVideoViewMode:I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const-string/jumbo v2, "video_event_album"

    sget-object v3, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3, p4}, Lcom/sec/android/gallery3d/data/EventAlbum;->getItemCursor(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Ljava/lang/String;[Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v1, "LocalVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot get cursor for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsGolf:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsDeleted:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mVideoViewMode:I

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/LocalVideo;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalVideo;->getVideoViewMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/data/LocalVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsDeleted:Z

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

    const-string/jumbo v2, "LocalVideo"

    const-string/jumbo v3, "resolution is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "LocalVideo"

    const-string/jumbo v3, "wrong resolution value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getVideoViewMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mVideoViewMode:I

    return v0
.end method

.method private updateAttribute()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalVideo;->isGolf()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsGolf:Z

    const-wide/32 v2, 0x8000000

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->is360video:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/sec/android/gallery3d/data/LocalVideo;->setAttribute(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected copyTo(Ljava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalVideo;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string/jumbo v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v5, "bucket_id"

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "bucket_display_name"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const-string/jumbo v6, "\'"

    const-string/jumbo v7, "\'\'"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_data=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsDeleted:Z

    if-eqz v0, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->id:I

    new-instance v3, Lcom/sec/android/gallery3d/data/LocalVideo$DeleteOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/gallery3d/data/LocalVideo$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalVideo;Lcom/sec/android/gallery3d/data/LocalVideo$1;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;ILcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->id:I

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

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mime_type"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "latitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "longitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "datetaken"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateTakenInMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_added"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateAddedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_modified"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "_data"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->duration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "bucket_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->bucketId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "_size"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "height"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "is_drm"

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->isdrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "is_360_video"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->is360video:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_SUPPORT_RECORDING_MODE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "recording_mode"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->recording_mode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-object v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 8

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateTakenInMs:J

    invoke-static {v4, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->durationInSec:I

    if-lez v2, :cond_0

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->durationInSec:I

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalVideo;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDetails(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/LocalVideo;->getFormattedResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->duration:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->height:I

    return v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->id:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->longitude:D

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 12

    const-wide/32 v10, 0x40000000

    const-wide/32 v8, 0x20000000

    const-wide/32 v6, -0x20000001

    const-wide/32 v4, -0x40000001

    const-wide v0, 0x80c200017800485L

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->recording_mode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->recording_mode:I

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

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->isSceretBoxItem:Z

    if-eqz v2, :cond_7

    or-long/2addr v0, v8

    and-long/2addr v0, v4

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const-string/jumbo v3, ".pyv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalVideo;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide/16 v0, 0x481

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->isSceretBoxItem:Z

    if-eqz v2, :cond_8

    or-long/2addr v0, v8

    and-long/2addr v0, v4

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_SD:I

    if-ne v2, v3, :cond_5

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_5
    const-wide/32 v2, -0x4000001

    and-long/2addr v0, v2

    :cond_6
    return-wide v0

    :cond_7
    or-long/2addr v0, v10

    and-long/2addr v0, v6

    goto :goto_0

    :cond_8
    or-long/2addr v0, v10

    and-long/2addr v0, v6

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->width:I

    return v0
.end method

.method public isGolf()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "image/golf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->id:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->latitude:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->longitude:D

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateTakenInMs:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateAddedInSec:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->duration:I

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->duration:I

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->durationInSec:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->bucketId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->fileSize:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->width:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->height:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->isdrm:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_USE_360_CONTENTS:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->is360video:I

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalVideo;->updateAttribute()V

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_SUPPORT_RECORDING_MODE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->recording_mode:I

    :cond_1
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsFavorite:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_IS_TABLET:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_USE_FULL_VIEW_MODE_FOR_VIDEO:Z

    if-eqz v0, :cond_4

    :cond_3
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mVideoViewMode:I

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->isSceretBoxItem:Z

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/sec/android/gallery3d/data/LocalVideo$LocalVideoRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalVideo;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsGolf:Z

    const-wide/16 v10, -0x1

    move v6, p1

    move-object v9, p0

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/gallery3d/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;ZLcom/sec/android/gallery3d/data/MediaItem;J)V

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

    const-string/jumbo v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 0

    return-void
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->id:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->id:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->caption:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mimeType:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->latitude:D

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->latitude:D

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->longitude:D

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->longitude:D

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateTakenInMs:J

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateTakenInMs:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateAddedInSec:J

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateAddedInSec:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->dateModifiedInSec:J

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->filePath:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->duration:I

    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->duration:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->duration:I

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->durationInSec:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->bucketId:I

    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->bucketId:I

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->fileSize:J

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->fileSize:J

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->width:I

    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->width:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->height:I

    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->height:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->resolution:Ljava/lang/String;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_USE_360_CONTENTS:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->is360video:I

    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->is360video:I

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->isdrm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->isdrm:Z

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_SUPPORT_RECORDING_MODE:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->recording_mode:I

    :cond_1
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mIsFavorite:Z

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_IS_TABLET:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalVideo;->FEATURE_USE_FULL_VIEW_MODE_FOR_VIDEO:Z

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mVideoViewMode:I

    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalVideo;->mVideoViewMode:I

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalVideo;->updateAttribute()V

    :cond_4
    invoke-virtual {p0, v0, p1, v2}, Lcom/sec/android/gallery3d/data/LocalVideo;->isItemRenamed(Lcom/sec/android/gallery3d/util/UpdateHelper;Landroid/database/Cursor;Z)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    return v2

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method
