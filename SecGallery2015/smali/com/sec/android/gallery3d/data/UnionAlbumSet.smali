.class public Lcom/sec/android/gallery3d/data/UnionAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "UnionAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/IAlbumSetControlStructure;


# static fields
.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "UPPER(bucket_display_name)"

.field static final CHECK_HIDE_FILES:Ljava/lang/String; = " not in(select bucket_id from files where is_hide=1)"

.field private static final CMH_MEDIATYPE_IMAGE:Ljava/lang/String; = "(media_type=1 AND  (file_status = 0 or file_status = 4) "

.field private static final CMH_MEDIATYPE_IMAGES_AND_VIDEOS:Ljava/lang/String; = "((media_type=1 OR media_type=3) AND  (file_status = 0 or file_status = 4) "

.field private static final CMH_MEDIATYPE_VIDEO:Ljava/lang/String; = "(media_type=3 AND  (file_status = 0 or file_status = 4) "

.field private static final FEATURE_IS_RETAIL_MODEL:Z

.field private static final FEATURE_USE_CMH:Z

.field private static final FEATURE_USE_SECRET_BOX:Z

.field private static final GROUP_BY_CLAUSE:Ljava/lang/String; = " GROUP BY bucket_id"

.field private static final IMAGE_PROJECTION:Ljava/lang/String;

.field static final INVALID_COUNT:I = -0x1

.field static final MEDIATYPE_IMAGE:Ljava/lang/String; = "media_type=1"

.field static final MEDIATYPE_IMAGES_AND_VIDEOS:Ljava/lang/String; = "(media_type=1 OR media_type=3)"

.field static final MEDIATYPE_VIDEO:Ljava/lang/String; = "media_type=3"

.field public static final PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "UnionAlbumSet"

.field private static sbFakeAlbumLoading:Z

.field private static sbFakeLoading:Z

.field public static sbNeedFakeLoadingForSmartClustering:Z

.field public static sbNeedFullAlbumLoading:Z

.field public static sbNeedFullLoading:Z


# instance fields
.field private final FAKE_LOADING_COUNT:I

.field private mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

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

.field final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field mCachedCount:I

.field mIsHidden:Z

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreAlbumMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field final mNotifierOrder:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field final mSingleBucketId:I

.field final mType:I

