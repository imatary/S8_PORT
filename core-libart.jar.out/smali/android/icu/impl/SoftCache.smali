.class public abstract Landroid/icu/impl/SoftCache;
.super Landroid/icu/impl/CacheBase;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/CacheBase",
        "<TK;TV;TD;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/CacheBase;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TD;)TV;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v3, v1, Landroid/icu/impl/CacheValue;

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/icu/impl/CacheValue;

    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->isNull()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    :goto_0
    iget-object v3, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    return-object v2

    :cond_4
    invoke-static {v2}, Landroid/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;

    move-result-object v1

    goto :goto_0

    :cond_5
    instance-of v3, v1, Landroid/icu/impl/CacheValue;

    if-nez v3, :cond_6

    return-object v1

    :cond_6
    move-object v0, v1

    check-cast v0, Landroid/icu/impl/CacheValue;

    invoke-virtual {v0, v2}, Landroid/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method
