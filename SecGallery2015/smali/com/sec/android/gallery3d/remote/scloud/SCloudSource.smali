.class public Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSource;
.source "SCloudSource.java"


# static fields
.field private static final ALBUM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final CLOUD_ALBUM:I = 0x1

.field private static final CLOUD_ALBUM_RECYCLE_BIN:I = 0x7

.field private static final CLOUD_ALBUM_SET:I = 0x0

.field private static final CLOUD_ALBUM_SET_RECYCLE_BIN:I = 0x6

.field private static final CLOUD_BURST_SHOT_ITEM_ALBUM:I = 0xa

.field private static final CLOUD_IMAGE_ALBUM:I = 0x2

.field private static final CLOUD_IMAGE_ALBUM_RECYCLE_BIN:I = 0x8

.field private static final CLOUD_IMAGE_ITEM:I = 0x4

.field private static final CLOUD_VIDEO_ALBUM:I = 0x3

.field private static final CLOUD_VIDEO_ALBUM_RECYCLE_BIN:I = 0x9

.field private static final CLOUD_VIDEO_ITEM:I = 0x5

.field private static final NO_MATCH:I = -0x1

.field public static final PATH_PREFIX:Ljava/lang/String; = "scloud"

.field public static final SCLOUD_BUCKET_ID:I

.field private static final TAG:Ljava/lang/String; = "SCloudSource"


# instance fields
.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/scloud/all"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->ALBUM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget v0, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SCLOUD_BUCKET_ID:I

    sput v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->SCLOUD_BUCKET_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string/jumbo v0, "scloud"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/remote/RemoteMediaSource;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/all"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/image"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/video"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/all/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/image/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/video/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/image/item/*"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/video/item/*"

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/recyclebinall"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/recyclebinall/*"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/recyclebinimage/*"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/recyclebinvideo/*"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/scloud/burstshot/*/*"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.samsung.android.scloud.cloudagent"

    const-string/jumbo v2, "data/images/media/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.samsung.android.scloud.cloudagent"

    const-string/jumbo v2, "data/videos/media/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "scloud/image/item/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.android.gallery3d.provider"

    const-string/jumbo v2, "scloud/video/item/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
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
    iget-object v10, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v10, p3, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemById(Lcom/sec/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/sec/android/gallery3d/data/MediaItem;

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

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Z)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1, v4, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1, v3, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    sget-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    sget v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->SCLOUD_BUCKET_ID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    sget v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->SCLOUD_BUCKET_ID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v6, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;

    new-array v1, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    invoke-direct {v0, p1, v6, v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Z)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    sget-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_RECYCLEBIN_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    sget v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->SCLOUD_BUCKET_ID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_RECYCLEBIN_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    sget v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->SCLOUD_BUCKET_ID:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v6, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;

    new-array v1, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v8, v1, v3

    aput-object v9, v1, v4

    invoke-direct {v0, p1, v6, v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1, v4, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1, v3, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IJ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    sget-object v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_0
    move-object v1, v4

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v5, v2, v6

    if-ltz v5, :cond_1

    sget-object v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    goto :goto_0

    :cond_1
    move-object v1, v4

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SCloudSource"

    const-string/jumbo v5, "uri: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->ALBUM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->SCLOUD_BUCKET_ID:I

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

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

    sget-object v6, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6}, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    const/4 v6, 0x0

    invoke-direct {p0, v5, p2, v6}, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    return-void
.end method
