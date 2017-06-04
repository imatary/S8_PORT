.class public Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSet;
.source "SCloudAlbumSet.java"


# static fields
.field private static final CLUSTER_PROJECTION:[Ljava/lang/String;

.field private static final CLUSTER_PROJECTION_STRING:Ljava/lang/String;

.field private static final MESSAGE_PENDING_RELOAD:I = 0x0

.field public static final PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_RECYCLEBIN_IMAGE:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_RECYCLEBIN_VIDEO:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

.field private static final PROJECTION_MEDIA_TYPE:[Ljava/lang/String;

.field private static final RELOAD_TIME_GAP:I = 0x5dc

.field private static final SELECTION:Ljava/lang/String; = "(media_type=1 OR media_type=3)"

.field private static final SELECTION_IMAGE:Ljava/lang/String; = "media_type=1"

.field private static final SELECTION_VIDEO:Ljava/lang/String; = "media_type=3"

.field private static final TAG:Ljava/lang/String; = "SCloudAlbumSet"

.field private static final mBaseUri:Landroid/net/Uri;

.field private static final mPendingReload:Landroid/net/Uri;

.field private static final mWatchUriImage:Landroid/net/Uri;

.field private static final mWatchUriVideo:Landroid/net/Uri;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mName:Ljava/lang/String;

.field private final mNotifierImage:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mNotifierVideo:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mPendingNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mRecycleBinMode:Z

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "/scloud/image"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/scloud/video"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/scloud/recyclebinimage"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_RECYCLEBIN_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/scloud/recyclebinvideo"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_RECYCLEBIN_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->CLUSTER_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->CLUSTER_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v2, ", "

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->CLUSTER_PROJECTION_STRING:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PROJECTION_MEDIA_TYPE:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    const-string/jumbo v0, "content://scloud/pending"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mPendingReload:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mType:I

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mNotifierImage:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mNotifierVideo:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mPendingReload:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mPendingNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet$1;-><init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mMainHandler:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mRecycleBinMode:Z

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;)Lcom/sec/android/gallery3d/data/ChangeNotifier;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mPendingNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-object v0
.end method

.method private addConditionQueryWhere()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "(media_type=1 OR media_type=3)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mRecycleBinMode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "file_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "file_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getBucketName(Lcom/sec/android/gallery3d/app/GalleryApp;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGroupProjectionForSCloud(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " FROM cloudfiles  WHERE ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "group_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMediaType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "(media_type=1 OR media_type=3)"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "media_type=1"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "media_type=3"

    goto :goto_0
.end method

.method private getSCloudAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 9

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    sget v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudSource;->SCLOUD_BUCKET_ID:I

    invoke-virtual {p3, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v7

    if-eqz v7, :cond_0

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mRecycleBinMode:Z

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ZLjava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mRecycleBinMode:Z

    move v3, v8

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ZLjava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    sget-object v6, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;

    new-array v2, v5, [Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0, p1, v5, v4, p4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->getSCloudAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0, p1, v4, v5, p4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->getSCloudAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ge v2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v2, "all"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "recyclebinall"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v1, 0x6

    :cond_2
    :goto_0
    return v1

    :cond_3
    const-string/jumbo v2, "image"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "recyclebinimage"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v1, "video"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "recyclebinvideo"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadSubMediaSets()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mBaseUri:Landroid/net/Uri;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->addConditionQueryWhere()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->PROJECTION_MEDIA_TYPE:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "SCloudAlbumSet"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v0, "SCloudAlbumSet"

    const-string/jumbo v2, "cannot open database. cursor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v7, v0

    :goto_0
    return-object v7

    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mType:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mName:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->getSCloudAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    :goto_1
    if-ge v10, v11, :cond_2

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_2
    const-string/jumbo v0, "SCloudAlbumSet"

    const-string/jumbo v2, "SCloud DB Permission error"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SCloudAlbumSet"

    invoke-virtual {v9}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public getAlbumSetType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mType:I

    return v0
.end method

.method public getBucketId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;->getBucketId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getTotalMediaItems(I)Landroid/database/Cursor;
    .locals 14

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mBaseUri:Landroid/net/Uri;

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "( file_status = 0 OR file_status = 4 ) AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->getMediaType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->CLUSTER_PROJECTION_STRING:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->getGroupProjectionForSCloud(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " ( "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ) AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "group_id"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " = 0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "datetaken DESC, _id DESC"

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string/jumbo v6, "SCloudAlbumSet"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-string/jumbo v0, "SCloudAlbumSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTotalMediaItems in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v7

    :catch_0
    move-exception v8

    const-string/jumbo v0, "SCloudAlbumSet"

    const-string/jumbo v4, "There is problem in getTotalMediaItems"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reload()J
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mNotifierImage:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mNotifierVideo:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mDataVersion:J

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mDataVersion:J

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mPendingNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->mDataVersion:J

    goto :goto_0
.end method
