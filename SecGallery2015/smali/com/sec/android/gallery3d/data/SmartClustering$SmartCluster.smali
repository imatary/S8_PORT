.class Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;
.super Ljava/lang/Object;
.source "SmartClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/SmartClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartCluster"
.end annotation


# static fields
.field private static final CLUSTER_TYPE_DAY:I = 0x1

.field private static final CLUSTER_TYPE_MOMENT:I = 0x0

.field private static final CLUSTER_TYPE_MONTH:I = 0x2


# instance fields
.field private mAddrValues:[[D

.field private mClusterId:I

.field private final mClusterType:I

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

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/SmartClustering;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/SmartClustering;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->this$0:Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mAddrValues:[[D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    iput p2, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mClusterType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/SmartClustering;ILcom/sec/android/gallery3d/data/SmartClustering$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;-><init>(Lcom/sec/android/gallery3d/data/SmartClustering;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->setClusterId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->setLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Lcom/sec/android/gallery3d/data/SmallItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->addItem(Lcom/sec/android/gallery3d/data/SmallItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)[[D
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getAddrValues()[[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private addItem(Lcom/sec/android/gallery3d/data/SmallItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAddrValues()[[D
    .locals 18

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mClusterType:I

    if-nez v2, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->TABLE_URI__MOMENT_CLUSTER:Landroid/net/Uri;

    # getter for: Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_MOMENT_LOCATION:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/gallery3d/data/SmartClustering;->access$900()[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "clusterId"

    :goto_0
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mClusterId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->this$0:Lcom/sec/android/gallery3d/data/SmartClustering;

    # getter for: Lcom/sec/android/gallery3d/data/SmartClustering;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/SmartClustering;->access$1200(Lcom/sec/android/gallery3d/data/SmartClustering;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "SmartClustering"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v5, 0x2

    filled-new-array {v2, v5}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mAddrValues:[[D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mAddrValues:[[D

    const/4 v5, 0x0

    aget-object v2, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    aput-wide v6, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mAddrValues:[[D

    const/4 v5, 0x0

    aget-object v2, v2, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    aput-wide v6, v2, v5

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string/jumbo v2, "SmartClustering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Performance : Location Query duration ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v12, v16

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], lattitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mAddrValues:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mAddrValues:[[D

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mAddrValues:[[D

    return-object v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mClusterType:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->TABLE_URI__DAY_MONTH_CLUSTER:Landroid/net/Uri;

    # getter for: Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_DAY_LOCATION:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/gallery3d/data/SmartClustering;->access$1000()[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "dayId"

    goto/16 :goto_0

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->TABLE_URI__DAY_MONTH_CLUSTER:Landroid/net/Uri;

    # getter for: Lcom/sec/android/gallery3d/data/SmartClustering;->PROJECTION_FOR_MONTH_LOCATION:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/gallery3d/data/SmartClustering;->access$1100()[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "monthId"

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    const-string/jumbo v2, "SmartClustering"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private getEndTime()J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getStartTime()J
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-wide v2, v1, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private setClusterId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mClusterId:I

    return-void
.end method

.method private setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mLocation:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemsPath()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-object v3, v3, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->mName:Ljava/lang/String;

    return-object v0
.end method
