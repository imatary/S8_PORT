.class public Lcom/sec/android/gallery3d/data/SmartClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "SmartClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;
    }
.end annotation


# static fields
.field private static final FAKE_LOADING_COUNT_FOR_SMART_CLUSTERING:I = 0x3e8

.field private static final INVALID_CLUSTER_ID:I = -0x1

.field private static final MAX_FAKE_LOADING_STEP:I

.field private static final MAX_WAIT_COUNT:I = 0x4e20

.field private static final PROJECTION_FOR_DAY_LOCATION:[Ljava/lang/String;

.field private static final PROJECTION_FOR_FILTER:[Ljava/lang/String;

.field private static final PROJECTION_FOR_FILTER_UNION:[Ljava/lang/String;

.field private static final PROJECTION_FOR_FILTER_WITH_SCLOUD:[Ljava/lang/String;

.field private static final PROJECTION_FOR_MOMENT_LOCATION:[Ljava/lang/String;

.field private static final PROJECTION_FOR_MONTH_LOCATION:[Ljava/lang/String;

.field private static final PROJECTION_FOR_NORMAL:[Ljava/lang/String;

.field private static final PROJECTION_FOR_NORMAL_UNION:[Ljava/lang/String;

.field private static final PROJECTION_FOR_NORMAL_WITH_SCLOUD:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmartClustering"

.field private static mCurrentFakeLoadingStep:I

.field private static msbFakeloading:Z


# instance fields
.field private final mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

.field private mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

.field private mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

.field private final mDayClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;",
            ">;"
        }
    .end annotation
.end field

.field private final mMomentClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonthClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiFakeLoadingForSmartClustering:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/sec/android/gallery3d/data/SmartClustering;->MAX_FAKE_LOADING_STEP:I

    sput-boolean v2, Lcom/sec/android/gallery3d/data/SmartClustering;->msbFakeloading:Z

    sput v5, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "clusterLatitude"

    aput-object v3, v0, v5

    const-string/jumbo v3, "clusterLongitude"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_MOMENT_LOCATION:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "dayLatitude"

    aput-object v3, v0, v5

    const-string/jumbo v3, "dayLongitude"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_DAY_LOCATION:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "monthLatitude"

    aput-object v3, v0, v5

    const-string/jumbo v3, "monthLongitude"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_MONTH_LOCATION:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "media_id"

    aput-object v3, v0, v5

    const-string/jumbo v3, "media_type"

    aput-object v3, v0, v2

    const-string/jumbo v3, "datetaken"

    aput-object v3, v0, v1

    const-string/jumbo v3, "width"

    aput-object v3, v0, v6

    const-string/jumbo v3, "height"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "orientation"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "clusterId"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "dayId"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "clusterMonthId"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "clusterLocation"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "dayLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "monthLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "latitude"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "longitude"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_NORMAL:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "media_id"

    aput-object v3, v0, v5

    const-string/jumbo v3, "media_type"

    aput-object v3, v0, v2

    const-string/jumbo v3, "datetaken"

    aput-object v3, v0, v1

    const-string/jumbo v3, "width"

    aput-object v3, v0, v6

    const-string/jumbo v3, "height"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "orientation"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "clusterId"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "dayId"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "clusterMonthId"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "clusterLocation"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "dayLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "monthLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "is_cloud"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "cloud_id"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "latitude"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "longitude"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_NORMAL_WITH_SCLOUD:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "clusterFileId"

    aput-object v3, v0, v5

    const-string/jumbo v3, "media_type"

    aput-object v3, v0, v2

    const-string/jumbo v3, "datetaken"

    aput-object v3, v0, v1

    const-string/jumbo v3, "width"

    aput-object v3, v0, v6

    const-string/jumbo v3, "height"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "orientation"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "clusterId"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "dayId"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "clusterMonthId"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "clusterLocation"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "dayLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "monthLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "latitude"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "longitude"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_NORMAL_UNION:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "media_id"

    aput-object v3, v0, v5

    const-string/jumbo v3, "media_type"

    aput-object v3, v0, v2

    const-string/jumbo v3, "datetaken"

    aput-object v3, v0, v1

    const-string/jumbo v3, "width"

    aput-object v3, v0, v6

    const-string/jumbo v3, "height"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "orientation"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "clusterId"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "dayId"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "clusterMonthId"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "clusterLocation"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "dayLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "monthLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "_data"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "mime_type"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "latitude"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "longitude"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_FILTER:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "media_id"

    aput-object v3, v0, v5

    const-string/jumbo v3, "media_type"

    aput-object v3, v0, v2

    const-string/jumbo v3, "datetaken"

    aput-object v3, v0, v1

    const-string/jumbo v3, "width"

    aput-object v3, v0, v6

    const-string/jumbo v3, "height"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "orientation"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "clusterId"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "dayId"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "clusterMonthId"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "clusterLocation"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "dayLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "monthLocations"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "_data"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "mime_type"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "is_cloud"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "cloud_id"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "latitude"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "longitude"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_FILTER_WITH_SCLOUD:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "clusterFileId"

    aput-object v3, v0, v5

    const-string/jumbo v3, "media_type"

    aput-object v3, v0, v2

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const-string/jumbo v1, "width"

    aput-object v1, v0, v6

    const-string/jumbo v1, "height"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "clusterId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "dayId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "clusterMonthId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "clusterLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "dayLocations"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "monthLocations"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "cloud_cached_path"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_FILTER_UNION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMomentClusters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMonthClusters:Ljava/util/ArrayList;

    iput p2, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mSortByType:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_DAY_LOCATION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_MONTH_LOCATION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/data/SmartClustering;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_MOMENT_LOCATION:[Ljava/lang/String;

    return-object v0
.end method

.method private addConditionQueryUri(Lcom/sec/android/gallery3d/data/MediaSet;)Landroid/net/Uri;
    .locals 7

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->VIEW_URI__TIMELINE:Landroid/net/Uri;

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    if-nez v4, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    check-cast p1, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->getMediaSets()[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    const/4 v4, 0x0

    aget-object v0, v1, v4

    :cond_1
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiFakeLoadingForSmartClustering:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/sec/android/gallery3d/data/SmartClustering;->msbFakeloading:Z

    if-eqz v4, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/sec/android/gallery3d/data/SmartClustering;->getLimitedUri(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    :cond_2
    :goto_1
    move-object v3, v2

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiFakeLoadingForSmartClustering:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SmartClustering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fake load step="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    sget v5, Lcom/sec/android/gallery3d/data/SmartClustering;->MAX_FAKE_LOADING_STEP:I

    if-ge v4, v5, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/sec/android/gallery3d/data/SmartClustering;->getLimitedUriForMultiFakeLoading(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_4
    sget v4, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    goto :goto_1
.end method

.method private addToDayClusterList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$400(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;-><init>(Lcom/sec/android/gallery3d/data/SmartClustering;ILcom/sec/android/gallery3d/data/SmartClustering$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    return-void
.end method

.method private addToMomentClusterList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$400(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMomentClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;-><init>(Lcom/sec/android/gallery3d/data/SmartClustering;ILcom/sec/android/gallery3d/data/SmartClustering$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    return-void
.end method

.method private addToMonthClusterList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$400(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMonthClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;-><init>(Lcom/sec/android/gallery3d/data/SmartClustering;ILcom/sec/android/gallery3d/data/SmartClustering$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    return-void
.end method

.method private dayClusterboundaryCheck(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const-string/jumbo v1, "SmartClustering"

    const-string/jumbo v2, "getCluster mDayClusters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    const-string/jumbo v1, "SmartClustering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCluster index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") error. size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private generateDayClusterName()V
    .locals 7

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$600(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$800(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mContext:Landroid/content/Context;

    const v6, 0x10010

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$700(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V

    return-void
.end method

.method private generateMomentClusterName()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$600(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mContext:Landroid/content/Context;

    const v4, 0x10010

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$700(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V

    return-void
.end method

.method private generateMonthClusterName()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$600(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mContext:Landroid/content/Context;

    const v4, 0x10024

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$700(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V

    return-void
.end method

.method private getFilterType(Lcom/sec/android/gallery3d/data/MediaSet;Z)I
    .locals 5

    const/4 v0, 0x6

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->getMediaSets()[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v4, :cond_3

    aget-object v4, v2, v1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getAlbumSetType()I

    move-result v0

    :cond_0
    :goto_1
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v4, :cond_5

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getAlbumSetType()I

    move-result v0

    :cond_1
    :goto_2
    if-eqz p2, :cond_2

    check-cast p1, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->getMediaType()I

    move-result v0

    :cond_2
    return v0

    :cond_3
    aget-object v4, v2, v1

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-eqz v4, :cond_4

    aget-object v4, v2, v1

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->getAlbumSetType()I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-eqz v4, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->getAlbumSetType()I

    move-result v0

    goto :goto_2
.end method

.method private getInitialProjection(Lcom/sec/android/gallery3d/data/MediaSet;Z)[Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_NORMAL_UNION:[Ljava/lang/String;

    :goto_0
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_FILTER_UNION:[Ljava/lang/String;

    :cond_0
    :goto_1
    if-eqz p2, :cond_5

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_2
    return-object v1

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_NORMAL_WITH_SCLOUD:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_NORMAL:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_FILTER_WITH_SCLOUD:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_FILTER:[Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method private getLimitedUri(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getFakeLoadingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    sput-boolean v4, Lcom/sec/android/gallery3d/data/SmartClustering;->msbFakeloading:Z

    sput-boolean v5, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullLoading:Z

    const-string/jumbo v0, "SmartClustering"

    const-string/jumbo v1, "Smart Clustering fake loading enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->getFakeLoadingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    sput-boolean v4, Lcom/sec/android/gallery3d/data/SmartClustering;->msbFakeloading:Z

    sput-boolean v5, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    const-string/jumbo v0, "SmartClustering"

    const-string/jumbo v1, "Smart Clustering fake loading enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLimitedUriForMultiFakeLoading(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "SmartClustering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong fake loading step:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p2

    :pswitch_0
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getFakeLoadingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    sget v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    sput-boolean v4, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFakeLoadingForSmartClustering:Z

    const-string/jumbo v0, "SmartClustering"

    const-string/jumbo v1, "Smart Clustering fake loading enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->getFakeLoadingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    sget v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    sput-boolean v4, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFakeLoadingForSmartClustering:Z

    const-string/jumbo v0, "SmartClustering"

    const-string/jumbo v1, "Smart Clustering fake loading enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    const-string/jumbo v2, "0,1000"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    sget v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    sput-boolean v3, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFakeLoadingForSmartClustering:Z

    sput-boolean v4, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->sbNeedFullLoading:Z

    const-string/jumbo v0, "SmartClustering"

    const-string/jumbo v1, "Smart Clustering fake loading enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    const-string/jumbo v2, "0,1000"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    sget v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    sput-boolean v3, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFakeLoadingForSmartClustering:Z

    sput-boolean v4, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    const-string/jumbo v0, "SmartClustering"

    const-string/jumbo v1, "Smart Clustering fake loading enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFakeLoading()Z
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiFakeLoadingForSmartClustering:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentFakeLoadingStep:I

    sget v1, Lcom/sec/android/gallery3d/data/SmartClustering;->MAX_FAKE_LOADING_STEP:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/sec/android/gallery3d/data/SmartClustering;->msbFakeloading:Z

    goto :goto_0
.end method

.method private makeFilterWhere(Lcom/sec/android/gallery3d/data/MediaSet;Z)Ljava/lang/StringBuilder;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->getBaseSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/gallery3d/data/UnionLocalAlbumSet;

    if-eqz v3, :cond_3

    :cond_0
    const-string/jumbo v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "((bucket_id is null) OR (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/SmartClustering;->getFilterType(Lcom/sec/android/gallery3d/data/MediaSet;Z)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    const-string/jumbo v3, " and media_type = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    const-string/jumbo v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (file_status = 0 or file_status = 4) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "scloud"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (file_status = 0 or file_status = 4) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string/jumbo v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const-string/jumbo v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    const-string/jumbo v3, " and media_type = 3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private makeQueryProjection([Ljava/lang/String;Ljava/lang/StringBuilder;)[Ljava/lang/String;
    .locals 5

    const-string/jumbo v3, ", "

    invoke-static {p1, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " FROM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timelineview"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " WHERE group_id NOT IN (SELECT group_id FROM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timelineview"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " WHERE group_id != 0 and best_image = 1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ") AND group_id != 0 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " and device_id = 1 GROUP BY group_id UNION SELECT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-object v2
.end method

.method private makeWhereClause(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " ((best_image = 1 and group_id !=0) or group_id = 0) and device_id = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private momentClusterboundaryCheck(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMomentClusters:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const-string/jumbo v1, "SmartClustering"

    const-string/jumbo v2, "getCluster mMomentClusters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMomentClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    const-string/jumbo v1, "SmartClustering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCluster index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") error. size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMomentClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private monthClusterboundaryCheck(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMonthClusters:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const-string/jumbo v1, "SmartClustering"

    const-string/jumbo v2, "getCluster mMonthClusters is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMonthClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    const-string/jumbo v1, "SmartClustering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCluster index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") error. size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMonthClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->dayClusterboundaryCheck(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-object v4, v4, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getClusterAddrValues(I)[[D
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterAddrValues(I)[[D

    move-result-object v0

    return-object v0
.end method

.method public getClusterKey(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClusterLocation(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->dayClusterboundaryCheck(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->dayClusterboundaryCheck(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDayClusterAddrValues(I)[[D
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->dayClusterboundaryCheck(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    filled-new-array {v6, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    aget-object v1, v0, v3

    aget-object v2, v0, v3

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v6

    aput-wide v4, v1, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$500(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)[[D

    move-result-object v0

    goto :goto_0
.end method

.method public getDayClusters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMomentClusterAddrValues(I)[[D
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->momentClusterboundaryCheck(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    filled-new-array {v6, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    aget-object v1, v0, v3

    aget-object v2, v0, v3

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v6

    aput-wide v4, v1, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMomentClusters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$500(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)[[D

    move-result-object v0

    goto :goto_0
.end method

.method public getMomentClusters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMomentClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMonthClusterAddrValues(I)[[D
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->monthClusterboundaryCheck(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    filled-new-array {v6, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    aget-object v1, v0, v3

    aget-object v2, v0, v3

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v6

    aput-wide v4, v1, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMonthClusters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$500(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)[[D

    move-result-object v0

    goto :goto_0
.end method

.method public getMonthClusters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMonthClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfDayClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mDayClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfMomentClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMomentClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfMonthClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering;->mMonthClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 50

    const-string/jumbo v4, "SmartClustering"

    const-string/jumbo v8, "run start"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->isFakeLoading()Z

    move-result v26

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->addConditionQueryUri(Lcom/sec/android/gallery3d/data/MediaSet;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/SmartClustering;->getInitialProjection(Lcom/sec/android/gallery3d/data/MediaSet;Z)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    if-eqz v4, :cond_2

    move-object/from16 v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->getFilterMimeTypeMode()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/sec/android/gallery3d/data/SmartClustering;->makeFilterWhere(Lcom/sec/android/gallery3d/data/MediaSet;Z)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v6, v1}, Lcom/sec/android/gallery3d/data/SmartClustering;->makeQueryProjection([Ljava/lang/String;Ljava/lang/StringBuilder;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/SmartClustering;->makeWhereClause(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v46, "clusterFileId"

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "datetaken DESC, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " DESC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SmartClustering.run()"

    invoke-static/range {v4 .. v10}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    const-string/jumbo v4, "SmartClustering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Performance Step1 : Query duration ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v48, v44, v42

    move-wide/from16 v0, v48

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_16

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v13

    const-string/jumbo v4, "SmartClustering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Smart Cluster file count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v37, -0x1

    const-string/jumbo v38, ""

    new-instance v4, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v9}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;-><init>(Lcom/sec/android/gallery3d/data/SmartClustering;ILcom/sec/android/gallery3d/data/SmartClustering$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    const/16 v35, -0x1

    const-string/jumbo v36, ""

    new-instance v4, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v9}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;-><init>(Lcom/sec/android/gallery3d/data/SmartClustering;ILcom/sec/android/gallery3d/data/SmartClustering$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    const/16 v39, -0x1

    const-string/jumbo v40, ""

    new-instance v4, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v9}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;-><init>(Lcom/sec/android/gallery3d/data/SmartClustering;ILcom/sec/android/gallery3d/data/SmartClustering$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    const/4 v14, 0x0

    :cond_0
    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0x4e20

    if-le v14, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getStopSmartClustering()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "SmartClustering"

    const-string/jumbo v8, "STOP SMART CLUSTERING"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mApp:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v8, 0x1

    invoke-interface {v4, v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRestartSmartClustering(Z)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move/from16 v0, v37

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$100(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$200(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->generateMomentClusterName()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->addToMomentClusterList()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move/from16 v0, v35

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$100(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$200(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->generateDayClusterName()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->addToDayClusterList()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move/from16 v0, v39

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$100(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$200(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->generateMonthClusterName()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->addToMonthClusterList()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-string/jumbo v4, "SmartClustering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Performance Step2 : Clustering duration ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v48, v18, v44

    move-wide/from16 v0, v48

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_4
    const-string/jumbo v4, "SmartClustering"

    const-string/jumbo v8, "run end"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v46, "media_id"

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v4, 0x3

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    const/4 v4, 0x4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/4 v4, 0x5

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const/16 v27, 0x1

    const v12, 0x989680

    const/4 v4, 0x6

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    const/4 v4, 0x7

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v4, 0x8

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    if-eqz v11, :cond_6

    const/16 v4, 0xc

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v4, 0xd

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0xe

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_5

    const/16 v4, 0xf

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    :cond_5
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    move-object/from16 v23, v0

    const/4 v4, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->isFilteredItem(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_6
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0xc

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/16 v4, 0xd

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    :cond_7
    new-instance v41, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct/range {v41 .. v41}, Lcom/sec/android/gallery3d/data/SmallItem;-><init>()V

    move-wide/from16 v0, v20

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_f

    sget-object v34, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_6
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_10

    sget-object v34, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_7
    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    :goto_8
    move/from16 v0, v47

    move-object/from16 v1, v41

    iput v0, v1, Lcom/sec/android/gallery3d/data/SmallItem;->width:I

    move/from16 v0, v25

    move-object/from16 v1, v41

    iput v0, v1, Lcom/sec/android/gallery3d/data/SmallItem;->height:I

    move/from16 v0, v33

    move-object/from16 v1, v41

    iput v0, v1, Lcom/sec/android/gallery3d/data/SmallItem;->orientation:I

    if-nez v26, :cond_8

    const-string/jumbo v4, "latitude"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    move-object/from16 v0, v41

    iput-wide v8, v0, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    const-string/jumbo v4, "longitude"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    move-object/from16 v0, v41

    iput-wide v8, v0, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    :cond_8
    move/from16 v0, v37

    move/from16 v1, v31

    if-eq v0, v1, :cond_a

    const/4 v4, -0x1

    move/from16 v0, v37

    if-eq v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move/from16 v0, v37

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$100(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$200(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->generateMomentClusterName()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->addToMomentClusterList()V

    :cond_9
    const/16 v4, 0x9

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMomentCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$300(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Lcom/sec/android/gallery3d/data/SmallItem;)V

    move/from16 v37, v31

    move/from16 v0, v35

    move/from16 v1, v16

    if-eq v0, v1, :cond_c

    const/4 v4, -0x1

    move/from16 v0, v35

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move/from16 v0, v35

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$100(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$200(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->generateDayClusterName()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->addToDayClusterList()V

    :cond_b
    const/16 v4, 0xa

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentDayCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$300(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Lcom/sec/android/gallery3d/data/SmallItem;)V

    move/from16 v35, v16

    move/from16 v0, v39

    move/from16 v1, v32

    if-eq v0, v1, :cond_e

    const/4 v4, -0x1

    move/from16 v0, v39

    if-eq v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move/from16 v0, v39

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$100(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$200(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->generateMonthClusterName()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/SmartClustering;->addToMonthClusterList()V

    :cond_d
    const/16 v4, 0xb

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/SmartClustering;->mCurrentMonthCluster:Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->access$300(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Lcom/sec/android/gallery3d/data/SmallItem;)V

    move/from16 v39, v32

    goto/16 :goto_5

    :cond_f
    sget-object v34, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_6

    :cond_10
    sget-object v34, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_7

    :cond_11
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_13

    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_12

    sget-object v34, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_9
    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_8

    :catch_0
    move-exception v17

    :try_start_2
    const-string/jumbo v4, "SmartClustering"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_4

    :cond_12
    :try_start_3
    sget-object v34, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_9

    :cond_13
    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v4

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_14
    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_15

    :try_start_4
    sget-object v34, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_a
    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_8

    :cond_15
    sget-object v34, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_a

    :cond_16
    const-string/jumbo v4, "SmartClustering"

    const-string/jumbo v8, "cursor is null."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method
