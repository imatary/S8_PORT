.class public Lcom/sec/android/gallery3d/data/TimeAlbumClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "TimeAlbumClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/TimeAlbumClustering$DateComparator;
    }
.end annotation


# static fields
.field public static final DAY_MODE:I = 0x1

.field private static final DAY_UINT:J = 0x5265c00L

.field private static final GALLERY_LIMIT_ADDRESS_LEVEL:I = 0x5

.field private static final LOCATION_ADDR_BLANK:Ljava/lang/String; = " "

.field private static final LOCATION_ADDR_DELIMITER:Ljava/lang/String; = "\\|"

.field private static final LOCATION_ADDR_NULL:Ljava/lang/String; = "null"

.field private static final LOCATION_LIMIT_COUNT:I = 0x3

.field public static final MONTH_MODE:I = 0x3

.field private static final SAMSUNG_LINK_PROVIDE_GEO_ADDRESS_LEVEL:I = 0x9

.field private static final TAG:Ljava/lang/String; = "TimeAlbumClustering"

.field public static final WEEK_MODE:I = 0x2

.field public static final YEAR_MODE:I = 0x4

.field private static final mTakeAddressLevel:[Z


# instance fields
.field private currentDate:Ljava/util/Calendar;

.field private isToday:Z

.field private mAddrValues:[[[D

.field private final mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/TimeCluster;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

.field private mCurrentTime:J

.field private mLocations:[Ljava/lang/String;

.field private mNames:[Ljava/lang/String;

.field private mReverseOrder:Z

.field private previousDayValuse:I

.field private previousMonth:I

.field private previousYear:I

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

    sput-object v0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mTakeAddressLevel:[Z

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

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/TimeAlbumClustering$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->sDateComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mReverseOrder:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/TimeCluster;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    iput p2, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mSortByType:I

    return-void
.end method

.method private addToTimeClusterList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/TimeCluster;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayYear:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousYear:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/TimeCluster;->generateCaption(Landroid/content/Context;I)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mReverseOrder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    new-instance v0, Lcom/sec/android/gallery3d/data/TimeCluster;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mReverseOrder:Z

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/TimeCluster;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayYear:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousYear:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/TimeCluster;->generateCaption(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/TimeCluster;->generateCaption(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private computeForAlbumTimeWithTimeTable(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v8, -0x1

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->isToday:Z

    if-nez v5, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousMonth:I

    iput v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayMonth:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousYear:I

    iput v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayYear:I

    :cond_0
    iput v8, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousDayValuse:I

    iput v8, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousMonth:I

    iput v8, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousYear:I

    new-instance v5, Lcom/sec/android/gallery3d/data/TimeCluster;

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mReverseOrder:Z

    invoke-direct {v5, v8}, Lcom/sec/android/gallery3d/data/TimeCluster;-><init>(Z)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/SmallItem;

    if-eqz v0, :cond_3

    iget-wide v6, v0, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrentTime:J

    cmp-long v5, v8, v6

    if-gez v5, :cond_1

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrentTime:J

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrentTime:J

    sub-long/2addr v8, v6

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    long-to-int v3, v8

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayYear:I

    if-ne v5, v2, :cond_4

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousDayValuse:I

    if-eq v3, v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->addToTimeClusterList()V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/TimeCluster;->addItem(Lcom/sec/android/gallery3d/data/SmallItem;)V

    iput v3, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousDayValuse:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousMonth:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousYear:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayYear:I

    add-int/lit8 v8, v2, 0x1

    if-ne v5, v8, :cond_6

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousMonth:I

    if-ne v1, v5, :cond_5

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousMonth:I

    if-ne v1, v5, :cond_2

    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousYear:I

    if-eq v2, v5, :cond_2

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->addToTimeClusterList()V

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousYear:I

    if-eq v2, v5, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->addToTimeClusterList()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->addToTimeClusterList()V

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

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->computeForAlbumTimeWithTimeTable(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->setLocations()V

    return-void
.end method

.method private getLocationNameSetFromSmallItem(Lcom/sec/android/gallery3d/data/TimeCluster;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/TimeCluster;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[D>;)V"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/TimeCluster;->size()I

    move-result v19

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v11, v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/TimeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/SmallItem;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/SmallItem;->getLatitude()D

    move-result-wide v12

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/SmallItem;->getLongitude()D

    move-result-wide v14

    if-eqz v10, :cond_0

    const-wide/16 v24, 0x0

    cmpl-double v24, v12, v24

    if-nez v24, :cond_1

    const-wide/16 v24, 0x0

    cmpl-double v24, v14, v24

    if-nez v24, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    if-nez v21, :cond_2

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v6, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->sortByValue(Ljava/util/Map;)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v9, 0x0

    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v23, v0

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/TimeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/SmallItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/TimeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/SmallItem;->getLatitude()D

    move-result-wide v26

    aput-wide v26, v23, v25

    const/16 v25, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/TimeCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/SmallItem;->getLongitude()D

    move-result-wide v26

    aput-wide v26, v23, v25

    const-string/jumbo v24, "\\|"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/4 v7, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    aget-object v22, v20, v24

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const-string/jumbo v26, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string/jumbo v26, "null"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    :cond_7
    sget-object v26, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mTakeAddressLevel:[Z

    aget-boolean v26, v26, v7

    if-nez v26, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    if-nez v8, :cond_9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/16 v26, 0x5

    move/from16 v0, v26

    if-ne v7, v0, :cond_6

    if-eqz v22, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_a
    const/16 v24, 0x3

    move/from16 v0, v24

    if-lt v9, v0, :cond_4

    :cond_b
    return-void
.end method

.method private initTime(Lcom/sec/android/gallery3d/data/SmallItem;)V
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousMonth:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayMonth:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousYear:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayYear:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrCluster:Lcom/sec/android/gallery3d/data/TimeCluster;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mReverseOrder:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/TimeCluster;->setAddToFirst(Z)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayYear:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayMonth:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrentTime:J

    iget-wide v8, p1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrentTime:J

    sub-long/2addr v0, v8

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousMonth:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayMonth:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousYear:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayYear:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayYear:I

    iget v1, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->todayMonth:I

    invoke-virtual {v7, v0, v1, v10}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrentTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->isToday:Z

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->previousDayValuse:I

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mCurrentTime:J

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->updateTimeTableWithLatestDay(J)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->isToday:Z

    goto :goto_0
.end method

.method private setLocations()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v15, "TimeAlbumClustering"

    const-string/jumbo v16, "setLocations: start"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/TimeCluster;->getHasLocation()Z

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

    const-string/jumbo v15, "TimeAlbumClustering"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "currCluster.size is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/TimeCluster;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v6}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->getLocationNameSetFromSmallItem(Lcom/sec/android/gallery3d/data/TimeCluster;Ljava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v15, 0x1

    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    if-eqz v2, :cond_0

    const-string/jumbo v15, "TimeAlbumClustering"

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

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

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

    invoke-virtual {v10, v15}, Lcom/sec/android/gallery3d/data/TimeCluster;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lcom/sec/android/gallery3d/data/TimeCluster;->setAddrValues([[D)V

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

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

    const-string/jumbo v15, "TimeAlbumClustering"

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

    new-instance v1, Lcom/sec/android/gallery3d/data/TimeAlbumClustering$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering$1;-><init>(Lcom/sec/android/gallery3d/data/TimeAlbumClustering;Ljava/util/Map;)V

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

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    const-string/jumbo v4, "TimeAlbumClustering"

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

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

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
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/TimeCluster;->getItems()Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mAddrValues:[[[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[D

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mAddrValues:[[[D

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getClusterKey(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClusterLocation(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mLocations:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mLocations:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v6, "TimeAlbumClustering"

    const-string/jumbo v7, "run start"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v2, v6}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V

    iget v6, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mSortByType:I

    if-ne v6, v4, :cond_0

    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mReverseOrder:Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->initTime(Lcom/sec/android/gallery3d/data/SmallItem;)V

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->doClustering(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mNames:[Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mLocations:[Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x2

    filled-new-array {v3, v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[D

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mAddrValues:[[[D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/TimeCluster;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mLocations:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/TimeCluster;->getLocation()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mAddrValues:[[[D

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/TimeAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/TimeCluster;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/TimeCluster;->getAddrValues()[[D

    move-result-object v4

    aput-object v4, v5, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v4, "TimeAlbumClustering"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v4, "TimeAlbumClustering"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_1
    :try_start_3
    const-string/jumbo v4, "TimeAlbumClustering"

    const-string/jumbo v5, "run end"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method
