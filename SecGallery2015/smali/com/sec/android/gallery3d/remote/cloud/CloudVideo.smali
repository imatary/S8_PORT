.class public Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;
.super Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;
.source "CloudVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;
    }
.end annotation


# static fields
.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CloudVideo"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "/cloud/video/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    const/16 v0, 0xb

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

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "cloud_cached_path"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "cloud_is_cached"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mBaseFileUri:Landroid/net/Uri;

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

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

    const-string/jumbo v3, "CloudVideo"

    const-string/jumbo v4, "Cursor getCount is zero"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->setProperty(Ljava/lang/Object;)V
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

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mBaseVideoUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v1, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getVideoURL()Ljava/lang/String;
    .locals 8

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$1;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$1;-><init>(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;)V

    invoke-direct {v3, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "CloudVideoUrl"

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

    const-string/jumbo v5, "CloudVideo"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mBaseVideoUri:Landroid/net/Uri;

    const-string/jumbo v1, "_id"

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    const/4 v0, 0x1

    return v0
.end method

.method public download(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/cloudagent/CloudStore$API;->download(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CloudVideo"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mBaseVideoUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v1, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 6

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    invoke-static {v2, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->_id:J

    long-to-int v0, v0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mBaseVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->getVideoURL()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    const-string/jumbo v3, "application/vnd.apple.mpegurl"

    iput-object v3, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide v0, 0x400000000480L

    const-wide v2, -0x200000000001L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumbnail_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->setProperty(Ljava/lang/Object;)V

    return-void
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

    new-instance v0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;-><init>(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;I)V

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

    const-string/jumbo v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8

    new-instance v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->setProperty(Ljava/lang/Object;)V

    new-instance v1, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->album_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->album_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->album_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    return v2
.end method
