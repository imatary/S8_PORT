.class final Ljava/util/concurrent/ConcurrentHashMap$ValuesView;
.super Ljava/util/concurrent/ConcurrentHashMap$CollectionView;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValuesView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$CollectionView",
        "<TK;TV;TV;>;",
        "Ljava/util/Collection",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap$CollectionView;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v3, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Traverser;

    array-length v3, v2

    array-length v4, v2

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;III)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$Traverser;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    const/4 v3, 0x0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIILjava/util/concurrent/ConcurrentHashMap;)V

    return-object v0

    :cond_0
    array-length v2, v1

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->removeValueIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ValuesView;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->sumCount()J

    move-result-wide v8

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap;->table:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;

    cmp-long v4, v8, v6

    if-gez v4, :cond_1

    :goto_1
    const/4 v4, 0x0

    move v5, v3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$ValueSpliterator;-><init>([Ljava/util/concurrent/ConcurrentHashMap$Node;IIIJ)V

    return-object v1

    :cond_0
    array-length v3, v2

    goto :goto_0

    :cond_1
    move-wide v6, v8

    goto :goto_1
.end method
