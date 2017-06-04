.class public Lcom/sec/android/gallery3d/data/SearchTimeClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "SearchTimeClustering.java"


# static fields
.field private static final CATEGORY:[I

.field private static final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCalendar:[Ljava/util/Calendar;

.field private final mContext:Landroid/content/Context;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    new-instance v0, Lcom/sec/android/gallery3d/data/SearchTimeClustering$1;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/SearchTimeClustering$1;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->sDateComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a045f
        0x7f0a04ed
        0x7f0a023a
        0x7f0a0451
        0x7f0a023b
        0x7f0a044f
        0x7f0a0239
        0x7f0a0452
        0x7f0a023c
        0x7f0a0469
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/util/Calendar;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mItemsList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v4

    const/4 v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, -0x3

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v7

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    aput-object v0, v1, v7

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v7

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->add(II)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v5

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v5

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v6

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v6

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/4 v1, -0x2

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    :cond_9
    return-void
.end method

.method private addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;>;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mItemsList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

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

    :cond_0
    return-object v3
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 12

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {p0, p1, v4, v10}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v4, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_b

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-wide v8, v3, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    :cond_2
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    :cond_3
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    :cond_4
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    :cond_5
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    :cond_6
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/4 v11, 0x5

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    :cond_7
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x6

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/4 v11, 0x6

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    :cond_8
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x7

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    :cond_9
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/4 v11, 0x7

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/16 v11, 0x8

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    :cond_a
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mCalendar:[Ljava/util/Calendar;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    const/16 v11, 0x9

    aget v10, v10, v11

    invoke-direct {p0, v10, v3, v1}, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->addItem(ILcom/sec/android/gallery3d/data/SmallItem;Ljava/util/HashMap;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    const/4 v2, 0x0

    :goto_2
    sget-object v10, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    array-length v10, v10

    if-ge v2, v10, :cond_d

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget-object v11, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->CATEGORY:[I

    aget v11, v11, v2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mNames:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SearchTimeClustering;->mItemsList:Ljava/util/List;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method
