.class public final Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;
.super Ljava/lang/Object;
.source "CloudStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/cloudagent/CloudStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Files"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final BEST_IMAGE:Ljava/lang/String; = "best_image"

.field public static final BUCKET_DISPLAY_NAME:Ljava/lang/String; = "bucket_display_name"

.field public static final BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final CLOUD_CACHED_PATH:Ljava/lang/String; = "cloud_cached_path"

.field public static final CLOUD_CACHE_DATE_MODIFIED:Ljava/lang/String; = "cloud_cache_date_modified"

.field public static final CLOUD_COVERART_PATH:Ljava/lang/String; = "cloud_coverart_path"

.field public static final CLOUD_ETAG:Ljava/lang/String; = "cloud_etag"

.field public static final CLOUD_FILE_STATUS:Ljava/lang/String; = "file_status"

.field public static final CLOUD_FILE_STATUS_DIRTY:Ljava/lang/String; = "file_status_dirty"

.field public static final CLOUD_HASH:Ljava/lang/String; = "cloud_hash"

.field public static final CLOUD_IS_AVAILABLE_OFFLINE:Ljava/lang/String; = "cloud_is_available_offline"

.field public static final CLOUD_IS_AVAILABLE_THUMB:Ljava/lang/String; = "cloud_is_available_thumb"

.field public static final CLOUD_IS_CACHED:Ljava/lang/String; = "cloud_is_cached"

.field public static final CLOUD_IS_DIR:Ljava/lang/String; = "cloud_is_dir"

.field public static final CLOUD_IS_LOCAL_FILE:Ljava/lang/String; = "cloud_is_local_file"

.field public static final CLOUD_LAST_VIEWED:Ljava/lang/String; = "cloud_last_viewed"

.field public static final CLOUD_PARENT_ID:Ljava/lang/String; = "cloud_parent_id"

.field public static final CLOUD_REVISION:Ljava/lang/String; = "cloud_revision"

.field public static final CLOUD_SERVER_FILE_STATUS:Ljava/lang/String; = "server_file_status"

.field public static final CLOUD_SERVER_ID:Ljava/lang/String; = "cloud_server_id"

.field public static final CLOUD_SERVER_PATH:Ljava/lang/String; = "cloud_server_path"

.field public static final CLOUD_THUMB_PATH:Ljava/lang/String; = "cloud_thumb_path"

.field public static final COMPOSER:Ljava/lang/String; = "composer"

.field public static final DATETAKEN:Ljava/lang/String; = "datetaken"

.field public static final DATE_ADDED:Ljava/lang/String; = "date_added"

.field public static final DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final FILE_ID:Ljava/lang/String; = "file_id"

.field public static final GENRE_NAME:Ljava/lang/String; = "genre_name"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final IS_360_VIDEO:Ljava/lang/String; = "is_360_video"

.field public static final IS_FAVORITE:Ljava/lang/String; = "is_favorite"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final MEDIA_TYPE_ALL:I = 0x5

.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TYPE_DOC:I = 0x4

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_NONE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x3

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final NEED_CMH_CACHE_UPDATE:Ljava/lang/String; = "need_cmh_cache_update"

.field public static final NEED_CMH_UPDATE:Ljava/lang/String; = "need_cmh_update"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final ORIGINAL_SIZE:Ljava/lang/String; = "original_size"

.field public static final RECORDING_MODE:Ljava/lang/String; = "recording_mode"

.field public static final SEF_FILE_SUB_TYPE:Ljava/lang/String; = "sef_file_sub_type"

.field public static final SEF_FILE_TYPE:Ljava/lang/String; = "sef_file_type"

.field public static final SIZE:Ljava/lang/String; = "_size"

.field public static final SPHERICAL_MOSAIC:Ljava/lang/String; = "spherical_mosaic"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TRACK:Ljava/lang/String; = "track"

.field public static final VIDEO_VIEW_MODE:Ljava/lang/String; = "video_view_mode"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final YEAR:Ljava/lang/String; = "year"

.field public static final _DATA:Ljava/lang/String; = "_data"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "content://com.samsung.android.scloud.cloudagent/data/cloudfiles"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentUriforUploadOperationTable()Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "content://com.samsung.android.scloud.cloudagent/data/media_upload_operations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
