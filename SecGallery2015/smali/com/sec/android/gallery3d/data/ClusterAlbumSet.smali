.class public Lcom/sec/android/gallery3d/data/ClusterAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterAlbumSet"


# instance fields
.field albumIndex:I

.field private final mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field final mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field mClustering:Lcom/sec/android/gallery3d/data/Clustering;

.field private final mFaceComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstReloadDone:Z

.field private mForceReload:Z

.field private final mGroupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field final mKind:I

.field mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private mSearchArcMode:Z

.field private mSortByType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mForceReload:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mSearchArcMode:Z

    iput v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->albumIndex:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mSortByType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$3;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$3;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbumSet;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mFaceComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$4;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$4;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbumSet;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mGroupComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput p4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    invoke-virtual {p3, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    return-void
.end method

.method private IsSupportKind()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkDirty()Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reloadFace(Z)J
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->isPhotoPage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->isActivityRecreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1, v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->setActivityRecreated(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1, v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRefreshOperation(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->reloadForFR()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    :goto_0
    return-wide v2

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1, v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRefreshOperation(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->reloadForFR()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mArcDataVersion:J

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getArcVersionNumber()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getRefreshOperation()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1, v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRefreshOperation(I)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->reloadForFR()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    :cond_4
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    goto :goto_0
.end method

.method private reloadForFR()V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getArcVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mArcDataVersion:J

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    return-void
.end method

.method private updateClustersContents()V
    .locals 10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    new-instance v9, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$1;

    invoke-direct {v9, p0, v0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$1;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbumSet;Ljava/util/HashSet;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8, v5}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method createClustering()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Lcom/sec/android/gallery3d/data/SizeClustering;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/data/SizeClustering;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    new-instance v1, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;

    iget v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mSortByType:I

    invoke-direct {v1, v0, v2}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/data/LocationClusteringChn;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/data/LocationClusteringChn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/data/LocationClustering;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/sec/android/gallery3d/data/TagClustering;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/data/TagClustering;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/sec/android/gallery3d/data/FaceClustering;

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/sec/android/gallery3d/data/SearchTimeClustering;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/sec/android/gallery3d/data/GallerySearchClustering;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/data/GallerySearchClustering;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/sec/android/gallery3d/data/FaceClustering;

    invoke-direct {v1, v0, v2}, Lcom/sec/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_9
    new-instance v1, Lcom/sec/android/gallery3d/data/FaceClustering;

    invoke-direct {v1, v0, v2, v2, v3}, Lcom/sec/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_a
    new-instance v1, Lcom/sec/android/gallery3d/data/FaceClustering;

    invoke-direct {v1, v0, v2, v2, v2}, Lcom/sec/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_b
    new-instance v1, Lcom/sec/android/gallery3d/data/FestivalClustering;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/data/FestivalClustering;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_c
    new-instance v1, Lcom/sec/android/gallery3d/data/FavoriteClustering;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/data/FavoriteClustering;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_d
    new-instance v1, Lcom/sec/android/gallery3d/data/SmartClustering;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget v3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mSortByType:I

    invoke-direct {v1, v2, v3}, Lcom/sec/android/gallery3d/data/SmartClustering;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_e
    new-instance v1, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;

    iget v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mSortByType:I

    invoke-direct {v1, v0, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto :goto_0

    :pswitch_f
    new-instance v1, Lcom/sec/android/gallery3d/data/AllAlbumClustering;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_7
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_1
    .end packed-switch
.end method

.method public getAlbumIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->albumIndex:I

    return v0
.end method

.method public getAlbumItemsCount()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaseSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getClusterKind()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    return v0
.end method

.method public getItemIndex(I)I
    .locals 4

    move v1, p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getSubMediaSetCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-ge v2, v3, :cond_1

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->albumIndex:I

    :cond_2
    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, p1

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getSubMediaSetCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    if-gt v2, p2, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v3

    add-int/lit8 v6, v5, 0x1

    if-ge v3, v6, :cond_1

    sub-int/2addr v5, v3

    if-gez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_2
    if-ge v1, v3, :cond_2

    if-gt v2, p2, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public getMediaItemByPosition(II)Ljava/util/ArrayList;
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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    const/4 v0, 0x1

    move v3, p1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getSubMediaSetCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    if-gt v0, p2, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, v2, v4, v5, v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method getMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;II",
            "Lcom/sec/android/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p2, v5, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v3

    :cond_0
    add-int v5, p2, p3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sub-int v5, v2, p2

    new-array v0, v5, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v1, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$2;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbumSet;[Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v5, 0x0

    invoke-virtual {p4, v4, v1, v5}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    new-instance v3, Ljava/util/ArrayList;

    sub-int v5, v2, p2

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ClusterAlbumSet"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_0

    :cond_4
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    goto :goto_0
.end method

.method public isFaceCluster()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedUpdateCluster()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isFaceCluster()Z

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->checkDirty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->isArcMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isFaceCluster()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mSearchArcMode:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->reloadFace(Z)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->isActivityRecreated()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1, v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->setActivityRecreated(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mForceReload:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->IsSupportKind()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    :goto_1
    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mForceReload:Z

    :cond_5
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mDataVersion:J

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    goto :goto_1
.end method

.method public removeClusterName(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v7

    new-instance v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbumSet;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method

.method public setSearchArcMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mSearchArcMode:Z

    return-void
.end method

.method public setSortByType(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mSortByType:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mSortByType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mForceReload:Z

    goto :goto_0
.end method

.method public updateClusterName(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v7

    new-instance v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet$UpdateOperation;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbumSet;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method

.method updateClusters()V
    .locals 14

    const/16 v13, 0x9

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v5, 0x0

    :goto_0
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_2
    const-string/jumbo v10, "ClusterAlbumSet"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to set null to album. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->createClustering()V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/data/Clustering;->run(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Clustering;->getNumberOfClusters()I

    move-result v7

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v7, :cond_c

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterKey(I)Ljava/lang/String;

    move-result-object v6

    iget v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    :goto_4
    sget-object v11, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    iget v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    invoke-direct {v0, v2, v3, p0, v10}, Lcom/sec/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    :cond_2
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isFaceCluster()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setMediaItemsEx(Ljava/util/ArrayList;)V

    :goto_5
    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterLocation(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setLocation(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterAddrValues(I)[[D

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setAddrValues([[D)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    instance-of v10, v10, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->getClusterList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/DayCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setSmallItemList(Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isFaceCluster()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/FaceClustering;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/FaceClustering;->getPersonId(I)I

    move-result v10

    iput v10, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPersonId:I

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/FaceClustering;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/FaceClustering;->getGroupId(I)I

    move-result v10

    iput v10, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mGroupId:I

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setKey(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isFaceCluster()Z

    move-result v10

    if-nez v10, :cond_6

    iget v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    if-eqz v10, :cond_6

    iget v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_6

    iget v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    if-eq v10, v13, :cond_6

    iget v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/16 v11, 0x12

    if-ne v10, v11, :cond_7

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateDataVersion()V

    :cond_7
    iget v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    if-ne v10, v13, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v10

    if-nez v10, :cond_b

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_8
    iget v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/SizeClustering;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/SizeClustering;->getMinSize(I)J

    move-result-wide v8

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10, v8, v9}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    goto/16 :goto_4

    :cond_9
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    goto/16 :goto_4

    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    :cond_a
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    goto/16 :goto_5

    :cond_b
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v10, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isFaceCluster()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mFaceComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_d
    :goto_7
    return-void

    :cond_e
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->mGroupComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_7

    :catch_1
    move-exception v4

    goto/16 :goto_2
.end method

.method public updateMediaSet()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->setVersion()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->onContentDirty()V

    return-void
.end method
