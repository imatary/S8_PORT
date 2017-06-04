.class public Lcom/sec/android/gallery3d/remote/cloud/CloudSource;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSource;
.source "CloudSource.java"


# static fields
.field public static final ALBUM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final CLOUD_ALBUM:I = 0x1

.field private static final CLOUD_ALBUMSET:I = 0x0

.field private static final CLOUD_IMAGE_ALBUM:I = 0x2

.field private static final CLOUD_IMAGE_ITEM:I = 0x4

.field private static final CLOUD_VIDEO_ALBUM:I = 0x3

.field private static final CLOUD_VIDEO_ITEM:I = 0x5

.field private static final NO_MATCH:I = -0x1

.field public static final PATH_PREFIX:Ljava/lang/String; = "cloud"

.field private static final TAG:Ljava/lang/String; = "CloudSource"


# instance fields
.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/cloud/all"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->ALBUM_PATH:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string/jumbo v0, "cloud"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/remote/RemoteMediaSource;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cloud/all"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cloud/image"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cloud/video"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cloud/all/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cloud/image/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cloud/video/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cloud/image/item/*"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/cloud/video/item/*"

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "cloud"

    const-string/jumbo v2, "data/images/media/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "cloud"

    const-string/jumbo v2, "data/videos/media/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "cloud/image/item/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "cloud/video/item/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static isCloudDataExist(Lcom/sec/android/gallery3d/app/GalleryApp;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "bucket_id"

    aput-object v0, v2, v10

    const-string/jumbo v0, "bucket_display_name"

    aput-object v0, v2, v9

    const/4 v0, 0x2

    const-string/jumbo v1, "media_type"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v2, v0

    :try_start_0
    invoke-interface {p0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "CloudSource"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-le v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v0

    :cond_0
    move v0, v10

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "CloudSource"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "CloudSource"

    const-string/jumbo v1, "Cannot read DROPBOX images"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static isCloudImage(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 1

    instance-of v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    return v0
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    sget-object v10, Lcom/sec/android/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v7, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    :goto_1
    if-ge v4, v6, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    iget-object v10, v8, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v10, v0, v9

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_2

    :cond_0
    iget-object v10, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v10, p3, v2}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;->getMediaItemById(Lcom/sec/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    iget v10, v8, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->id:I

    sub-int v11, v5, v1

    aget-object v11, v3, v11

    invoke-interface {p2, v10, v11}, Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v10

    if-nez v10, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_0
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v6, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bad path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    new-instance v6, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v6, p1, v7}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    :goto_0
    return-object v6

    :pswitch_1
    new-instance v6, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v7, v9}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-direct {v6, p1, v0, v7, v8}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    :pswitch_2
    new-instance v6, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v7, v9}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-direct {v6, p1, v0, v7, v9}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    sget-object v6, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v6, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v2, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v6, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v4, v7, v9

    aput-object v5, v7, v8

    invoke-direct {v6, p1, v2, v7}, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_4
    new-instance v6, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    :pswitch_5
    new-instance v6, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    sget-object v4, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    sget-object v4, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "CloudSource"

    const-string/jumbo v5, "uri: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->ALBUM_PATH:Lcom/sec/android/gallery3d/data/Path;

    check-cast v1, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    iget-object v6, v4, Lcom/sec/android/gallery3d/data/MediaSource$PathId;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    sget-object v6, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6}, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    const/4 v6, 0x0

    invoke-direct {p0, v5, p2, v6}, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    return-void
.end method
