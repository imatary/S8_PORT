.class public Lcom/sec/android/gallery3d/remote/cloud/CloudImage;
.super Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;
.source "CloudImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/cloud/CloudImage$CloudLargeImageRequest;,
        Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;
    }
.end annotation


# static fields
.field private static final CACHED_IMAGE_SIZE:I = 0x400

.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final MAX_THREAD_COUNT:I = 0x5

.field static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CloudImage"

.field private static final mSyncIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPath:Lcom/sec/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "/cloud/image/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    const/16 v0, 0x10

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

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "cloud_is_cached"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mBaseFileUri:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v2, v3, v4, p3}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "cannot get cursor for: "

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    const-string/jumbo v4, "CloudImage"

    const-string/jumbo v5, "Cursor getCount is zero"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->setProperty(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_0
    return-void

    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "cannot find data for: "

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v4, "CloudImage"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mBaseImageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v1, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private startSyncCloud()V
    .locals 3

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;-><init>(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)V

    const-string/jumbo v2, "SyncCloudImage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mBaseImageUri:Landroid/net/Uri;

    const-string/jumbo v1, "_id"

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    const/4 v0, 0x1

    return v0
.end method

.method public download(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/cloudagent/CloudStore$API;->download(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CloudImage"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

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
    .locals 6

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    invoke-static {v2, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->height:I

    return v0
.end method

.method public getItemId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->_id:J

    long-to-int v0, v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->longitude:D

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSharedFilePath()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/cloudagent/CloudStore$API;->prefetchWithBlocking(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    iput-object v2, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v1, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CloudImage"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide v0, 0x600080000400L

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_0
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumbnail_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->width:I

    return v0
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

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

    new-instance v0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;-><init>(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v1, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v1, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->startSyncCloud()V

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$CloudLargeImageRequest;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$CloudLargeImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CloudImage"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0
.end method

.method public rotate(I)V
    .locals 8

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->rotation:I

    add-int/2addr v2, p1

    rem-int/lit16 v0, v2, 0x168

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "_size"

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "orientation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mBaseImageUri:Landroid/net/Uri;

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v7, v7, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iput v0, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->rotation:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$2;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$2;-><init>(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 8

    new-instance v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->setProperty(Ljava/lang/Object;)V

    new-instance v1, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->size:J

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->content_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->date_edited:J

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->album_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->album_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->album_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->rotation:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->rotation:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->rotation:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_status:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->latitude:D

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->latitude:D

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->latitude:D

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->longitude:D

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->longitude:D

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->longitude:D

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->width:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->width:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->width:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->height:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->height:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->height:I

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    return v2
.end method
