.class public Lcom/sec/android/gallery3d/data/ShotMode360Album;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ShotMode360Album.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ShotMode360Album"

.field static final TOP_PATH:Ljava/lang/String; = "/local/shotmode/360"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private final mImageItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mImageWatchUri:Landroid/net/Uri;

.field private final mIs360Video:I

.field private final mLogicalBucketId:I

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mShotModeType:I

.field private final mVideoBaseUri:Landroid/net/Uri;

.field private final mVideoItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mVideoOrderClause:Ljava/lang/String;

.field private final mVideoProjection:[Ljava/lang/String;

.field private final mVideoSelectionArgs:[Ljava/lang/String;

.field private final mVideoWatchUri:Landroid/net/Uri;

.field private final mVideoWhereClause:Ljava/lang/String;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 8

    const/16 v7, 0xa50

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotMode360Album;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput v6, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    sget-object v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mLogicalBucketId:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mLogicalBucketId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p3, v7, :cond_0

    iput v7, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mShotModeType:I

    iput v4, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mIs360Video:I

    :goto_0
    new-array v1, v4, [Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mShotModeType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mSelectionArgs:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mIs360Video:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoSelectionArgs:[Ljava/lang/String;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotMode360Album;->CMH_IMAGE_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mBaseUri:Landroid/net/Uri;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mImageWatchUri:Landroid/net/Uri;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "((bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and sef_file_type = ?)"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mWhereClause:Ljava/lang/String;

    :goto_1
    const-string/jumbo v1, "datetaken DESC, _id DESC"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mOrderClause:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mProjection:[Ljava/lang/String;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mImageItemPath:Lcom/sec/android/gallery3d/data/Path;

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotMode360Album;->CMH_VIDEO_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoBaseUri:Landroid/net/Uri;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoWatchUri:Landroid/net/Uri;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "((bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and is_360_video = ?)"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoWhereClause:Ljava/lang/String;

    :goto_2
    const-string/jumbo v1, "datetaken DESC, _id DESC"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoOrderClause:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoProjection:[Ljava/lang/String;

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoItemPath:Lcom/sec/android/gallery3d/data/Path;

    :goto_3
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mImageWatchUri:Landroid/net/Uri;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoWatchUri:Landroid/net/Uri;

    aput-object v1, v0, v4

    new-instance v1, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void

    :cond_0
    const-string/jumbo v1, "ShotMode360Album"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mIs360Video:I

    iput v6, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mShotModeType:I

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "sef_file_type = ?"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mWhereClause:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "is_360_video = ?"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoWhereClause:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mBaseUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mBaseUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mImageWatchUri:Landroid/net/Uri;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "(bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and sef_file_type = ?"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mWhereClause:Ljava/lang/String;

    :goto_4
    const-string/jumbo v1, "datetaken DESC, _id DESC"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mOrderClause:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mProjection:[Ljava/lang/String;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mImageItemPath:Lcom/sec/android/gallery3d/data/Path;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoBaseUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoBaseUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoWatchUri:Landroid/net/Uri;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "(bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)) and is_360_video = ?"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoWhereClause:Ljava/lang/String;

    :goto_5
    const-string/jumbo v1, "datetaken DESC, _id DESC"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoOrderClause:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoProjection:[Ljava/lang/String;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoItemPath:Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v1, "sef_file_type = ?"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mWhereClause:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "is_360_video = ?"

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoWhereClause:Ljava/lang/String;

    goto :goto_5
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mLogicalBucketId:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v6, "limit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v6, "limit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mProjection:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mWhereClause:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mSelectionArgs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v8, "ShotMode360Album"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_1

    :try_start_1
    const-string/jumbo v2, "ShotMode360Album"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "360 photo\'s cursor is null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoProjection:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoWhereClause:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoSelectionArgs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoOrderClause:Ljava/lang/String;

    const-string/jumbo v16, "ShotMode360Album"

    invoke-static/range {v10 .. v16}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v2, "ShotMode360Album"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "360 video\'s cursor is null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v22

    :cond_1
    :goto_2
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mImageItemPath:Lcom/sec/android/gallery3d/data/Path;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x13

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v8, 0x1

    move-object/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/UnionAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v21

    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v19

    :goto_5
    :try_start_4
    const-string/jumbo v2, "ShotMode360Album"

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0, v2, v6}, Lcom/sec/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v21

    goto :goto_4

    :catch_1
    move-exception v19

    move-object/from16 v5, v17

    :goto_6
    :try_start_6
    const-string/jumbo v2, "ShotMode360Album"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object/from16 v5, v17

    :goto_7
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_4
    :goto_8
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoItemPath:Lcom/sec/android/gallery3d/data/Path;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x14

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_5

    const/4 v9, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v8, 0x0

    move-object/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/UnionAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v21

    :goto_a
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catch_2
    move-exception v19

    :try_start_8
    const-string/jumbo v2, "ShotMode360Album"

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_9

    :cond_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0, v2, v6}, Lcom/sec/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v21

    goto :goto_a

    :cond_7
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :catch_3
    move-exception v19

    :try_start_a
    const-string/jumbo v2, "ShotMode360Album"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :catchall_2
    move-exception v2

    goto :goto_7

    :catch_4
    move-exception v19

    goto/16 :goto_6

    :catch_5
    move-exception v19

    move-object/from16 v5, v17

    goto/16 :goto_5
.end method

.method public getMediaItemCount()I
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I

    if-eq v0, v9, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I

    :goto_0
    return v0

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotMode360Album;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mWhereClause:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "ShotMode360Album"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_3

    const-string/jumbo v0, "ShotMode360Album"

    const-string/jumbo v1, "360 photo\'s count is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotMode360Album;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoWhereClause:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mVideoSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "ShotMode360Album"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_4

    const-string/jumbo v0, "ShotMode360Album"

    const-string/jumbo v1, "360 video\'s count is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :goto_2
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I

    if-ne v0, v9, :cond_6

    move v0, v8

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_4
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I

    if-ne v0, v9, :cond_5

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_5
    :try_start_4
    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I

    goto/16 :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotMode360Album;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mDataVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mCachedCount:I

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotMode360Album;->mDataVersion:J

    return-wide v0
.end method
