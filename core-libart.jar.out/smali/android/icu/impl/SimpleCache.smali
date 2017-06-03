.class public Landroid/icu/impl/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Landroid/icu/impl/ICUCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/icu/impl/ICUCache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x10


# instance fields
.field private volatile cacheRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private capacity:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/SimpleCache;->type:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/SimpleCache;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    iput v1, p0, Landroid/icu/impl/SimpleCache;->type:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p1, p0, Landroid/icu/impl/SimpleCache;->type:I

    :cond_0
    if-lez p2, :cond_1

    iput p2, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v2
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_0
    if-nez v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    iget v3, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Landroid/icu/impl/SimpleCache;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
