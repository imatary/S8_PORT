.class public Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;
.super Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;
.source "SCloudVideo.java"


# static fields
.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field public static final ITEM_PATH_STR:Ljava/lang/String; = "/scloud/video/item"

.field public static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SCloudVideo"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "/scloud/video/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "cloud_cached_path"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_is_cached"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "cloud_server_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "cloud_server_path"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "file_status"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "cloud_is_local_file"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "is_360_video"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "recording_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "video_view_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "original_size"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "cloud_is_available_thumb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mBaseFileUri:Landroid/net/Uri;

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "cannot get cursor for: "

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3

    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    const-string/jumbo v3, "SCloudVideo"

    const-string/jumbo v4, "Cursor getCount is zero"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->setProperty(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->updateAttribute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-void

    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "cannot find data for: "

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->loadFromCursor(Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->updateAttribute()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method private getVideoURL()Ljava/lang/String;
    .locals 8

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo$1;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo$1;-><init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;)V

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

    const-string/jumbo v5, "SCloudVideo"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAttribute()V
    .locals 4

    const/4 v0, 0x1

    const-wide/32 v2, 0x8000000

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is360video:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v3, v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->setAttribute(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mPath:Lcom/sec/android/gallery3d/data/Path;

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
    .locals 4

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    div-int/lit16 v1, v2, 0x3e8

    if-lez v1, :cond_0

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->getVideoURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    const-string/jumbo v2, "application/vnd.apple.mpegurl"

    iput-object v2, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getRecordingMode()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->recording_mode:I

    return v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide v0, 0x600004000485L

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->setProperty(Ljava/lang/Object;)V

    return-void
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

    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v4, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_edited:J

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v7, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    sget-object v8, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITHOUT_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;-><init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V

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

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8

    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->setProperty(Ljava/lang/Object;)V

    new-instance v1, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->source_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->source_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->source_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->size:J

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->size:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->size:J

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_taken:J

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_taken:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_taken:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_edited:J

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_edited:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_edited:J

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->album_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->album_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->album_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_pathname:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_pathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_pathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_status:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_status:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_status:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is360video:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is360video:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is360video:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->recording_mode:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->recording_mode:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->recording_mode:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->video_view_mode:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->video_view_mode:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->video_view_mode:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->duration:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cloud_is_available_thumb:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->updateAttribute()V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    return v2
.end method
