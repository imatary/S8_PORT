.class public Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;
.super Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;
.source "CloudItemEntry.java"


# instance fields
.field public thumb_pathname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;-><init>()V

    return-void
.end method

.method private setPropertyFromCursorForImage(Landroid/database/Cursor;)V
    .locals 2

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    const-string/jumbo v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    const-string/jumbo v0, "_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    const-string/jumbo v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    const-string/jumbo v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    const-string/jumbo v0, "date_modified"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    const-string/jumbo v0, "bucket_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->album_id:Ljava/lang/String;

    const-string/jumbo v0, "cloud_cached_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    const-string/jumbo v0, "cloud_thumb_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    const-string/jumbo v0, "orientation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->rotation:I

    const-string/jumbo v0, "cloud_is_cached"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    const-string/jumbo v0, "latitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->latitude:D

    const-string/jumbo v0, "longitude"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->longitude:D

    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->width:I

    const-string/jumbo v0, "height"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->height:I

    return-void
.end method

.method private setPropertyFromCursorForVideo(Landroid/database/Cursor;)V
    .locals 2

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    const-string/jumbo v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    const-string/jumbo v0, "_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    const-string/jumbo v0, "_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    const-string/jumbo v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    const-string/jumbo v0, "date_modified"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    const-string/jumbo v0, "bucket_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->album_id:Ljava/lang/String;

    const-string/jumbo v0, "cloud_cached_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    const-string/jumbo v0, "cloud_is_cached"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    const-string/jumbo v0, "cloud_thumb_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/remote/RemotePhotoEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
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

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->setPropertyFromCursorForVideo(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->setPropertyFromCursorForImage(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Source is wrong"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
