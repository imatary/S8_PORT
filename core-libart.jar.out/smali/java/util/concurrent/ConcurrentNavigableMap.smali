.class public interface abstract Ljava/util/concurrent/ConcurrentNavigableMap;
.super Ljava/lang/Object;
.source "ConcurrentNavigableMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract descendingKeySet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract keySet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract navigableKeySet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method
