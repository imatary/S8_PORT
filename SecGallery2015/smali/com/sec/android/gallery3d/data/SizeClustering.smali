.class public Lcom/sec/android/gallery3d/data/SizeClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "SizeClustering.java"


# static fields
.field private static final GIGA_BYTES:J = 0x40000000L

.field private static final MEGA_BYTES:J = 0x100000L

.field private static final SIZE_LEVELS:[J

.field private static final TAG:Ljava/lang/String; = "SizeClustering"


# instance fields
.field private mClusters:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mMinSizes:[J

.field private mNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x100000
        0xa00000
        0x6400000
        0x40000000
        0x80000000L
        0x100000000L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()[J
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    return-object v0
.end method

.method private getSizeString(I)Ljava/lang/String;
    .locals 6

    const-wide/32 v4, 0x40000000

    sget-object v2, Lcom/sec/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    aget-wide v0, v2, p1

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v4, 0x100000

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMinSize(I)J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mMinSizes:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    sget-object v7, Lcom/sec/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    array-length v7, v7

    new-array v1, v7, [Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/android/gallery3d/data/SizeClustering$1;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/gallery3d/data/SizeClustering$1;-><init>(Lcom/sec/android/gallery3d/data/SizeClustering;[Ljava/util/ArrayList;)V

    invoke-virtual {p1, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    aget-object v7, v1, v2

    if-eqz v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v7, v0, [Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    new-array v7, v0, [Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    new-array v7, v0, [J

    iput-object v7, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mMinSizes:[J

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v3, 0x0

    array-length v7, v1

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_5

    aget-object v7, v1, v2

    if-nez v7, :cond_2

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mClusters:[Ljava/util/ArrayList;

    aget-object v8, v1, v2

    aput-object v8, v7, v3

    if-nez v2, :cond_3

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    const v8, 0x7f0a03e2

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    add-int/lit8 v10, v2, 0x1

    invoke-direct {p0, v10}, Lcom/sec/android/gallery3d/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    :goto_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mMinSizes:[J

    sget-object v8, Lcom/sec/android/gallery3d/data/SizeClustering;->SIZE_LEVELS:[J

    aget-wide v8, v8, v2

    aput-wide v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    const v8, 0x7f0a03e1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_3

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/data/SizeClustering;->getSizeString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/SizeClustering;->mNames:[Ljava/lang/String;

    const v8, 0x7f0a08a9

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v11

    aput-object v4, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_3

    :cond_5
    return-void
.end method