.field private final mWatchUris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_USE_CMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_USE_SECRET_BOX:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsRetailModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "is_cloud"

    aput-object v1, v0, v6

    const-string/jumbo v1, "cloud_server_path"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "latitude"

    aput-object v2, v1, v5

    const-string/jumbo v2, "longitude"

    aput-object v2, v1, v3

    const-string/jumbo v2, "datetaken"

    aput-object v2, v1, v6

    const-string/jumbo v2, "media_type"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "sef_file_sub_type"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "addr"

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

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->IMAGE_PROJECTION:Ljava/lang/String;

    const-string/jumbo v0, "/union/image"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/union/video"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    sput-boolean v5, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbFakeLoading:Z

    sput-boolean v5, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbFakeAlbumLoading:Z

    sput-boolean v4, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFakeLoadingForSmartClustering:Z

    sput-boolean v4, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullLoading:Z

    sput-boolean v4, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullAlbumLoading:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V
    .locals 3

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbums:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mMoreAlbumMap:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    const-string/jumbo v2, "content://force_reload"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "content://force_album_reload"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mWatchUris:[Landroid/net/Uri;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput p3, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mSingleBucketId:I

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_ALL_WATCH_URI:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mNotifierOrder:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getFakeLoadingCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FAKE_LOADING_COUNT:I

    new-instance v0, Lcom/sec/android/gallery3d/data/AlbumSetControl;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/AlbumSetControl;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->initializeAlbumListData()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    const-string/jumbo v0, "hidden"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mIsHidden:Z

    return-void
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    sub-int v1, p2, p1

    if-lez v1, :cond_0

    aget-object v0, p0, p2

    add-int/lit8 v1, p1, 0x1

    sub-int v2, p2, p1

    invoke-static {p0, p1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, p0, p1

    :cond_0
    return-void
.end method

.method private static findBucket([Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;I)I
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    iget v2, v2, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/sec/android/gallery3d/util/BucketNames;->getBucketName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayAlbumIds()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "album_display_info_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "bucketid_order"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, ";"

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    :goto_0
    array-length v1, v11

    if-ge v8, v1, :cond_0

    aget-object v1, v11, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v9

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v1, "UnionAlbumSet"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private getFakeLoadingDisplayAlbumIds()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v12, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "fake_album_display_info_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "bucketid_order"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    const/4 v2, 0x0

    if-eqz v7, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, ";"

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v3, v11

    move v1, v13

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v11, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    if-eqz v12, :cond_2

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-object v9

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v8

    :goto_2
    const-string/jumbo v1, "UnionAlbumSet"

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_3
    if-eqz v7, :cond_3

    if-eqz v2, :cond_4

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_4
    :try_start_7
    throw v1

    :catch_4
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v12

    goto :goto_3
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

.method private getOrderBy(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "datetaken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string/jumbo v0, " DESC"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, " ASC"

    goto :goto_0
.end method

.method private getmodifiedTimeofLatestItem()J
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "latest_update_item"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isCameraPath(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/data/BucketHelper;->CAMERA_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/BucketHelper;->CAMERA_EXTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBucketEntries(Landroid/database/Cursor;)[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;
    .locals 6

    const/4 v5, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    return-object v3
.end method

.method private loadSubMediaSets()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->makeWhereClause()Ljava/lang/String;

    move-result-object v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->CMH_BASE_URI:Landroid/net/Uri;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbFakeAlbumLoading:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbFakeAlbumLoading:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "show_more_albums"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getFakeLoadingDisplayAlbumIds()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, " (bucket_id IN ("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_0

    const-string/jumbo v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, ")) "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullAlbumLoading:Z

    :cond_2
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v3, "loadSubMediaSets: start"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " GROUP BY bucket_id"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "UPPER(bucket_display_name)"

    const-string/jumbo v7, "UnionAlbumSet"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v3, 0x0

    if-nez v10, :cond_5

    :try_start_0
    const-string/jumbo v1, "UnionAlbumSet"

    const-string/jumbo v4, "cannot open local database: "

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_3

    if-eqz v3, :cond_4

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    :try_start_2
    const-string/jumbo v1, "UnionAlbumSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadSubMediaSets: album count = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->updateLatestAlbumInfo()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->loadBucketEntries(Landroid/database/Cursor;)[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    if-eqz v10, :cond_6

    if-eqz v3, :cond_7

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_2
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v7, v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseReOrderAlbums:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getDisplayAlbumIds()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_a

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->DEFAULT:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->addAlbumSet(I[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;[ILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    :goto_4
    if-eqz v10, :cond_8

    if-eqz v3, :cond_9

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_5
    throw v1

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->getAlbumSetDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->isFeature()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->getFeatureValue()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->isFeature()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->getFeatureValue()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_d
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->getBucketId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->getBucketId()I

    move-result v4

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->getAlbumType()Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->addAlbumSet(I[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;[ILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    aget v12, v7, v1

    :goto_7
    array-length v1, v5

    if-ge v12, v1, :cond_f

    aget-object v1, v5, v12

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6, v3}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->addAlbumForType(Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_f
    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_8
    if-ge v12, v14, :cond_3

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->getAlbumSetDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->isFeature()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->getFeatureValue()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->isFeature()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->getFeatureValue()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_13
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->getBucketId()I

    move-result v4

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumSetDataStructure;->getAlbumType()Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->addAlbumSet(I[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;[ILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    aget v12, v7, v1

    :goto_a
    array-length v1, v5

    if-ge v12, v1, :cond_15

    aget-object v1, v5, v12

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6, v3}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->addAlbumForType(Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_15
    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_b
    if-ge v12, v14, :cond_16

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_16
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v3, "loadSubMediaSets: end"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    goto/16 :goto_4
.end method

.method private updateLatestAlbumInfo()V
    .locals 20

    const/4 v12, 0x0

    const/4 v9, 0x0

    const-wide/16 v14, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getmodifiedTimeofLatestItem()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v18, 0x3e8

    div-long v10, v4, v18

    const-string/jumbo v7, "date_modified DESC, _id DESC"

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->CMH_BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "limit"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "bucket_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "date_modified"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "((media_type=1 OR media_type=3) AND  (file_status = 0 or file_status = 4)  ) and ( date_modified <= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v8, "UnionAlbumSet"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    :cond_0
    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    cmp-long v2, v14, v16

    if-gez v2, :cond_1

    cmp-long v2, v10, v16

    if-gez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "latest_update_item"

    invoke-static {v2, v4, v14, v15}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "latest_update_album"

    invoke-static {v2, v4, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void

    :catch_0
    move-exception v13

    :try_start_1
    const-string/jumbo v2, "UnionAlbumSet"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method


# virtual methods
.method public addAlbumForType(Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;",
            "Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet$1;->$SwitchMap$com$sec$android$gallery3d$data$AlbumSetControl$AlbumType:[I

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    new-array v1, v3, [Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getDcimAlbum(Lcom/sec/android/gallery3d/data/DataManager;[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Lcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget v4, p1, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v5, p1, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v6, p1, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addAlbumSet(I[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;[ILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;[I",
            "Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p2, p1}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->findBucket([Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    aget v1, p4, v4

    aget v2, p4, v4

    add-int/lit8 v3, v2, 0x1

    aput v3, p4, v4

    invoke-static {p2, v2, v0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->DEFAULT:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    if-eq p5, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p0, v2, p3, p5}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->addAlbumForType(Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    :cond_0
    return-void
.end method

.method fakeChange()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->fakeChange()V

    return-void
.end method

.method public getAlbumSetType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    return v0
.end method

.method getDcimAlbum(Lcom/sec/android/gallery3d/data/DataManager;[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Lcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;
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

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

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

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_b

    add-int/lit8 v13, v14, 0x1

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    iget v6, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v7, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v8, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v16, v14

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    add-int/lit8 v14, v13, 0x1

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    iget v6, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v7, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v8, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v16, v13

    move v13, v14

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move v14, v13

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

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

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v2, :cond_5

    move-object/from16 v15, v18

    check-cast v15, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    move-object v2, v15

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->changeSources([Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    :cond_6
    if-eqz v18, :cond_7

    move-object/from16 v15, v18

    check-cast v15, Lcom/sec/android/gallery3d/data/UnionAlbum;

    goto :goto_3

    :cond_7
    new-instance v15, Lcom/sec/android/gallery3d/data/UnionAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, v19

    invoke-direct {v15, v0, v3, v11, v2}, Lcom/sec/android/gallery3d/data/UnionAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    new-instance v15, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v9, v2, v1}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_3

    :cond_a
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setCameraAlbum(Z)V

    goto :goto_4

    :cond_b
    move v13, v14

    goto/16 :goto_2
.end method

.method public getFakeLoadingCount()I
    .locals 5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "timeViewColCnt"

    sget v4, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->COL_CNT_LEVEL_DEFAULT:I

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_USE_CMH:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    :goto_0
    aget v2, v0, v1

    return v2

    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x82
        0x48
        0x20
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x82
        0x28
        0x18
    .end array-data
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UnionAlbumSet"

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UnionAlbumSet"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

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

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->CMH_BASE_URI:Landroid/net/Uri;

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

    const-string/jumbo v6, "UnionAlbumSet"

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
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

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

    const-string/jumbo v0, "UnionAlbumSet"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getTotalMediaItemCount()I
    .locals 10

    const/4 v9, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v7, "(media_type=1 OR media_type=3) and  (file_status = 0 or file_status = 4) "

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id FROM files WHERE group_id != 0 AND (media_type=1 OR media_type=3) and  (file_status = 0 or file_status = 4)  GROUP BY group_id UNION SELECT _id "

    aput-object v1, v2, v0

    const-string/jumbo v3, "(media_type=1 OR media_type=3) and  (file_status = 0 or file_status = 4)  AND group_id = 0"

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->CMH_BASE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionAlbumSet"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mCachedCount:I

    return v0

    :cond_1
    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getTotalMediaItems(IIZ)Landroid/database/Cursor;
    .locals 12

    const/4 v11, 0x1

    const/4 v6, 0x0

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->CMH_BASE_URI:Landroid/net/Uri;

    if-eqz p3, :cond_0

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbFakeLoading:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FAKE_LOADING_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-boolean v6, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbFakeLoading:Z

    sput-boolean v11, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullLoading:Z

    :cond_0
    const/4 v8, 0x0

    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getMediaType(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " and "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " (file_status = 0 or file_status = 4) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " from files where group_id != 0 and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->IMAGE_PROJECTION:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v7, v3, v4}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and group_id = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getOrderBy(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "UnionAlbumSet"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    return-object v8

    :catch_0
    move-exception v9

    const-string/jumbo v0, "UnionAlbumSet"

    const-string/jumbo v3, "There is problem in getTotalMediaItems"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTotalMediaItems(I)[Landroid/database/Cursor;
    .locals 15

    const/4 v0, 0x2

    new-array v12, v0, [Landroid/database/Cursor;

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "UnionAlbumSet : getTotalMediaItems() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    :try_start_0
    sget-object v14, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION_STRING:Ljava/lang/String;

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mSingleBucketId:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mSingleBucketId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-virtual {p0, v14, v0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getCMHImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "group_id = 0 and bucket_id = ? and  (file_status = 0 or file_status = 4) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v3, "("

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->CMH_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionAlbumSet"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v12, v7

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mSingleBucketId:I

    if-eqz v0, :cond_3

    const-string/jumbo v8, "bucket_id = ? and  (file_status = 0 or file_status = 4) "

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mSingleBucketId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->CMH_VIDEO_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/gallery3d/data/UnionVideo;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "UnionAlbumSet"

    move-object v9, v4

    invoke-static/range {v5 .. v11}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v12, v0

    :cond_1
    :goto_2
    return-object v12

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v14, v0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getCMHImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string/jumbo v8, " (file_status = 0 or file_status = 4) "
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v13

    const-string/jumbo v0, "UnionAlbumSet"

    const-string/jumbo v1, "getTotalMediaItems err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 4

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mSingleBucketId:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v3, v1, 0x1

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;
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

    instance-of v3, v14, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-eqz v3, :cond_1

    move-object v3, v14

    check-cast v3, Lcom/sec/android/gallery3d/data/UnionAlbum;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v12}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/UnionAlbum;->setName(Ljava/lang/String;)V

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
    instance-of v3, v14, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v3, :cond_0

    move-object v3, v14

    check-cast v3, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v12}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->setName(Ljava/lang/String;)V

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
    new-instance v3, Lcom/sec/android/gallery3d/data/UnionAlbum;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/data/UnionAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    new-instance v3, Lcom/sec/android/gallery3d/data/UnionAlbum;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/data/UnionAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const/4 v7, 0x2

    sget-object v8, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v15

    const/4 v7, 0x4

    sget-object v8, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getAlbumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getUnionAlbum(Lcom/sec/android/gallery3d/data/DataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v16

    sget-object v13, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v3, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    const/4 v7, 0x1

    aput-object v16, v6, v7

    invoke-direct {v3, v4, v13, v5, v6}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V

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

.method public initializeAlbumListData()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_INFINITY_DISPLAY_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_GALAXY_S8_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_SELFIES_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FRIENDS_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_TRIP_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_OUTDOORS_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MUSIC_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FOOD_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_FAMILY_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_PARTY_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_MARKET_TOUR_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VISIT_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_LIKES_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_IS_RETAIL_MODEL:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->RETAIL_VIDEO_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_USE_SECRET_BOX:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->DCIM:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->DCIM:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->DCIM:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_USE_CMH:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->FEATURE_USE_CMH:Z

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

    sget-object v3, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->COVER_CAMERA_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->SDCARD_COVER_CAMERA_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->GEAR_360_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SCREENSHOT_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->ANIMATED_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COLLAGE_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbumSetControl:Lcom/sec/android/gallery3d/data/AlbumSetControl;

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->VIDEO_EDITOR_BUCKET_ID:I

    sget-object v2, Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;->BASIC:Lcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/sec/android/gallery3d/data/AlbumSetControl;->addDataStructure(ZZILcom/sec/android/gallery3d/data/AlbumSetControl$AlbumType;)V

    return-void
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method makeWhereClause()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mSingleBucketId:I

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bucket_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mSingleBucketId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mIsHidden:Z

    if-eqz v1, :cond_5

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
    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "((media_type=1 OR media_type=3) AND  (file_status = 0 or file_status = 4) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(media_type=1 AND  (file_status = 0 or file_status = 4) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(media_type=3 AND  (file_status = 0 or file_status = 4) )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
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

.method public declared-synchronized reload()J
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mNotifierOrder:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mNotifierOrder:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->clearDirty()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mIsLoading:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mMoreAlbumMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mIsLoading:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mCachedCount:I

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mDataVersion:J

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setDCIMName(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mDataVersion:J

    :cond_3
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->mDataVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v2
.end method
