.class public Lcom/sec/android/gallery3d/data/UnionMergeAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "UnionMergeAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;
    }
.end annotation


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final FEATURE_USE_REAL_RATIO_FOR_PHOTO_SPLIT:Z

.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "UnionMergeAlbum"

.field private static mMaxLoadingEnabled:Z

.field private static mUseMaxPageSize:Z


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBucketId:I

.field private mCachedCount:I

.field private mCameraAlbum:Z

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mEventAlbumTimeInfo:Ljava/lang/String;

.field private mFetcher:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

.field private mFetcherForBurstshot:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

.field private mIncludeCloudOnlyContents:Z

.field private final mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mIsIncludeCloudOnlyContentsValueSet:Z

.field private mPathOnFileSystem:Ljava/lang/String;

.field private final mSmallItemList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

.field private mUseOriginalSetCount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRealRatioForPhotoSplit:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->FEATURE_USE_REAL_RATIO_FOR_PHOTO_SPLIT:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    sput-boolean v2, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mMaxLoadingEnabled:Z

    sput-boolean v2, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mUseMaxPageSize:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Lcom/sec/android/gallery3d/app/GalleryApp;",
            "[",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    array-length v0, p4

    if-nez v0, :cond_1

    const/4 v5, -0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;I)V

    aget-object v0, p4, v6

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionRecycleBinAlbum;

    if-nez v0, :cond_0

    aget-object v0, p4, v6

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionScloudViewAlbum;

    if-nez v0, :cond_0

    aget-object v0, p4, v6

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbum;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mUseOriginalSetCount:Z

    array-length v0, p4

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mPathOnFileSystem:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mPathOnFileSystem:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, "UnionMergeAlbum"

    const-string/jumbo v1, "sources are null. ignore init"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_1
    aget-object v0, p4, v6

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v5

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    aget-object v0, p4, v6

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mPathOnFileSystem:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/util/BucketNames;->getBucketName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->setName(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Lcom/sec/android/gallery3d/app/GalleryApp;",
            "[",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "I)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCameraAlbum:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIncludeCloudOnlyContents:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIsIncludeCloudOnlyContentsValueSet:Z

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mPathOnFileSystem:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSmallItemList:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCachedCount:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mUseOriginalSetCount:Z

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mComparator:Ljava/util/Comparator;

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    iput p5, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mBucketId:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->reload()J

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mUseMaxPageSize:Z

    return v0
.end method

.method private getMediaItem(IILjava/util/ArrayList;ZI)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    add-int/lit8 v19, p1, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v7

    monitor-exit v18

    if-nez v7, :cond_1

    const/4 v13, 0x0

    :cond_0
    :goto_0
    return-object v13

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    :cond_1
    invoke-interface {v7}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v17, "UnionMergeAlbum"

    const-string/jumbo v18, "Gallery: The head(SortedMap) is empty!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    const/16 v16, 0x0

    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    invoke-virtual/range {v17 .. v17}, [I->clone()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [I

    move-object/from16 v16, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v15, v0, [Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v16, :cond_3

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v17, "UnionMergeAlbum"

    const-string/jumbo v18, "Gallery: subPos is null!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v17, "UnionMergeAlbum"

    invoke-virtual {v5}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v5

    const-string/jumbo v17, "UnionMergeAlbum"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_6

    if-nez p3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v6, v17, v8

    :goto_3
    if-eqz v6, :cond_4

    aget v17, v16, v8

    move/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;->getItem(ILjava/util/ArrayList;ZI)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v17

    aput-object v17, v15, v8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcherForBurstshot:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v6, v17, v8

    goto :goto_3

    :cond_6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/GalleryApp;->getSortByType()I

    move-result v17

    if-nez v17, :cond_a

    const/4 v9, 0x1

    :cond_7
    :goto_4
    move v8, v12

    :goto_5
    add-int v17, p1, p2

    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    const/4 v11, -0x1

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v14, :cond_c

    aget-object v17, v15, v10

    if-eqz v17, :cond_9

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_8

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    aget-object v18, v15, v10

    aget-object v19, v15, v11

    invoke-interface/range {v17 .. v19}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v17

    if-gez v17, :cond_9

    :cond_8
    :goto_7
    move v11, v10

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mComparator:Ljava/util/Comparator;

    move-object/from16 v17, v0

    aget-object v18, v15, v10

    aget-object v19, v15, v11

    invoke-interface/range {v17 .. v19}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v17

    if-lez v17, :cond_9

    goto :goto_7

    :cond_c
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    aget v17, v16, v11

    add-int/lit8 v17, v17, 0x1

    aput v17, v16, v11

    move/from16 v0, p1

    if-lt v8, v0, :cond_d

    aget-object v17, v15, v11

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-nez p3, :cond_10

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    aget v18, v16, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;->getItem(ILjava/util/ArrayList;ZI)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v17

    aput-object v17, v15, v11
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v18, v0

    monitor-enter v18

    add-int/lit8 v17, v8, 0x1

    :try_start_4
    rem-int/lit8 v17, v17, 0x40

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    move-object/from16 v17, v0

    add-int/lit8 v19, v8, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, [I->clone()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_10
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcherForBurstshot:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcherForBurstshot:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    aget v18, v16, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;->getItem(ILjava/util/ArrayList;ZI)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v17

    aput-object v17, v15, v11
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    :catch_2
    move-exception v5

    const-string/jumbo v17, "UnionMergeAlbum"

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v17

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v17
.end method

.method private invalidateCache()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v3

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;->invalidate()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcherForBurstshot:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v6, v6

    new-array v6, v6, [I

    invoke-virtual {v3, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    :goto_1
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "UnionMergeAlbum"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSmallItemListDirty()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSmallItemList:[Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateData()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcherForBurstshot:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v1, v2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    new-instance v3, Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mFetcherForBurstshot:[Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    new-instance v3, Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum$FetchCache;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v5, v5

    new-array v5, v5, [I

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public changeSources([Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public delete(ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/data/MediaSet;->delete(ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public enableMaxLoading(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mMaxLoadingEnabled:Z

    :goto_0
    return-void

    :cond_0
    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mMaxLoadingEnabled:Z

    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mUseMaxPageSize:Z

    goto :goto_0
.end method

.method public getAllItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->getMediaItemCount()I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->getMediaItem(IILjava/util/ArrayList;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mBucketId:I

    return v0
.end method

.method public getBurstShotItems(J)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBurstShotItems(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCloudOnlyItemCount()I
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "bucket_id = ? and is_cloud = 2 and (file_status = 0 or file_status = 4)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mBucketId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionMergeAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "UnionMergeAlbum"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "bucketId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 6

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCoverVersion:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mDataVersion:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->getMediaItemFirst()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mDataVersion:J

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCoverVersion:J

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v1
.end method

.method public getEventAlbumTimeInfo()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    invoke-virtual {v1, v3, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTimeString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    return-object v2
.end method

.method public getImageCount()I
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getIsImage()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->getMediaItem(IILjava/util/ArrayList;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaItemFirst()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v6

    :goto_0
    if-ge v0, v3, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getSortByType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemFirst(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mComparator:Ljava/util/Comparator;

    invoke-interface {v6, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_0

    :cond_2
    move-object v1, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v5
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCameraAlbum:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDCIMName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v1, v1, v3

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/EventAlbum;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v1, v1

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getOrderClause()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getOrderClause()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathOnFileSystem()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mPathOnFileSystem:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mPathOnFileSystem:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mPathOnFileSystem:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mPathOnFileSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallItemList(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSmallItemList:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSmallItemList:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    instance-of v5, v0, Lcom/sec/android/gallery3d/data/EventAlbum;

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->setSmallItemList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSmallItemList:[Ljava/util/ArrayList;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    :cond_0
    sget-boolean v5, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->FEATURE_USE_REAL_RATIO_FOR_PHOTO_SPLIT:Z

    if-eqz v5, :cond_1

    instance-of v5, v0, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->setSmallItemList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSmallItemList:[Ljava/util/ArrayList;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSmallItemList:[Ljava/util/ArrayList;

    aget-object v2, v2, p1

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSortByOrderType()Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSortByOrderType()Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    move-result-object v0

    return-object v0
.end method

.method public getSortByType()Lcom/sec/samsung/gallery/core/MediaType$SortByType;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSortByType()Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 6

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v1, v4

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v4

    and-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    return-object v0
.end method

.method public getTotalMediaItemCount()I
    .locals 12

    const/4 v1, -0x1

    const/4 v11, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mUseOriginalSetCount:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCachedCount:I

    if-ne v0, v1, :cond_1

    const/4 v9, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mBucketId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (file_status = 0 or file_status = 4) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id FROM files WHERE group_id != 0 AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " GROUP BY group_id UNION SELECT _id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND group_id = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->CMH_BASE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionMergeAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v11

    :cond_0
    iput v11, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCachedCount:I

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCachedCount:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v1

    move v0, v11

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v10, v1, v0

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v8, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput v8, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCachedCount:I

    :cond_4
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCachedCount:I

    goto :goto_0
.end method

.method public getVideoCount()I
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getIsImage()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hasCachedMediaItemCount()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocation()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->hasLocation()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isCameraAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCameraAlbum:Z

    return v0
.end method

.method public isCameraRoll()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isIncludeCloudOnlyContents()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIsIncludeCloudOnlyContentsValueSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->getCloudOnlyItemCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIncludeCloudOnlyContents:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIsIncludeCloudOnlyContentsValueSet:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIncludeCloudOnlyContents:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLogicalMergeAlbum()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "recycle"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    instance-of v7, v1, Lcom/sec/android/gallery3d/data/UnionScloudViewAlbum;

    if-nez v7, :cond_0

    instance-of v7, v1, Lcom/sec/android/gallery3d/data/UnionFavoriteAlbum;

    if-nez v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public isMoreAlbum()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->isMoreAlbum()Z

    move-result v0

    return v0
.end method

.method public isSuggestionEvent()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->isSuggestionEvent()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public notifyDirty()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->notifyDirty()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v3

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mDataVersion:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mMaxLoadingEnabled:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mUseMaxPageSize:Z

    :cond_2
    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mDataVersion:J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->updateData()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->setSmallItemListDirty()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->invalidateCache()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCachedCount:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mIsIncludeCloudOnlyContentsValueSet:Z

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mDataVersion:J

    return-wide v4

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public rotate(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->rotate(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCameraAlbum(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mCameraAlbum:Z

    return-void
.end method

.method public setMoreAlbum(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->setMoreAlbum(Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v0, v0, v1

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionAlbum;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/UnionAlbum;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSortByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSortByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSuggestionEvent(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->setSuggestionEvent(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
