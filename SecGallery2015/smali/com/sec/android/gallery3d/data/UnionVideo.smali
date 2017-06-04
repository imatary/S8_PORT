.class public Lcom/sec/android/gallery3d/data/UnionVideo;
.super Lcom/sec/android/gallery3d/data/UnionMediaItem;
.source "UnionVideo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/VideoProperty;


# static fields
.field static final INDEX_BUCKET_ID:I = 0xa

.field static final INDEX_CAPTION:I = 0x1

.field static final INDEX_CLOUD_CACHED_PATH:I = 0x18

.field static final INDEX_CLOUD_FILE_STATUS:I = 0x1a

.field static final INDEX_CLOUD_ID:I = 0x16

.field static final INDEX_CLOUD_IS_AVAILABLE_THUMB:I = 0x1f

.field static final INDEX_CLOUD_IS_UPLOADED:I = 0x1e

.field static final INDEX_CLOUD_ORIGINAL_SIZE:I = 0x1d

.field static final INDEX_CLOUD_SERVER_ID:I = 0x17

.field static final INDEX_CLOUD_SERVER_PATH:I = 0x1b

.field static final INDEX_CLOUD_SIZE:I = 0x1c

.field static final INDEX_CLOUD_THUMB_PATH:I = 0x19

.field static final INDEX_DATA:I = 0x8

.field static final INDEX_DATE_ADDED:I = 0x6

.field static final INDEX_DATE_MODIFIED:I = 0x7

.field static final INDEX_DATE_TAKEN:I = 0x5

.field static final INDEX_DURATION:I = 0x9

.field static final INDEX_FAVORITE:I = 0x12

.field static final INDEX_HEIGHT:I = 0xd

.field static final INDEX_ID:I = 0x0

.field static final INDEX_IS_360_VIDEO:I = 0x10

.field static final INDEX_IS_CLOUD:I = 0x14

.field static final INDEX_IS_DRM:I = 0xf

.field static final INDEX_LATITUDE:I = 0x3

.field static final INDEX_LONGITUDE:I = 0x4

.field static final INDEX_MEDIA_ID:I = 0x15

.field static final INDEX_MIME_TYPE:I = 0x2

.field static final INDEX_RECORDING_MODE:I = 0x11

.field static final INDEX_RESOLUTION:I = 0xe

.field static final INDEX_SIZE:I = 0xb

.field static final INDEX_VIDEO_VIEW_MODE:I = 0x13

.field static final INDEX_WIDTH:I = 0xc

.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field public static final ITEM_PATH_STR:Ljava/lang/String; = "/union/video/item"

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "/union/video/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

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

    const/16 v1, 0x14

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "media_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "cloud_id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "cloud_server_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "cloud_cached_path"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "file_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "cloud_server_path"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "cloud_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "cloud_original_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "cloud_is_uploaded"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "cloud_is_available_thumb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/UnionMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    return-void
.end method


# virtual methods
.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method updateAttribute()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionVideo;->isGolf()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionVideo;->mIsGolf:Z

    const-wide/32 v2, 0x8000000

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionVideo;->is360video:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/sec/android/gallery3d/data/UnionVideo;->setAttribute(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
