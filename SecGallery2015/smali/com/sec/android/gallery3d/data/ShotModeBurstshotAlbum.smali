.class public Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ShotModeBurstshotAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ShotModeBurstshotAlbum"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjectionString:Ljava/lang/String;

.field private final mWatchUri:Landroid/net/Uri;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mCachedCount:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->CMH_IMAGE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "(group_id != 0 and is_hide != 1 and (file_status = 0 or file_status = 4)) GROUP BY group_id HAVING (COUNT(group_id)>1)"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mWhereClause:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mProjectionString:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mOrderClause:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mWatchUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void

    :cond_0
    const-string/jumbo v0, "(group_id != 0 and (file_status = 0 or file_status = 4)) GROUP BY group_id HAVING (COUNT(group_id)>1)"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mBaseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "group_id != 0 and is_hide != 1) GROUP BY group_id HAVING (COUNT(group_id)>1"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mWhereClause:Ljava/lang/String;

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mProjectionString:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "group_id != 0) GROUP BY group_id HAVING (COUNT(group_id)>1"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mWhereClause:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/gallery3d/data/LogicalBucketList;->BURSTSHOT_BUCKET_ID:I

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
    .locals 18
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

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

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

    invoke-virtual {v1, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v10, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, " where group_id !=0 and is_hide != 1 and (file_status = 0 or file_status = 4) "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mProjectionString:Ljava/lang/String;

    const-string/jumbo v6, "sef_file_sub_type"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mProjectionString:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "from "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "( select "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mProjectionString:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " from images "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " group by group_id having "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "( count(group_id) > 1 and group_id not in "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " ( select "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "distinct group_id from images "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v13, :cond_4

    const-string/jumbo v1, " and sef_file_sub_type = 1 "

    :goto_1
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " ) "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ") order by "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ") "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, "union select "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mProjectionString:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " group_id in "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "( "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "select group_id from images "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " group by group_id having count(group_id) > 1"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ") "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v13, :cond_5

    const-string/jumbo v1, " and sef_file_sub_type = 1 "

    :goto_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v6, "("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v7, "ShotModeBurstshotAlbum"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_6

    :try_start_1
    const-string/jumbo v1, "ShotModeBurstshotAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_3
    return-object v15

    :cond_1
    const-string/jumbo v1, " where group_id !=0 and (file_status = 0 or file_status = 4) "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, " where group_id !=0 and is_hide != 1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, " where group_id !=0 "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    :try_start_2
    const-string/jumbo v1, " and sef_file_type = 2097 "

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v1, " and sef_file_type = 2097 "
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_6
    :goto_4
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x13

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_7

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v8, 0x1

    move-object v6, v11

    invoke-static/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/UnionAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    :goto_6
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v12

    :goto_7
    :try_start_4
    const-string/jumbo v1, "ShotModeBurstshotAlbum"

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v6, 0x1

    invoke-static {v4, v5, v11, v1, v6}, Lcom/sec/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v14

    goto :goto_6

    :cond_9
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_3

    :catch_1
    move-exception v12

    move-object v5, v10

    :goto_8
    :try_start_6
    const-string/jumbo v1, "ShotModeBurstshotAlbum"

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    move-object v5, v10

    :goto_9
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v12

    goto :goto_8

    :catch_3
    move-exception v12

    move-object v5, v10

    goto :goto_7
.end method

.method public getMediaItemCount()I
    .locals 8

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "ShotModeBurstshotAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "ShotModeBurstshotAlbum"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a006a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0a00ba

    goto :goto_0
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mDataVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mCachedCount:I

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeBurstshotAlbum;->mDataVersion:J

    return-wide v0
.end method
