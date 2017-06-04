.class public Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;
.super Lcom/sec/android/gallery3d/data/BurstshotAlbum;
.source "SCloudBurstShotAlbum.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SCloudBurstShotAlbum"

.field public static final TOP_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final WHERE:Ljava/lang/String; = "bucket_id = ? AND group_id = ? AND ( file_status = 0 OR file_status = 4 ) "

.field private static final mBaseUri:Landroid/net/Uri;


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mBaseImageUri:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mBaseUri:Landroid/net/Uri;

    const-string/jumbo v0, "/scloud/burstshot"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->TOP_PATH:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IJ)V
    .locals 4

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/gallery3d/data/BurstshotAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IJ)V

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
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

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "limit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "bucket_id = ? AND group_id = ? AND ( file_status = 0 OR file_status = 4 ) "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mBucketId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mGroupId:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    const-string/jumbo v8, "SCloudBurstShotAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_0

    const-string/jumbo v2, "SCloudBurstShotAlbum"

    const-string/jumbo v4, "query fail for get burst shot images"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v13

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v11}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

    check-cast v2, Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v5, 0x1

    invoke-static {v9, v10, v2, v4, v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_1
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 12

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "bucket_id = ? AND group_id = ? AND ( file_status = 0 OR file_status = 4 ) "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mBucketId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v10, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mGroupId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "SCloudBurstShotAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudBurstShotAlbum;->mCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method
