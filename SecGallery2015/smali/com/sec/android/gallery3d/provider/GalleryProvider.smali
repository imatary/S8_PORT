.class public Lcom/sec/android/gallery3d/provider/GalleryProvider;
.super Landroid/content/ContentProvider;
.source "GalleryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/provider/GalleryProvider$UnionSCloudItemPipeDataWriter;,
        Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;,
        Lcom/sec/android/gallery3d/provider/GalleryProvider$ShareEventPipeDataWriter;,
        Lcom/sec/android/gallery3d/provider/GalleryProvider$CloudImagePipeDataWriter;,
        Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;,
        Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.gallery3d.provider"

.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CLOUD_IMAGES:I = 0x6b

.field private static final CLOUD_IS_CACHED:Ljava/lang/String; = "cloud_is_cached"

.field private static final DELETE_WIDGET_DATA:I = 0x6a

.field private static final EVENT:I = 0x64

.field private static final EVENT_ID:I = 0x65

.field public static final EVENT_URI:Landroid/net/Uri;

.field private static final NEARBY:I = 0x66

.field private static final NEARBY_SELECTION_ARGS_SIZE:I = 0x2

.field private static final NEARBY_THUMB_URI:Ljava/lang/String; = "nearbyThumbUri"

.field private static final NEARBY_VIDEO_NEXT:Ljava/lang/String; = "next"

.field private static final NEARBY_VIDEO_PRE:Ljava/lang/String; = "pre"

.field private static final NEARBY_VIDEO_SEED:Ljava/lang/String; = "seed"

.field private static final NEARBY_VIDEO_URI:Ljava/lang/String; = "play_uri"

.field private static final SHARE_URI:Ljava/lang/String; = "share_uri"

