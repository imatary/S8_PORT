.class public Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSet;
.source "CloudAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;
    }
.end annotation


# static fields
.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "UPPER(bucket_display_name)"

.field private static final INDEX_BUCKET_ID:I = 0x0

.field private static final INDEX_BUCKET_ID_STRING:I = 0x3

.field private static final INDEX_BUCKET_MEDIA_TYPE:I = 0x2

.field private static final INDEX_BUCKET_NAME:I = 0x1

.field private static final MESSAGE_PENDING_RELOAD:I = 0x0

.field public static final PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final RELOAD_TIME_GAP:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "CloudAlbumSet"

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

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mBaseUri:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    const-string/jumbo v0, "content://cloudpendingreload"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mPendingReload:Landroid/net/Uri;

    const-string/jumbo v0, "/cloud/image"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/cloud/video"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mType:I

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mNotifierImage:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mNotifierVideo:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mPendingReload:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mPendingNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$1;-><init>(Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mMainHandler:Landroid/os/Handler;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;)Lcom/sec/android/gallery3d/data/ChangeNotifier;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mPendingNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-object v0
.end method

.method private changeToMediaType(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "limit"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string/jumbo v3, "bucket_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const-string/jumbo v6, "CloudAlbumSet"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "CloudAlbumSet"

    const-string/jumbo v2, "query fail: "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :try_start_2
    const-string/jumbo v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getCloudAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 13

    invoke-virtual/range {p3 .. p4}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v10

    if-eqz v10, :cond_0

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v0, v10

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
    new-instance v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v4, 0x1

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v4, 0x0

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v9, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;

    const/4 v2, 0x2

    new-array v11, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v12, 0x0

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->getCloudAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x1

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->getCloudAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-direct {v0, v1, v9, v11}, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/sec/android/gallery3d/data/MediaSet;)V

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

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string/jumbo v2, "image"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "video"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadBucketEntries(Landroid/database/Cursor;)[Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;
    .locals 9

    const/4 v8, 0x2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->changeToMediaType(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mType:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mType:I

    if-ne v6, v5, :cond_0

    :cond_1
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eq v5, v8, :cond_2

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    :cond_2
    new-instance v4, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;

    invoke-direct {v4, v0, v2, v1}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;

    return-object v6
.end method

.method private loadSubMediaSets()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mBaseUri:Landroid/net/Uri;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UPPER(bucket_display_name)"

    const-string/jumbo v7, "CloudAlbumSet"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-nez v11, :cond_0

    const-string/jumbo v1, "CloudAlbumSet"

    const-string/jumbo v3, "cannot open local database: "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v10, v1

    :goto_0
    return-object v10

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->loadBucketEntries(Landroid/database/Cursor;)[Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    array-length v0, v13

    move/from16 v17, v0

    const/4 v1, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v1, v0, :cond_1

    aget-object v14, v13, v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mType:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget v7, v14, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;->bucketId:I

    iget-object v8, v14, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v9, v14, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet$BucketEntry;->bucketIdString:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->getCloudAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_2
    const-string/jumbo v1, "CloudAlbumSet"

    const-string/jumbo v3, "Cloud DB Permission error"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "CloudAlbumSet"

    invoke-virtual {v12}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method


# virtual methods
.method public getBucketId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;->getBucketId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()J
    .locals 6

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v4

    and-long/2addr v2, v4

    goto :goto_1

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public getTotalMediaItemCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

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

.method public reload()J
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mNotifierImage:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mNotifierVideo:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mDataVersion:J

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mDataVersion:J

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mPendingNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbumSet;->mDataVersion:J

    goto :goto_0
.end method
