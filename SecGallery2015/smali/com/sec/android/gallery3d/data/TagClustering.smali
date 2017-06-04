.class public Lcom/sec/android/gallery3d/data/TagClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "TagClustering.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TagClustering"


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNames:[Ljava/lang/String;

.field private final mUntaggedString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a049f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mUntaggedString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
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

.method public bridge synthetic getClusterLocation(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterLocation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 9

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/sec/android/gallery3d/data/TagClustering$1;

    invoke-direct {v6, p0, v5, v4}, Lcom/sec/android/gallery3d/data/TagClustering$1;-><init>(Lcom/sec/android/gallery3d/data/TagClustering;Ljava/util/ArrayList;Ljava/util/TreeMap;)V

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    add-int/2addr v6, v3

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mNames:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mNames:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v8, v1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mNames:[Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mUntaggedString:Ljava/lang/String;

    aput-object v7, v6, v1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/TagClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