.field private static final SUPPORTED_NEARBY_DEFAULT_COLUMNS:[Ljava/lang/String;

.field private static final SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

.field private static final SUPPORTED_SCLOUD_COLUMNS:[Ljava/lang/String;

.field private static final SUPPORTED_UNLIMITED_SHARE_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GalleryProvider"

.field private static final THUMB_DATA_PATH:Ljava/lang/String; = "thumb_data_path"

.field private static final THUMB_DATA_URL:Ljava/lang/String; = "thumb_data_url"

.field private static final UNLIMITED_SHARE_LIST:I = 0x67

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final WIDGETS:I = 0x68

.field private static final WIDGET_PATHS:I = 0x69

.field private static sBaseUri:Landroid/net/Uri;

.field private static final sSyncLock:Ljava/lang/Object;


# instance fields
.field private mApp:Lcom/sec/android/gallery3d/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "content://com.sec.android.gallery3d.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->EVENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->sSyncLock:Ljava/lang/Object;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "event"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "event/*"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "nearby/item"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "unlimited_share_list"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "widgets"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "widget_paths"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "delete_widget_data"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "cloud_images"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_size"

    aput-object v1, v0, v7

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "thumb_data_path"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "thumb_data_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "play_uri"

    aput-object v1, v0, v4

    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    const-string/jumbo v1, "seed"

    aput-object v1, v0, v6

    const-string/jumbo v1, "nearbyThumbUri"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_NEARBY_DEFAULT_COLUMNS:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_size"

    aput-object v1, v0, v7

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "thumb_data_path"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "cloud_is_cached"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_SCLOUD_COLUMNS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "share_uri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_UNLIMITED_SHARE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->dump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private downloadCloudCacheFile(Lcom/sec/android/gallery3d/data/UnionSCloudItem;)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "GalleryProvider"

    const-string/jumbo v6, "Network is not available so can not download scloud cache file"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a02b7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    instance-of v5, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getServerId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "large"

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->downloadMediaCacheFileWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/scloud/cloudagent/exception/CloudException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getSize()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :cond_3
    const-string/jumbo v5, "GalleryProvider"

    const-string/jumbo v6, "downloaded cached item is not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v4

    goto :goto_0

    :cond_5
    :try_start_1
    instance-of v5, p1, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getServerId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "hd"

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->downloadMediaCacheFileWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Lcom/samsung/android/scloud/cloudagent/exception/CloudException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "GalleryProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to get cached file path for union scloud. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static dump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v2, 0x1000

    new-array v0, v2, [B

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method private getCachedFilePathForUnionSCloud(Lcom/sec/android/gallery3d/data/UnionSCloudItem;)Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getSize()J

    move-result-wide v0

    cmp-long v3, v0, v8

    if-nez v3, :cond_0

    const-string/jumbo v3, "GalleryProvider"

    const-string/jumbo v6, "cloud cache file is not created from server. size is 0"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    cmp-long v3, v4, v0

    if-nez v3, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getThumbPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    move-object v3, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "GalleryProvider"

    const-string/jumbo v6, "thumb item is not exist"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->downloadCloudCacheFile(Lcom/sec/android/gallery3d/data/UnionSCloudItem;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "GalleryProvider"

    const-string/jumbo v6, "cached item is not exist"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getCurrentNearbyVideoObject(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/nearby/item/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    const/16 v4, 0x2f

    const/16 v5, 0x5f

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getFileSize(Ljava/lang/String;)J
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private getNearbyDeviceObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/nearby/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNearbyVideoCursor(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->getPlayUri()Landroid/net/Uri;

    move-result-object v9

    const-string/jumbo v12, "next"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {p1, v9, v12}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->getNearbyVideoItem(Landroid/net/Uri;Z)Lcom/samsung/android/allshare/Item;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v9, "GalleryProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fail to get nearby video [sort order="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] [current uri="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->getPlayUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v9

    :cond_0
    :try_start_1
    move-object/from16 v0, p3

    array-length v9, v0

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v7, v9, :cond_5

    aget-object v2, p3, v7

    const-string/jumbo v9, "play_uri"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v3, v7

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v9, "title"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    :goto_3
    :try_start_2
    const-string/jumbo v9, "GalleryProvider"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_4
    move-object v9, v4

    goto :goto_0

    :cond_2
    :try_start_3
    const-string/jumbo v9, "seed"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Lcom/samsung/android/allshare/extension/ItemExtractor;->extract(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->getSeedString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_3
    :try_start_4
    const-string/jumbo v9, "nearbyThumbUri"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v3, v7

    goto :goto_2

    :cond_4
    const-string/jumbo v9, "GalleryProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unsupported column: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v5, Landroid/database/MatrixCursor;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v5

    goto :goto_4

    :catchall_1
    move-exception v9

    move-object v4, v5

    goto :goto_5

    :catch_1
    move-exception v6

    move-object v4, v5

    goto :goto_3
.end method

.method public static getUriFor(Landroid/content/Context;Lcom/sec/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->sBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->sBaseUri:Landroid/net/Uri;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->sBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

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

.method private openPipeHelper(Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;

    invoke-direct {v3, p1, v1}, Lcom/sec/android/gallery3d/provider/GalleryProvider$WriteDataJob;-><init>(Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;[Landroid/os/ParcelFileDescriptor;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/util/ThreadPool;->submitToNetworkPool(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v3, "failure making pipe"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private queryCloudItem(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    if-nez p2, :cond_0

    sget-object p2, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

    :cond_0
    array-length v10, p2

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getLongitude()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    const/4 v3, 0x0

    array-length v5, p2

    :goto_0
    if-ge v3, v5, :cond_10

    aget-object v0, p2, v3

    const-string/jumbo v10, "_id"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getItemId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "_data"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getFilePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v10, "_display_name"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    :cond_3
    const-string/jumbo v10, "_size"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    :cond_4
    const-string/jumbo v10, "mime_type"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getMimeType()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    :cond_5
    const-string/jumbo v10, "picasa_id"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getSourceId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    :cond_6
    const-string/jumbo v10, "datetaken"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getDateInMs()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    :cond_7
    const-string/jumbo v10, "latitude"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v4, :cond_8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :goto_2
    aput-object v10, v1, v3

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    :cond_9
    const-string/jumbo v10, "longitude"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v4, :cond_a

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :goto_3
    aput-object v10, v1, v3

    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x0

    goto :goto_3

    :cond_b
    const-string/jumbo v10, "orientation"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getRotation()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v3

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v10, "width"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v3

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v10, "height"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v3

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v10, "thumb_data_path"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getThumbPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v10, "GalleryProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unsupported column: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2
.end method

.method private queryNearbyVideo([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "pre"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "next"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, "GalleryProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query fail: sortOrder="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_1
    array-length v5, p2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const-string/jumbo v5, "GalleryProvider"

    const-string/jumbo v6, "query fail: wrong selectionArgs"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    aget-object v1, p2, v5

    const/4 v5, 0x1

    aget-object v2, p2, v5

    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const-string/jumbo v5, "GalleryProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query fail: device id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const-string/jumbo v5, "GalleryProvider"

    const-string/jumbo v6, "null projection: use default projection"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_NEARBY_DEFAULT_COLUMNS:[Ljava/lang/String;

    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getCurrentNearbyVideoObject(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    move-result-object v3

    if-nez v3, :cond_6

    const-string/jumbo v5, "GalleryProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query fail: cannot find current video: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getNearbyDeviceObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    move-result-object v0

    if-nez v0, :cond_7

    const-string/jumbo v5, "GalleryProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query fail: no nearby device, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v0, v3, p1, p3}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getNearbyVideoCursor(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private queryRemoteMedia(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v6, "GalleryProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot find: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v3

    :cond_0
    :try_start_1
    instance-of v6, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-eqz v6, :cond_1

    check-cast v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-direct {p0, v1, p2}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->queryCloudItem(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_2
    instance-of v6, v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    :try_start_3
    check-cast v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-direct {p0, v1, p2}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->queryShareEventItem(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    :try_start_4
    instance-of v6, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-eqz v6, :cond_4

    check-cast v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-direct {p0, v1, p2}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->querySCloudItem(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_4
    :try_start_5
    instance-of v6, v1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v6, :cond_5

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    invoke-direct {p0, v1, p2}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->queryUnionSCloudItem(Lcom/sec/android/gallery3d/data/UnionSCloudItem;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_5
    :try_start_6
    instance-of v6, v1, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-eqz v6, :cond_6

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionAlbum;

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->queryUnionSCloudAlbum(Lcom/sec/android/gallery3d/data/UnionAlbum;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_7
    const-string/jumbo v6, "GalleryProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fail to get uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "GalleryProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private querySCloudItem(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20

    if-nez p2, :cond_0

    sget-object p2, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_SCLOUD_COLUMNS:[Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p2

    array-length v15, v0

    new-array v3, v15, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getLatitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getLongitude()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v9

    const/4 v7, 0x0

    move-object/from16 v0, p2

    array-length v14, v0

    :goto_0
    if-ge v7, v14, :cond_13

    aget-object v2, p2, v7

    const-string/jumbo v15, "_id"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getItemId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v15, "_data"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v7

    goto :goto_1

    :cond_2
    const-string/jumbo v15, "_display_name"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v7

    goto :goto_1

    :cond_3
    const-string/jumbo v15, "_size"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getSize()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v3, v7

    goto :goto_1

    :cond_4
    const-string/jumbo v15, "mime_type"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v7

    goto :goto_1

    :cond_5
    const-string/jumbo v15, "datetaken"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getDateInMs()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v3, v7

    goto :goto_1

    :cond_6
    const-string/jumbo v15, "date_modified"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getModifiedDateInSec()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v3, v7

    goto :goto_1

    :cond_7
    const-string/jumbo v15, "latitude"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    if-eqz v9, :cond_8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    :goto_2
    aput-object v15, v3, v7

    goto :goto_1

    :cond_8
    const/4 v15, 0x0

    goto :goto_2

    :cond_9
    const-string/jumbo v15, "longitude"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    if-eqz v9, :cond_a

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    :goto_3
    aput-object v15, v3, v7

    goto/16 :goto_1

    :cond_a
    const/4 v15, 0x0

    goto :goto_3

    :cond_b
    const-string/jumbo v15, "orientation"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getRotation()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v15, "width"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v15, "height"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v15, "duration"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getDuration()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v15, "thumb_data_path"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getThumbPath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v7

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v15, "cloud_is_cached"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getSize()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-nez v15, :cond_11

    const/4 v8, 0x1

    :cond_11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v7

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v15, "GalleryProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unsupported column: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v4
.end method

.method private queryShareEventItem(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v8, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

    :cond_0
    array-length v5, p2

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p2

    :goto_0
    if-ge v3, v4, :cond_e

    aget-object v0, p2, v3

    const-string/jumbo v5, "_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getSourceId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "_data"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "_display_name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "_size"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "mime_type"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "datetaken"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getDateInMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "latitude"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    aput-object v8, v1, v3

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "longitude"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    aput-object v8, v1, v3

    goto :goto_1

    :cond_8
    const-string/jumbo v5, "orientation"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getRotation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v5, "width"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v5, "height"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v5, "thumb_data_path"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getThumbPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v5, "thumb_data_url"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getThumbUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v5, "GalleryProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupported column: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2
.end method

.method private queryShareList()Landroid/database/Cursor;
    .locals 11

    sget-object v4, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_UNLIMITED_SHARE_COLUMNS:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/samsung/gallery/util/ShareList;->getShareList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const-string/jumbo v8, "GalleryProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "queryShareList = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    array-length v8, v4

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v9

    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/ShareList;->clearShareList()V

    goto :goto_0

    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :catchall_1
    move-exception v8

    move-object v1, v2

    goto :goto_2
.end method

.method private queryUnionSCloudAlbum(Lcom/sec/android/gallery3d/data/UnionAlbum;)Landroid/database/Cursor;
    .locals 18

    const/4 v15, 0x2

    new-array v14, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "_id"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "_data"

    aput-object v16, v14, v15

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getTotalMediaItemCount()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    array-length v15, v14

    new-array v3, v15, [Ljava/lang/Object;

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v9, v15, :cond_5

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    const/4 v8, 0x0

    array-length v13, v14

    :goto_1
    if-ge v8, v13, :cond_4

    aget-object v2, v14, v8

    const-string/jumbo v15, "_id"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getItemId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v8

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v15, "_data"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getSize()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getFileSize(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v15, v16, v6

    if-nez v15, :cond_2

    const/4 v10, 0x1

    :goto_3
    if-nez v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v15}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v15

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    const-string/jumbo v15, "GalleryProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unsupported column: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v4
.end method

.method private queryUnionSCloudItem(Lcom/sec/android/gallery3d/data/UnionSCloudItem;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 24

    if-nez p2, :cond_0

    sget-object p2, Lcom/sec/android/gallery3d/provider/GalleryProvider;->SUPPORTED_SCLOUD_COLUMNS:[Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getLatitude()D

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v13

    const-string/jumbo v19, "GalleryProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "query union item ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getServerId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "] start"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getSize()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getFileSize(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v19, v20, v10

    if-nez v19, :cond_3

    const/4 v12, 0x1

    :goto_0
    if-nez v12, :cond_1

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v20

    move-object/from16 v19, p1

    check-cast v19, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    if-nez v12, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getThumbPath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getFileSize(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-lez v19, :cond_4

    const/4 v12, 0x1

    :cond_2
    :goto_1
    const/4 v9, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v18

    if-ge v9, v0, :cond_19

    aget-object v4, p2, v9

    const-string/jumbo v19, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getItemId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v9

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v19, "_data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string/jumbo v19, "GalleryProvider"

    const-string/jumbo v20, "queried item data"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v8, v5, v9

    goto :goto_3

    :cond_6
    const-string/jumbo v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string/jumbo v19, "GalleryProvider"

    const-string/jumbo v20, "queried item title"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v9

    goto :goto_3

    :cond_7
    const-string/jumbo v19, "_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const-string/jumbo v19, "GalleryProvider"

    const-string/jumbo v20, "queried item display name"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    :goto_4
    aput-object v7, v5, v9

    goto :goto_3

    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_9
    const-string/jumbo v19, "_size"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string/jumbo v19, "GalleryProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "queried item size["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getSize()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v19, "mime_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const-string/jumbo v19, "GalleryProvider"

    const-string/jumbo v20, "queried item mime type"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getMimeType()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v19, "datetaken"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getDateInMs()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v19, "date_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getModifiedDateInSec()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v19, "latitude"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    if-eqz v13, :cond_e

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    :goto_5
    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_e
    const/16 v19, 0x0

    goto :goto_5

    :cond_f
    const-string/jumbo v19, "longitude"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    if-eqz v13, :cond_10

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    :goto_6
    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_10
    const/16 v19, 0x0

    goto :goto_6

    :cond_11
    const-string/jumbo v19, "orientation"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const-string/jumbo v19, "GalleryProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "queried item orientation["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getRotation()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getRotation()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v19, "width"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const-string/jumbo v19, "GalleryProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "queried item width["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getWidth()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getWidth()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v19, "height"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    const-string/jumbo v19, "GalleryProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "queried item height["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getHeight()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getHeight()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_14
    const-string/jumbo v19, "duration"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const-string/jumbo v19, "GalleryProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "queried item duration["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getDuration()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getDuration()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_15
    const-string/jumbo v19, "thumb_data_path"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getThumbPath()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v19, "cloud_is_cached"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    const-string/jumbo v19, "GalleryProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "queried item isCached["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_17

    const/16 v19, 0x1

    :goto_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v9

    goto/16 :goto_3

    :cond_17
    const/16 v19, 0x0

    goto :goto_7

    :cond_18
    const-string/jumbo v19, "GalleryProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unsupported column: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_19
    const-string/jumbo v19, "GalleryProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "query union item ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getServerId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "] end"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    sget-object v3, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_0

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "vnd.android.cursor.item/vnd.com.sec.android.gallery3d.provider.event"

    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->init(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    const-string/jumbo v5, "w"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/FileNotFoundException;

    const-string/jumbo v8, "cannot open file for write"

    invoke-direct {v5, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    instance-of v5, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-eqz v5, :cond_2

    new-instance v5, Lcom/sec/android/gallery3d/provider/GalleryProvider$CloudImagePipeDataWriter;

    check-cast v3, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v3, v8}, Lcom/sec/android/gallery3d/provider/GalleryProvider$CloudImagePipeDataWriter;-><init>(Lcom/sec/android/gallery3d/provider/GalleryProvider;Lcom/sec/android/gallery3d/remote/cloud/CloudImage;Lcom/sec/android/gallery3d/provider/GalleryProvider$1;)V

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->openPipeHelper(Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v5

    :cond_2
    :try_start_2
    instance-of v5, v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/sec/android/gallery3d/provider/GalleryProvider$ShareEventPipeDataWriter;

    check-cast v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v3, v8}, Lcom/sec/android/gallery3d/provider/GalleryProvider$ShareEventPipeDataWriter;-><init>(Lcom/sec/android/gallery3d/provider/GalleryProvider;Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;Lcom/sec/android/gallery3d/provider/GalleryProvider$1;)V

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->openPipeHelper(Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    :try_start_3
    instance-of v5, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-eqz v5, :cond_4

    new-instance v5, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;

    check-cast v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v3, v8}, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;-><init>(Lcom/sec/android/gallery3d/provider/GalleryProvider;Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;Lcom/sec/android/gallery3d/provider/GalleryProvider$1;)V

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->openPipeHelper(Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_4
    :try_start_4
    instance-of v5, v3, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v5, :cond_6

    move-object v0, v3

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    move-object v5, v0

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getCachedFilePathForUnionSCloud(Lcom/sec/android/gallery3d/data/UnionSCloudItem;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string/jumbo v5, "GalleryProvider"

    const-string/jumbo v8, "cache file path is null"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to get item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v5, Lcom/sec/android/gallery3d/provider/GalleryProvider$UnionSCloudItemPipeDataWriter;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v2, v8}, Lcom/sec/android/gallery3d/provider/GalleryProvider$UnionSCloudItemPipeDataWriter;-><init>(Lcom/sec/android/gallery3d/provider/GalleryProvider;Ljava/lang/String;Lcom/sec/android/gallery3d/provider/GalleryProvider$1;)V

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->openPipeHelper(Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_6
    :try_start_5
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unsupported type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const-string/jumbo v0, "GalleryProvider"

    const-string/jumbo v1, "Gallery provider queried"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    const/16 v0, 0x64

    if-ne v7, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getEvent(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x65

    if-ne v7, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getEventMediaItems(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x66

    if-ne v7, v0, :cond_2

    invoke-direct {p0, p2, p4, p5}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->queryNearbyVideo([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x67

    if-ne v7, v0, :cond_3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->queryShareList()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x68

    if-ne v7, v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/WidgetDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/WidgetDatabaseManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/WidgetDatabaseManager;->getWidgets(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x69

    if-ne v7, v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/WidgetDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/WidgetDatabaseManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/sec/samsung/gallery/util/WidgetDatabaseManager;->getWidgetPaths(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x6a

    if-ne v7, v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/WidgetDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/WidgetDatabaseManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/WidgetDatabaseManager;->deleteWidgetFiles(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/16 v0, 0x6b

    if-ne v7, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "GalleryProvider"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->queryRemoteMedia(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
