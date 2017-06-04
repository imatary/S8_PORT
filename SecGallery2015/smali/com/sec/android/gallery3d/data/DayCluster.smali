.class Lcom/sec/android/gallery3d/data/DayCluster;
.super Ljava/lang/Object;
.source "ChannelAlbumClustering.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cluster"


# instance fields
.field private hasLocation:Z

.field private mAddrValues:[[D

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->hasLocation:Z

    return-void
.end method


# virtual methods
.method public addItem(Lcom/sec/android/gallery3d/data/SmallItem;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p1, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    iget-wide v2, p1, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->hasLocation:Z

    :cond_0
    return-void
.end method

.method generateCaption(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v8, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-wide v4, v6, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    cmp-long v6, v4, v8

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    move-wide v2, v4

    goto :goto_1

    :cond_1
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    const v6, 0x10010

    invoke-static {p1, v2, v3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mName:Ljava/lang/String;

    return-void
.end method

.method public getAddrValues()[[D
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mAddrValues:[[D

    return-object v0
.end method

.method public getHasLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->hasLocation:Z

    return v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method setAddrValues([[D)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mAddrValues:[[D

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DayCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
