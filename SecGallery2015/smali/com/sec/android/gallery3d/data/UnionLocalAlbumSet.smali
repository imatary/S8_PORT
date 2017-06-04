.class public Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;
.super Lcom/sec/android/gallery3d/data/UnionAlbumSet;
.source "UnionLocalAlbumSet.java"


# static fields
.field private static final CMH_LOCAL_MEDIATYPE_IMAGE:Ljava/lang/String; = "(media_type=1 AND  (is_cloud = 1 or is_cloud = 3) "

.field private static final CMH_LOCAL_MEDIATYPE_IMAGES_AND_VIDEOS:Ljava/lang/String; = "((media_type=1 OR media_type=3) AND  (is_cloud = 1 or is_cloud = 3) "

.field private static final CMH_LOCAL_MEDIATYPE_VIDEO:Ljava/lang/String; = "(media_type=3 AND  (is_cloud = 1 or is_cloud = 3) "

.field private static final PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

.field private static final PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "UnionLocalAlbumSet"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/union/localimage"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/union/localvideo"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_ALL_WATCH_URI:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method private getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/sec/android/gallery3d/util/BucketNames;->getBucketName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getDcimAlbum(Lcom/sec/android/gallery3d/data/DataManager;[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Lcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 20

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    iget v11, v2, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    mul-int/lit8 v17, p4, 0x2

    :cond_0
    :goto_0
    sget-object v9, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v16, v0

    const/4 v12, 0x0

    move v14, v13

    :goto_1
    move/from16 v0, p4

    if-ge v12, v0, :cond_4

    aget-object v10, p2, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_b

    add-int/lit8 v13, v14, 0x1

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    iget v6, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v7, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v8, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v16, v14

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    add-int/lit8 v14, v13, 0x1

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    iget v6, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v7, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v8, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v16, v13

    move v13, v14

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move v14, v13

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_3
    move/from16 v17, p4

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    if-eqz v2, :cond_5

    move-object/from16 v15, v18

    check-cast v15, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    move-object v2, v15

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;->changeSources([Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setCameraAlbum(Z)V

    :goto_4
    return-object v15

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    :cond_6
    if-eqz v18, :cond_7

    move-object/from16 v15, v18

    check-cast v15, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    goto :goto_3

    :cond_7
    new-instance v15, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v19

    invoke-direct {v15, v0, v3, v11, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    new-instance v15, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v9, v2, v1}, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_3

    :cond_a
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setCameraAlbum(Z)V

    goto :goto_4

    :cond_b
    move v13, v14

    goto/16 :goto_2
.end method

.method getTotalFavoriteMediaItems()Landroid/database/Cursor;
    .locals 10

    const/4 v1, 0x2

    const/4 v7, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "is_favorite=1 and is_hide != 1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, " and "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "media_type=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    :cond_0
    :goto_1
    const-string/jumbo v0, " and "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (file_status = 0 or file_status = 4) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v0, " and "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->CMH_BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "media_type"

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken DESC"

    const-string/jumbo v6, "UnionLocalAlbumSet"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_2
    return-object v7

    :cond_1
    const-string/jumbo v0, "is_favorite=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, " and "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "media_type=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_1

    :catch_0
    move-exception v8

    const-string/jumbo v0, "UnionLocalAlbumSet"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getTotalMediaItemCount()I
    .locals 10

    const/4 v9, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v7, "(media_type=1 OR media_type=3) and  (is_cloud = 1 or is_cloud = 3) "

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id FROM files WHERE group_id != 0 and (media_type=1 OR media_type=3) and  (is_cloud = 1 or is_cloud = 3)  GROUP by group_id UNION SELECT _id "

    aput-object v1, v2, v0

    const-string/jumbo v3, "(media_type=1 OR media_type=3) and  (is_cloud = 1 or is_cloud = 3)  AND group_id = 0"

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->CMH_BASE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionLocalAlbumSet"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mCachedCount:I

    return v0

    :cond_1
    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getTotalMediaItems(I)[Landroid/database/Cursor;
    .locals 17

    const/4 v1, 0x2

    new-array v13, v1, [Landroid/database/Cursor;

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "UnionLocalAlbumSet : getTotalMediaItems() - Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    :try_start_0
    sget-object v15, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mSingleBucketId:I

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mSingleBucketId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getCMHLocalImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "group_id = 0 and bucket_id = ? and  (is_cloud = 1 or is_cloud = 3) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string/jumbo v4, "("

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->CMH_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string/jumbo v7, "UnionLocalAlbumSet"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v13, v8

    :cond_0
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mSingleBucketId:I

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bucket_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mSingleBucketId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->CMH_VIDEO_URI:Landroid/net/Uri;

    sget-object v8, Lcom/sec/android/gallery3d/data/UnionVideo;->PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const-string/jumbo v12, "UnionLocalAlbumSet"

    move-object v10, v5

    invoke-static/range {v6 .. v12}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v13, v1

    :cond_1
    :goto_2
    return-object v13

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getCMHLocalImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v16, " (is_cloud = 1 or is_cloud = 3) "
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v14

    const-string/jumbo v1, "UnionLocalAlbumSet"

    const-string/jumbo v2, "getTotalMediaItems err"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "null"

    aget-object v2, v1, v4

    const-string/jumbo v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "all"

    :goto_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    aget-object v2, v1, v4

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "image"

    goto :goto_0

    :cond_1
    aget-object v2, v1, v4

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "video"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 17

    invoke-virtual/range {p3 .. p4}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object v3, v14

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v12

    instance-of v3, v14, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    if-eqz v3, :cond_1

    move-object v3, v14

    check-cast v3, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v12}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v3, v14

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v3, v14

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v3, v14

    :goto_1
    return-object v3

    :cond_1
    instance-of v3, v14, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    if-eqz v3, :cond_0

    move-object v3, v14

    check-cast v3, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v12}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    new-instance v3, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    new-instance v3, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const/4 v7, 0x2

    sget-object v8, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v15

    const/4 v7, 0x4

    sget-object v8, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v16

    sget-object v13, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v3, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    const/4 v7, 0x1

    aput-object v16, v6, v7

    invoke-direct {v3, v4, v13, v5, v6}, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected makeWhereClause()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "((media_type=1 OR media_type=3) AND  (is_cloud = 1 or is_cloud = 3) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mIsHidden:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(is_hide=1) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(media_type=1 AND  (is_cloud = 1 or is_cloud = 3) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(media_type=3 AND  (is_cloud = 1 or is_cloud = 3) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(bucket_id not in(select bucket_id from files where is_hide=1)) AND (is_hide=-1) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
