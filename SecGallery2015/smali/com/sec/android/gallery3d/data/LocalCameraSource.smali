.class public Lcom/sec/android/gallery3d/data/LocalCameraSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "LocalCameraSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/LocalCameraSource$IdComparator;
    }
.end annotation


# static fields
.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucketId"

.field private static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"

.field private static final LOCAL_CAMERA_ALL_ALBUM:I = 0x8

.field private static final LOCAL_CAMERA_ALL_ALBUMSET:I = 0x7

.field private static final LOCAL_CAMERA_BURSTSHOT_LOCAL_ALBUM:I = 0x14

.field private static final LOCAL_CAMERA_IMAGE_ALBUM:I = 0x2

.field private static final LOCAL_CAMERA_IMAGE_ALBUMSET:I = 0x0

.field private static final LOCAL_CAMERA_IMAGE_ITEM:I = 0x4

.field private static final LOCAL_CAMERA_VIDEO_ALBUM:I = 0x3

.field private static final LOCAL_CAMERA_VIDEO_ALBUMSET:I = 0x1

.field private static final LOCAL_CAMERA_VIDEO_ITEM:I = 0x5

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final NO_MATCH:I = -0x1

.field static final PATH_PREFIX:Ljava/lang/String; = "localcamera"

.field private static final TAG:Ljava/lang/String; = "LocalCameraSource"

.field private static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/LocalCameraSource$IdComparator;-><init>(Lcom/sec/android/gallery3d/data/LocalCameraSource$1;)V

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const-string/jumbo v0, "localcamera"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mUriMatcher:Landroid/content/UriMatcher;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/localcamera/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/localcamera/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/localcamera/all"

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/localcamera/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/localcamera/video/*"

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/localcamera/all/*"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/localcamera/image/item/*"

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/localcamera/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/localcamera/burstshot/local/*/*"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string/jumbo v2, "external/file"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/sec/android/gallery3d/data/Path;
    .locals 8

    const/4 v4, 0x0

    const-string/jumbo v5, "mediaTypes"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/sec/android/gallery3d/data/LocalCameraSource;->getMediaType(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "bucketId"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v4

    :catch_0
    move-exception v1

    const-string/jumbo v5, "LocalCameraSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid bucket id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    const-string/jumbo v4, "/localcamera/image"

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    const-string/jumbo v4, "/localcamera/video"

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LocalCameraSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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

    sget-object v10, Lcom/sec/android/gallery3d/data/LocalCameraSource;->sIdComparator:Ljava/util/Comparator;

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
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-static {v10, p3, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getMediaItemById(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;ZLjava/util/ArrayList;)[Lcom/sec/android/gallery3d/data/MediaItem;

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
    .locals 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2, v4}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZ)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZ)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;I)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v6

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v8

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v7, Lcom/sec/android/gallery3d/data/LibraryDataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v9, v2, v3

    aput-object v11, v2, v4

    invoke-direct {v0, p1, v7, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/sec/android/gallery3d/data/BurstshotLocalCameraAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/PathMatcher;->getLongVar(I)J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/BurstshotLocalCameraAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IJ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mUriMatcher:Landroid/content/UriMatcher;

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

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalCameraImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/sec/android/gallery3d/data/LocalCameraSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Lcom/sec/android/gallery3d/data/LocalCameraSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/sec/android/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "LocalCameraSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/localcamera/all"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraSource;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string/jumbo v1, "/localcamera/image"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const-string/jumbo v1, "/localcamera/video"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

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

    sget-object v6, Lcom/sec/android/gallery3d/data/LocalCameraImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    if-ne v3, v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6}, Lcom/sec/android/gallery3d/data/LocalCameraSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    const/4 v6, 0x0

    invoke-direct {p0, v5, p2, v6}, Lcom/sec/android/gallery3d/data/LocalCameraSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;Z)V

    return-void
.end method
