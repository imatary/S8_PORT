.class public Lcom/sec/android/gallery3d/data/LocationClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/LocationClustering$Point;
    }
.end annotation


# static fields
.field private static final MAX_GROUPS:I = 0x1

.field private static final MAX_ITERATIONS:I = 0x800

.field private static final MIN_GROUPS:I = 0x1

.field private static final STOP_CHANGE_RATIO:F = 0.01f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoLocationString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    return-void
.end method

.method private static generateName(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;",
            "Lcom/sec/android/gallery3d/util/ReverseGeocoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v0, v7, :cond_4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-wide v2, v1, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    iget-wide v4, v1, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    iget-wide v8, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v7, v8, v2

    if-lez v7, :cond_0

    iput-wide v2, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    iput-wide v4, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    :cond_0
    iget-wide v8, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v7, v8, v2

    if-gez v7, :cond_1

    iput-wide v2, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    iput-wide v4, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    :cond_1
    iget-wide v8, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v7, v8, v4

    if-lez v7, :cond_2

    iput-wide v2, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    iput-wide v4, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    :cond_2
    iget-wide v8, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v7, v8, v4

    if-gez v7, :cond_3

    iput-wide v2, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    iput-wide v4, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->computeAddress(Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getCluster(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
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

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mHashMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-object v4, v4, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v3

    goto :goto_0
.end method

.method private static kMeans([Lcom/sec/android/gallery3d/data/LocationClustering$Point;[I)[I
    .locals 34

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    const/4 v2, 0x1

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    const/4 v2, 0x1

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v0, v25

    new-array v14, v0, [Lcom/sec/android/gallery3d/data/LocationClustering$Point;

    move/from16 v0, v25

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/LocationClustering$Point;

    move-object/from16 v18, v0

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v14, v20

    new-instance v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/LocationClustering$Point;-><init>()V

    aput-object v2, v18, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_0
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v0, v27

    new-array v11, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p1, v2

    const/16 v24, 0x0

    const/16 v33, 0x0

    move/from16 v23, v26

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_d

    div-int v15, v27, v23

    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    mul-int v2, v20, v15

    aget-object v28, p0, v2

    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    iput-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    iput-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_1
    const/16 v21, 0x0

    :goto_3
    const/16 v2, 0x800

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v2, v18, v20

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v2, v18, v20

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    const/4 v2, 0x0

    aput v2, v17, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    :cond_2
    const/16 v33, 0x0

    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    aget-object v28, p0, v20

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v12, 0x0

    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    move-object/from16 v0, v28

    iget-wide v2, v0, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget-object v6, v14, v22

    iget-wide v6, v6, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v8, v14, v22

    iget-wide v8, v8, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    invoke-static/range {v2 .. v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v16, v2

    if-gez v2, :cond_3

    const/16 v16, 0x0

    :cond_3
    cmpg-float v2, v16, v10

    if-gez v2, :cond_4

    move/from16 v10, v16

    move/from16 v12, v22

    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    :cond_5
    aput v12, v19, v20

    aget v2, v17, v12

    add-int/lit8 v2, v2, 0x1

    aput v2, v17, v12

    aget-object v2, v18, v12

    iget-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v2, v18, v12

    iget-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    add-float v33, v33, v10

    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_6
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    aget v2, v17, v20

    if-lez v2, :cond_7

    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v4, v3, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget v3, v17, v20

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->latRad:D

    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v4, v3, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    aget v3, v17, v20

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, v2, Lcom/sec/android/gallery3d/data/LocationClustering$Point;->lngRad:D

    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-eqz v2, :cond_9

    sub-float v2, v24, v33

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v2, v33

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    :cond_9
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v29, 0x0

    const/16 v20, 0x0

    move/from16 v30, v29

    :goto_8
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    aget v2, v17, v20

    if-lez v2, :cond_f

    add-int/lit8 v29, v30, 0x1

    aput v30, v31, v20

    :goto_9
    add-int/lit8 v20, v20, 0x1

    move/from16 v30, v29

    goto :goto_8

    :cond_a
    move/from16 v24, v33

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    :cond_b
    move/from16 v0, v30

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v32, v33, v2

    cmpg-float v2, v32, v13

    if-gez v2, :cond_e

    move/from16 v13, v32

    const/4 v2, 0x0

    aput v30, p1, v2

    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    aget v2, v19, v20

    aget v2, v31, v2

    aput v2, v11, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    cmpl-float v2, v32, v2

    if-nez v2, :cond_e

    :cond_d
    return-object v11

    :cond_e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    :cond_f
    move/from16 v29, v30

    goto :goto_9
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/LocationClustering;->getCluster(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocationClustering;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v15

    if-gtz v15, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v15}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/gallery3d/data/LocationClustering;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/SmallItem;

    if-nez v14, :cond_2

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    iget-wide v0, v14, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    move-wide/from16 v18, v0

    iget-wide v0, v14, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/sec/android/gallery3d/data/LocationClustering$Point;

    iget-wide v0, v14, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    move-wide/from16 v20, v0

    iget-wide v0, v14, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/LocationClustering$Point;-><init>(DD)V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_5

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    new-instance v9, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/data/LocationClustering;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7, v9}, Lcom/sec/android/gallery3d/data/LocationClustering;->generateName(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v18, "LocationClustering"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " Address = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mHashMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
