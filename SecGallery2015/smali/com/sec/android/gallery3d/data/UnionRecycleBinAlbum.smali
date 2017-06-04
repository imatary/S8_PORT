.class public Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;
.super Lcom/sec/android/gallery3d/data/UnionAlbum;
.source "UnionRecycleBinAlbum.java"


# static fields
.field private static final CMH_IMAGE_PROJECTION:Ljava/lang/String;

.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UnionRecycleBinAlbum"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private mGroupCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWatchUri:Landroid/net/Uri;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "group_id"

    aput-object v3, v1, v2

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

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->CMH_IMAGE_PROJECTION:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/UnionAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mCachedCount:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mGroupCachedCount:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mResolver:Landroid/content/ContentResolver;

    iput p3, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mBucketId:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a034e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mIsImage:Z

    if-eqz p4, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->CMH_IMAGE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mProjection:[Ljava/lang/String;

    const-string/jumbo v0, "file_status = 2"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWhereClause:Ljava/lang/String;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mOrderClause:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWatchUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->CMH_VIDEO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mProjection:[Ljava/lang/String;

    const-string/jumbo v0, "file_status = 2"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWhereClause:Ljava/lang/String;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mOrderClause:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private static clearCache(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;J)V
    .locals 2

    invoke-interface {p0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->clearImageData(Lcom/sec/android/gallery3d/data/Path;JI)V

    const/4 v1, 0x2

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->clearImageData(Lcom/sec/android/gallery3d/data/Path;JI)V

    const/4 v1, 0x3

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->clearImageData(Lcom/sec/android/gallery3d/data/Path;JI)V

    const/4 v1, 0x4

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->clearImageData(Lcom/sec/android/gallery3d/data/Path;JI)V

    const/4 v1, 0x5

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->clearImageData(Lcom/sec/android/gallery3d/data/Path;JI)V

    const/4 v1, 0x6

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->clearImageData(Lcom/sec/android/gallery3d/data/Path;JI)V

    return-void
.end method

.method private getGroupProjectionForSCloud(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " FROM images WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

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

    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMediaItemForBurstShot(II)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "limit"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    :try_start_0
    sget-object v15, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->getGroupProjectionForSCloud(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "group_id"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " = 0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v7, "UnionRecycleBinAlbum"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    if-nez v7, :cond_0

    :try_start_1
    const-string/jumbo v1, "UnionRecycleBinAlbum"

    const-string/jumbo v5, "query fail: "

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v14

    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v12}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_2
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v7, v11

    goto :goto_2
.end method

.method private getMediaItemGroupCount()I
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mGroupCachedCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->CMH_IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "FROM ( SELECT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->CMH_IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " FROM images WHERE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "group_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " != 0 ) GROUP BY "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "group_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "bucket_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " UNION SELECT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->CMH_IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "group_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mBaseUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionRecycleBinAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mGroupCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mGroupCachedCount:I

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "UnionRecycleBinAlbum"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_0
.end method

.method private loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;Z)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 6

    sget-object v2, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p3, p1}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-nez v0, :cond_1

    if-eqz p5, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-direct {v0, p1, p4, p2}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    invoke-direct {v0, p1, p4, p2}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->removeObject()V

    if-eqz p5, :cond_2

    new-instance v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-direct {v0, p1, p4, p2}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    invoke-direct {v0, p1, p4, p2}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getModifiedDateInSec()J

    move-result-wide v4

    invoke-static {p4, p1, v4, v5}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->clearCache(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->updateContent(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mBucketId:I

    return v0
.end method

.method public getBurstShotItems(J)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mIsImage:Z

    if-nez v0, :cond_0

    :goto_0
    return-object v11

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mProjection:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "group_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionRecycleBinAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    :try_start_1
    const-string/jumbo v0, "UnionRecycleBinAlbum"

    const-string/jumbo v3, "getBurstShotItems - query fail"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_2
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->getMediaItemForBurstShot(II)Ljava/util/ArrayList;

    move-result-object v12

    :goto_0
    return-object v12

    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v9

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "limit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v6, "UnionRecycleBinAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    if-nez v4, :cond_1

    :try_start_1
    const-string/jumbo v0, "UnionRecycleBinAlbum"

    const-string/jumbo v2, "query fail: "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, v9

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v8

    goto :goto_2
.end method

.method public getMediaItemCount()I
    .locals 9

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->getMediaItemGroupCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionRecycleBinAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v0, "UnionRecycleBinAlbum"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v8

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mDataVersion:J

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mCachedCount:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mGroupCachedCount:I

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;->mDataVersion:J

    return-wide v0
.end method
