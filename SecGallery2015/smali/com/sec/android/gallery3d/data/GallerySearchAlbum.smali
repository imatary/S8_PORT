.class public Lcom/sec/android/gallery3d/data/GallerySearchAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "GallerySearchAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;
    }
.end annotation


# static fields
.field private static final CMH_IMAGE_PROJECTION_FACE:[Ljava/lang/String;

.field private static final CMH_IMAGE_PROJECTION_FILE:[Ljava/lang/String;

.field private static final CMH_IMAGE_PROJECTION_TAG_VIEW:[Ljava/lang/String;

.field private static final DATE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final DCM_PROJECTION:[Ljava/lang/String;

.field private static final FEATURE_USE_CMH:Z

.field private static final FEATURE_USE_DCM:Z

.field private static final FEATURE_USE_VISUAL_SEARCH:Z

.field private static final ID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_TIME_PAST_MONTH:I = 0x2

.field private static final INDEX_TIME_PAST_SIX_MONTH:I = 0x3

.field private static final INDEX_TIME_PAST_WEEK:I = 0x1

.field private static final INDEX_TIME_PAST_YEAR:I = 0x4

.field private static final INDEX_TIME_TODAY:I = 0x0

.field private static final RAW_QUERY:Ljava/lang/String; = "rawquery"

.field private static final TAG:Ljava/lang/String; = "GallerySearchAlbum"

.field private static final VIDEO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBasePathMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mContext:Landroid/content/Context;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mExistTagListMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/core/SearchFilterType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImageCount:I

.field private mIsRequestKeywordFromSearchPress:Z

.field private mKeyword:Ljava/lang/String;

.field private mKeywordBlurred:Ljava/lang/String;

.field private mKeywordFavorite:Ljava/lang/String;

.field private final mKeywordShotMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeywordSmile:Ljava/lang/String;

.field private final mKeywordTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocale:Ljava/util/Locale;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

.field private mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

.field private mVideoCount:I

.field private mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_CMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_DCM:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_VISUAL_SEARCH:Z

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->VIDEO_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "date"

    aput-object v1, v0, v2

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->DCM_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v4

    const-string/jumbo v1, "tag_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "is_cloud"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->CMH_IMAGE_PROJECTION_TAG_VIEW:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v4

    const-string/jumbo v1, "group_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->CMH_IMAGE_PROJECTION_FILE:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "image_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "uri"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v4

    const-string/jumbo v1, "group_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "pos_ratio"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->CMH_IMAGE_PROJECTION_FACE:[Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$1;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$1;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->ID_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$2;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$2;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->DATE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mBasePathMap:Landroid/util/SparseArray;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordTime:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    iput v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mImageCount:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVideoCount:I

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeyword:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->getApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->makeBaseItemList()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/data/CategoryAlbum;->UPDATE_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p3}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-boolean v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_CMH:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->initSearchKeyword()V

    return-void

    :cond_1
    sget-boolean v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_DCM:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/android/gallery3d/provider/DcmProviderSearchQueryBuilder;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/provider/DcmProviderSearchQueryBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/gallery3d/provider/MediaProviderSearchQueryBuilder;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/provider/MediaProviderSearchQueryBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    goto :goto_0
.end method

.method private addAllItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p1
.end method

.method private checkSmileContents(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordSmile:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBlurredItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v2, " image_quality = 0 "

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getClustering(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    const-string/jumbo v6, "GallerySearchAlbum"

    const-string/jumbo v7, "getClustering()"

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-boolean v6, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_CMH:Z

    if-eqz v6, :cond_2

    sget v6, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_IMAGE:I

    invoke-direct {p0, p1, v6}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getContentItemsWithCMH(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget-boolean v6, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_CMH:Z

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    sget-object v6, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v6, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->DATE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string/jumbo v6, "GallerySearchAlbum"

    const-string/jumbo v7, "GallerySearchAlbum:getClustering() time : %d ms, keyword : %s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getPath(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    sget-boolean v6, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_VISUAL_SEARCH:Z

    if-eqz v6, :cond_7

    iput v12, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mImageCount:I

    iput v12, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVideoCount:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "image"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mImageCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mImageCount:I

    goto :goto_2

    :cond_2
    sget-boolean v6, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_DCM:Z

    if-eqz v6, :cond_3

    sget v6, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_IMAGE:I

    invoke-direct {p0, p1, v6}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getContentItemsWithDCM(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_0

    :cond_3
    sget v6, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_IMAGE:I

    invoke-direct {p0, p1, v6}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getContentItems(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    sget-boolean v6, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->FEATURE_USE_DCM:Z

    if-eqz v6, :cond_5

    sget v6, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_VIDEO:I

    invoke-direct {p0, p1, v6}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getContentItemsWithDCM(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    sget v6, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_VIDEO:I

    invoke-direct {p0, p1, v6}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getContentItems(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    iget v7, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVideoCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVideoCount:I

    goto :goto_2

    :cond_7
    return-object v2
.end method

.method private getClusteringPaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->getExistFilterMask()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeyword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getClustering(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private getContentItems(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    sget v2, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_IMAGE:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    sget-object v17, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v16, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->IMAGE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v13, "_id"

    const-string/jumbo v11, "datetaken"

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mExistTagListMap:Ljava/util/LinkedHashMap;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;->getTotalQueryClause(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/gallery3d/data/GallerySearchTagFilter;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v14, 0x0

    :goto_2
    return-object v14

    :cond_1
    sget v2, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_VIDEO:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    sget-object v17, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v16, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->VIDEO_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v13, "_id"

    const-string/jumbo v11, "datetaken"

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v0, v6}, Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;->getTotalQueryClause(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "GallerySearchAlbum"

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-direct {v2, v15, v10}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;-><init>(ILjava/lang/Long;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "GallerySearchAlbum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getContentItems : count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_2

    :catch_0
    move-exception v12

    :try_start_1
    const-string/jumbo v2, "GallerySearchAlbum"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private getContentItemsWithCMH(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getTagName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getSearchKeywordInfo()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;

    move-result-object v7

    :cond_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getContentType()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    sget-object v17, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;->getVisualSearchShotModeTagClause(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getContentType()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "Animated GIF"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getGifItemsForBixby(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getTitle()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->checkSmileContents(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setSmileStatus(Z)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getSmileItemsForBixby()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mergeSearchItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->hasCountryCode(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Z

    move-result v18

    if-eqz v18, :cond_3

    sget-object v17, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->LOCATION_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;->getVisualSearchCountryCodeClause(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mergeSearchItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v17, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->TAGVIEW_TABLE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;->getVisualSearchTagClause(Landroid/content/Context;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->setSmileStatus(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mergeSearchItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v18

    :goto_0
    return-object v18

    :cond_4
    sget v18, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_IMAGE:I

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getUriForCMH()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getProjectionForCMH(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getSqlStrForCMH(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->getExistFilterMask()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    :cond_6
    const/16 v18, 0x0

    goto :goto_0

    :cond_7
    const/16 v18, 0x0

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->isSearchCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    sget-object v18, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    const-string/jumbo v19, "rawquery"

    invoke-virtual/range {v18 .. v19}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v18

    const-string/jumbo v19, "rawquery"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getContentItemsByRaw(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->getExistFilterMask()I

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;->getTotalQueryClause(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1, v10, v14}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getContentItems(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->getExistFilterMask()I

    move-result v18

    if-nez v18, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/4 v8, 0x1

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v8}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mergeItemsWithCMH(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v18

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1, v10, v14}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getContentItems(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    goto/16 :goto_1
.end method

.method private getContentItemsWithDCM(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "GallerySearchAlbum"

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "uri"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "date"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v1, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2, v8}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;-><init>(ILjava/lang/Long;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "GallerySearchAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContentIds : count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v11

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "GallerySearchAlbum"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private getContentItemsWithDCM(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget v4, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_IMAGE:I

    if-ne p2, v4, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    :goto_0
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v4, v5, p1, p2, v6}, Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;->getTotalQueryClause(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    sget v4, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->SEARCH_MEDIA_TYPE_VIDEO:I

    if-ne p2, v4, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_VIDEO_TABLE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v4, v5, v6, p2, v7}, Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;->getTotalQueryClause(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->DCM_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v4, v3, v5, v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getContentItemsWithDCM(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method private getEventItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v9, ""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "title"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " LIKE \'%"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "%\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :cond_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->getFilterList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->getFilterList()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;

    iget-object v9, v5, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    const-string/jumbo v9, " ( "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_2

    iget-object v9, v5, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter$Filter;->mTag:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-lez v0, :cond_1

    const-string/jumbo v9, " OR "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v9, "title"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v9, " ) "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    if-gtz v6, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getEventSearchItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_6
    return-object v2

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v10, " AND media_id  IN ( SELECT media_id FROM \'story_view\' WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getFavoriteItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v2, " is_favorite = 1 "

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getGifItemsForBixby(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, " mime_type like \'%gif%\' GROUP BY media_id"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getItemsFromShotMode(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v3, 0x12

    if-ne p1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    check-cast v3, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;->getBurstShotClause(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "rawquery"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "rawquery"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getContentItemsByRaw(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v2, v3, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method private getItemsFromTimePeriod(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/util/TimeUtil;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/util/TimeUtil;-><init>()V

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :pswitch_0
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/TimeUtil;->today()J

    move-result-wide v0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " datetaken >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOf7DaysAgo()J

    move-result-wide v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOf30DaysAgo()J

    move-result-wide v0

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOfPastMonths(I)J

    move-result-wide v0

    goto :goto_1

    :pswitch_4
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOfPastMonths(I)J

    move-result-wide v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getPath(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-object v6

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mBasePathMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->makeBaseItemList()V

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mBasePathMap:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/Path;

    if-eqz v4, :cond_4

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$200(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    move-object v3, v4

    sget-object v7, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$300(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$200(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    sget-object v7, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$200(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lcom/sec/android/gallery3d/data/LocalSearchImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$200(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_1

    :cond_7
    sget-object v7, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/sec/android/gallery3d/data/UnionSearchVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$200(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_1

    :cond_8
    sget-object v7, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/sec/android/gallery3d/data/LocalSearchVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$200(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_1

    :cond_9
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getProjectionForCMH(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->CMH_IMAGE_PROJECTION_TAG_VIEW:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "Time"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Camera mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Blurry pictures"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Recently Added"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->CMH_IMAGE_PROJECTION_FILE:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "People"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "Related people"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "Smile pictures"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->CMH_IMAGE_PROJECTION_FACE:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->CMH_IMAGE_PROJECTION_TAG_VIEW:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getSmileItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->FACES_VIEW_URI:Landroid/net/Uri;

    const-string/jumbo v2, " expression_like >= 0.8 "

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getSmileItemsForBixby()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderFaceTagInterface;->FACES_VIEW_URI:Landroid/net/Uri;

    const-string/jumbo v2, " expression_like >= 0.8 GROUP BY image_id"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getSqlStrForCMH(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;->getTotalQueryClause(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    check-cast v1, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;->getVisualSearchTagClause(Landroid/content/Context;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;->getTotalQueryClause(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/gallery3d/data/GallerySearchTagFilter;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUriForCMH()Landroid/net/Uri;
    .locals 5

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.cmh"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "tagview"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "groupBy"

    const-string/jumbo v4, "_id"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mQueryBuilder:Lcom/sec/android/gallery3d/provider/AbstractSearchQueryBuilder;

    check-cast v2, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/gallery3d/provider/CmhProviderSearchQueryBuilder;->checkUriForVisualSearch(Landroid/net/Uri;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private hasCountryCode(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSearchKeyword()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordFavorite:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v1, 0x7f0a03f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordSmile:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordBlurred:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordTime:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a045f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordTime:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordTime:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordTime:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordTime:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a031c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a03b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a04d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a014c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a03d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0403

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a043a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a03b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a04bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a03f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a01a0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a040b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a04bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v2, 0x7f0a006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isSearchCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "Location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Documents"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Other Documents"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Others"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "My tags"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Camera mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private makeBaseItemList()V
    .locals 9

    sget-object v7, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v6, :cond_0

    const-string/jumbo v6, "GallerySearchAlbum"

    const-string/jumbo v8, "mClusterAlbumSet is null"

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v6, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getAlbums()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mBasePathMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v6

    if-gtz v6, :cond_3

    :cond_2
    monitor-exit v7

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/Path;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mBasePathMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private mergeItemsWithCMH(Ljava/lang/String;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getEventItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v1, p2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->addAllItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->initSearchKeyword()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mLocale:Ljava/util/Locale;

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordFavorite:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getFavoriteItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->addAllItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordTime:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordTime:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getItemsFromTimePeriod(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordShotMode:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getItemsFromShotMode(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordSmile:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getSmileItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeywordBlurred:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getBlurredItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    invoke-direct {p0, v1, p2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->addAllItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->addAllItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->getExistFilterMask()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    invoke-direct {p0, v1, v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->addAllItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_2
    move-object v3, v1

    goto :goto_1

    :cond_8
    invoke-direct {p0, v1, p2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->addAllItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2
.end method

.method private mergeSearchItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v5

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object p1, v1

    goto :goto_0
.end method

.method private removeDuplicates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    sget-object v5, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v6

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$200(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$200(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I

    move-result v6

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$4;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$4;-><init>(Lcom/sec/android/gallery3d/data/GallerySearchAlbum;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    const/4 v1, 0x1

    return v1
.end method

.method protected enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mImageCount:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getClusteringPaths()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    :cond_0
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v6

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    if-lt p1, v8, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    sget-object v9, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v10, p1, p2

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-le p1, v3, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_4
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sub-int v8, v3, p1

    new-array v0, v8, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v1, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$3;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$3;-><init>(Lcom/sec/android/gallery3d/data/GallerySearchAlbum;[Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v1, v10}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    invoke-static {v6, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v8, "GallerySearchAlbum"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getClusteringPaths()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    return v1
.end method

.method public getMediaItemEx(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v4, v1, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 8

    const-wide/16 v2, 0x5

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getClusterKind()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0492

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    const-wide/high16 v4, 0x100000000000000L

    or-long/2addr v4, v2

    const-wide/high16 v6, 0x40000000000000L

    or-long v2, v4, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GallerySearchAlbum"

    const-string/jumbo v4, "ClassCastException at getSupportedOperations."

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVideoCount:I

    return v0
.end method

.method public getVisualSearchTagFilter()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyDirty()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->notifyDirty()V

    return-void
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 7

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mDataVersion:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v4, "GallerySearchAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reload() : isDataChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->notifyDirty()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mDataVersion:J

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    const-string/jumbo v4, "GallerySearchAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reload() : mNotifier.isDirty() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->makeBaseItemList()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->clear()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mPaths:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mDataVersion:J

    :cond_1
    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mDataVersion:J

    return-wide v4

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSearchTagFilter(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    return-void
.end method

.method public setTagListMap(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/core/SearchFilterType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mExistTagListMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public setVisualSearchTagFilter(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    return-void
.end method

.method public updateKeyword(Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "GallerySearchAlbum"

    const-string/jumbo v1, "updateKeyword"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mKeyword:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mIsRequestKeywordFromSearchPress:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->notifyDirty()V

    return-void
.end method

.method public updateMediaSet()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setVersion()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->onContentDirty()V

    return-void
.end method
