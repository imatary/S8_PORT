.class public Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;
.super Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;
.source "SCloudItemEntry.java"


# instance fields
.field public bestImage:I

.field public cloud_is_available_thumb:I

.field public duration:I

.field public file_status:I

.field public groupId:J

.field public is360video:I

.field public is_local_file:I

.field public original_size:J

.field public recording_mode:I

.field public sefFileSubType:I

.field public sefFileType:I

.field public server_id:Ljava/lang/String;

.field public server_path:Ljava/lang/String;

.field public sphericalMosaic:I

.field public thumb_pathname:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public urlVendor:Ljava/lang/String;

.field public video_view_mode:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    iput-wide v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->groupId:J

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sphericalMosaic:I

    iput v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileType:I

    iput v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileSubType:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->bestImage:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is360video:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->recording_mode:I

    iput v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->video_view_mode:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    iput-wide v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->urlVendor:Ljava/lang/String;

    return-void
.end method

.method private setPropertyFromCursorForImage(Landroid/database/Cursor;)V
    .locals 2

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->source_id:Ljava/lang/String;

    const-string/jumbo v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_url:Ljava/lang/String;

    const-string/jumbo v0, "_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->size:J

    const-string/jumbo v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->title:Ljava/lang/String;

    const-string/jumbo v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_type:Ljava/lang/String;

    const-string/jumbo v0, "datetaken"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_taken:J

    const-string/jumbo v0, "date_modified"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_edited:J

    const-string/jumbo v0, "bucket_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->album_id:Ljava/lang/String;

    const-string/jumbo v0, "cloud_cached_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_pathname:Ljava/lang/String;

    const-string/jumbo v0, "cloud_thumb_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    const-string/jumbo v0, "orientation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->rotation:I

    const-string/jumbo v0, "cloud_is_cached"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_status:I

    const-string/jumbo v0, "latitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->latitude:D

    const-string/jumbo v0, "longitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->longitude:D

    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    const-string/jumbo v0, "height"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    const-string/jumbo v0, "cloud_server_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    const-string/jumbo v0, "cloud_server_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    const-string/jumbo v0, "file_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    const-string/jumbo v0, "cloud_is_local_file"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    const-string/jumbo v0, "group_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->groupId:J

    const-string/jumbo v0, "spherical_mosaic"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sphericalMosaic:I

    const-string/jumbo v0, "sef_file_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileType:I

    const-string/jumbo v0, "sef_file_sub_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileSubType:I

    const-string/jumbo v0, "original_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    const-string/jumbo v0, "cloud_is_available_thumb"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    return-void
.end method

.method private setPropertyFromCursorForVideo(Landroid/database/Cursor;)V
    .locals 2

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->source_id:Ljava/lang/String;

    const-string/jumbo v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_url:Ljava/lang/String;

    const-string/jumbo v0, "_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->size:J

    const-string/jumbo v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->title:Ljava/lang/String;

    const-string/jumbo v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_type:Ljava/lang/String;

    const-string/jumbo v0, "datetaken"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_taken:J

    const-string/jumbo v0, "date_modified"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_edited:J

    const-string/jumbo v0, "bucket_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->album_id:Ljava/lang/String;

    const-string/jumbo v0, "cloud_cached_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_pathname:Ljava/lang/String;

    const-string/jumbo v0, "cloud_thumb_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    const-string/jumbo v0, "cloud_is_cached"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_status:I

    const-string/jumbo v0, "cloud_server_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    const-string/jumbo v0, "cloud_server_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    const-string/jumbo v0, "file_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    const-string/jumbo v0, "cloud_is_local_file"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    const-string/jumbo v0, "is_360_video"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is360video:I

    const-string/jumbo v0, "recording_mode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->recording_mode:I

    const-string/jumbo v0, "video_view_mode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->video_view_mode:I

    const-string/jumbo v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    const-string/jumbo v0, "original_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    const-string/jumbo v0, "cloud_is_available_thumb"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->clear()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    iput-wide v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->groupId:J

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sphericalMosaic:I

    iput v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileType:I

    iput v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileSubType:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->bestImage:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is360video:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->recording_mode:I

    iput v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->video_view_mode:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    iput-wide v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->urlVendor:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->groupId:J

    iget-wide v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->groupId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sphericalMosaic:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sphericalMosaic:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileType:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileSubType:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileSubType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->bestImage:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->bestImage:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is360video:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is360video:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->recording_mode:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->recording_mode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->video_view_mode:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->video_view_mode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    iget-wide v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    iget v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->urlVendor:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->urlVendor:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public setProperty(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Landroid/database/Cursor;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    const-string/jumbo v1, "orientation"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->setPropertyFromCursorForVideo(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->setPropertyFromCursorForImage(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Source is wrong"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
