.class Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "ChannelAlbumClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$DateComparator;
    }
.end annotation


# static fields
.field private static final DAY_UINT:J = 0x5265c00L

.field private static final GALLERY_LIMIT_ADDRESS_LEVEL:I = 0x4

.field private static final LOCATION_ADDR_BLANK:Ljava/lang/String; = " "

.field private static final LOCATION_ADDR_DELIMITER:Ljava/lang/String; = "\\|"

.field private static final LOCATION_ADDR_NULL:Ljava/lang/String; = "null"

.field private static final LOCATION_LIMIT_COUNT:I = 0x3

.field private static final SAMSUNG_LINK_PROVIDE_GEO_ADDRESS_LEVEL:I = 0x9

.field private static final TAG:Ljava/lang/String; = "ChannelAlbumClustering"

.field private static final mTakeAddressLevel:[Z


# instance fields
.field private currentDate:Ljava/util/Calendar;

.field private mAddrValues:[[[D

.field private final mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/DayCluster;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrCluster:Lcom/sec/android/gallery3d/data/DayCluster;

.field private mCurrentTime:J

.field private mLocations:[Ljava/lang/String;

.field private mNames:[Ljava/lang/String;

.field private previousDayValuse:I

.field private final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field

.field private todayMonth:I

.field private todayYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mTakeAddressLevel:[Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->sDateComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/DayCluster;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/DayCluster;

    iput p2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mSortByType:I

    return-void
.end method

.method private addToDayClusterList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DayCluster;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/DayCluster;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DayCluster;->generateCaption(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/DayCluster;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/DayCluster;

    :cond_0
    return-void
.end method

.method private computeForAlbumTimeWithTimeTable(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayMonth:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayYear:I

    new-instance v3, Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/data/DayCluster;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/DayCluster;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/SmallItem;

    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrentTime:J

    cmp-long v3, v6, v4

    if-gez v3, :cond_0

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrentTime:J

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrentTime:J

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    long-to-int v1, v6

    iget v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->previousDayValuse:I

    if-eq v1, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->addToDayClusterList()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/data/DayCluster;->addItem(Lcom/sec/android/gallery3d/data/SmallItem;)V

    iput v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->previousDayValuse:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->addToDayClusterList()V

    return-void
.end method

.method private doClustering(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->computeForAlbumTimeWithTimeTable(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->setLocations()V

    return-void
.end method

.method private getLocationNameSetFromSmallItem(Lcom/sec/android/gallery3d/data/DayCluster;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/DayCluster;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<[D>;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/DayCluster;->size()I

    move-result v17

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/DayCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/SmallItem;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/SmallItem;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/SmallItem;->getLongitude()D

    move-result-wide v12

    if-eqz v8, :cond_0

    const-wide/16 v22, 0x0

    cmpl-double v22, v10, v22

    if-nez v22, :cond_1

    const-wide/16 v22, 0x0

    cmpl-double v22, v12, v22

    if-nez v22, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    if-nez v19, :cond_2

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->sortByValue(Ljava/util/Map;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v7, 0x0

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v21, v0

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/DayCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/SmallItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/DayCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/SmallItem;->getLatitude()D

    move-result-wide v24

    aput-wide v24, v21, v23

    const/16 v23, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/DayCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/SmallItem;->getLongitude()D

    move-result-wide v24

    aput-wide v24, v21, v23

    const-string/jumbo v22, "\\|"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/4 v5, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    aget-object v20, v18, v22

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    const-string/jumbo v24, " "

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string/jumbo v24, "null"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_7
    sget-object v24, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mTakeAddressLevel:[Z

    aget-boolean v24, v24, v5

    if-nez v24, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    if-nez v6, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v5, v0, :cond_6

    if-eqz v20, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/16 v22, 0x3

    move/from16 v0, v22

    if-lt v7, v0, :cond_4

    :cond_b
    return-void
.end method

.method private initTime(Lcom/sec/android/gallery3d/data/SmallItem;)V
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayMonth:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayYear:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayYear:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayMonth:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v7, v0, v2, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrentTime:J

    iget-wide v8, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayMonth:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayYear:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayYear:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->todayMonth:I

    invoke-virtual {v7, v0, v1, v10}, Ljava/util/Calendar;->set(III)V

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mCurrentTime:J

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->updateTimeTableWithLatestDay(J)V

    return-void
.end method

.method private setLocations()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v15, "ChannelAlbumClustering"

    const-string/jumbo v16, "setLocations: start"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/DayCluster;->getHasLocation()Z

    move-result v15

    if-eqz v15, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x3

    const/16 v16, 0x2

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    const-string/jumbo v15, "ChannelAlbumClustering"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "currCluster.size is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/DayCluster;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->getLocationNameSetFromSmallItem(Lcom/sec/android/gallery3d/data/DayCluster;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    const/4 v15, 0x1

    :try_start_0
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    if-eqz v2, :cond_0

    if-eqz v7, :cond_0

    const-string/jumbo v15, "ChannelAlbumClustering"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setLocations: addr1 has location, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "th cluster"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    aget-object v15, v9, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-wide v18, v7, v17

    aput-wide v18, v15, v16

    const/4 v15, 0x0

    aget-object v15, v9, v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-wide v18, v7, v17

    aput-wide v18, v15, v16

    :cond_0
    const/4 v15, 0x2

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v15, 0x3

    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    if-eqz v8, :cond_1

    const/4 v15, 0x1

    aget-object v15, v9, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-wide v18, v8, v17

    aput-wide v18, v15, v16

    const/4 v15, 0x1

    aget-object v15, v9, v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-wide v18, v8, v17

    aput-wide v18, v15, v16

    if-nez v4, :cond_3

    const-string/jumbo v15, " & "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/sec/android/gallery3d/data/DayCluster;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lcom/sec/android/gallery3d/data/DayCluster;->setAddrValues([[D)V

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const-string/jumbo v15, " & "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    const-string/jumbo v15, "ChannelAlbumClustering"

    invoke-virtual {v11}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/16 v15, 0x2c

    :try_start_1
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, " &..."

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    return-void
.end method

.method private sortByValue(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering$1;-><init>(Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;Ljava/util/Map;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    const-string/jumbo v4, "ChannelAlbumClustering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCluster index("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") error. size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/DayCluster;->getItems()Ljava/util/ArrayList;

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

.method public getClusterAddrValues(I)[[D
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mAddrValues:[[[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[D

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mAddrValues:[[[D

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getClusterKey(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getClusterList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/DayCluster;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClusterLocation(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mLocations:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mLocations:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "ChannelAlbumClustering"

    const-string/jumbo v9, "run start"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v3, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->initTime(Lcom/sec/android/gallery3d/data/SmallItem;)V

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->doClustering(Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mNames:[Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mLocations:[Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v9, 0x2

    filled-new-array {v4, v6, v9}, [I

    move-result-object v6

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[D

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mAddrValues:[[[D

    const/4 v2, 0x0

    instance-of v6, p1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v6, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_2

    move v2, v7

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    :try_start_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mNames:[Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/DayCluster;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v1

    if-nez v2, :cond_1

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mLocations:[Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/DayCluster;->getLocation()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v1

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mAddrValues:[[[D

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ChannelAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/DayCluster;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/DayCluster;->getAddrValues()[[D

    move-result-object v6

    aput-object v6, v7, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v2, v8

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v6, "ChannelAlbumClustering"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v6, "ChannelAlbumClustering"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v6, "ChannelAlbumClustering"

    const-string/jumbo v7, "run end"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method
