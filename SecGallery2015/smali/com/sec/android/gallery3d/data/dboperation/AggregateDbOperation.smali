.class public abstract Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;
.super Ljava/lang/Object;
.source "AggregateDbOperation.java"


# static fields
.field private static final SQLITE_VARIABLE_LIMIT:I = 0x7


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mObjectIdGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->mObjectIdGroups:Ljava/util/Map;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addId(Landroid/net/Uri;Ljava/lang/String;ILcom/sec/android/gallery3d/data/dboperation/IOperation;)V
    .locals 1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    return-void
.end method

.method public addId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/dboperation/IOperation;)V
    .locals 4

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->mObjectIdGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;-><init>()V

    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;->add(Ljava/lang/String;Lcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;->size()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->apply(Landroid/util/Pair;Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->mObjectIdGroups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->mObjectIdGroups:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method abstract apply(Landroid/util/Pair;Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;)V
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
.end method

.method public execute()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->mObjectIdGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->apply(Landroid/util/Pair;Lcom/sec/android/gallery3d/data/dboperation/IdsWithOperation;)V

    goto :goto_0

    :cond_0
    return-void
.end method
