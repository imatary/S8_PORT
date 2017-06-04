.class public Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;
.super Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;
.source "DeleteAggregateDbOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method apply(Landroid/util/Pair;Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;->getOperations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/dboperation/IOperation;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/dboperation/IOperation;->apply()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v4, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v3, v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->generateQueryPattern(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v5, v2, v6, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    monitor-exit v4

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
