.class public Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "GallerySearchClusterAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchClusterAlbumSet"

.field private static final mUseFaceAlbum:Z


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mClusterAlbumSets:[Lcom/sec/android/gallery3d/data/ClusterAlbumSet;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mClusterAlbumSets:[Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-virtual {p3, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->initClusterAlbumSet()V

    return-void
.end method

.method private getAlbums()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mClusterAlbumSets:[Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getAlbums()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private initClusterAlbumSet()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mClusterAlbumSets:[Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    aput-object v2, v3, v4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mClusterAlbumSets:[Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SearchClusterAlbumSet"

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->getSubMediaSetCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->getAlbums()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 8

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mClusterAlbumSets:[Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getDataVersion()J

    move-result-wide v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mClusterAlbumSets:[Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->reload()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mDataVersion:J

    :goto_1
    return-wide v6

    :cond_2
    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/GallerySearchClusterAlbumSet;->mDataVersion:J

    goto :goto_1
.end method
