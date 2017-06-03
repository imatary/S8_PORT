.class public Landroid/icu/impl/IterableComparator;
.super Ljava/lang/Object;
.source "IterableComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final NOCOMPARATOR:Landroid/icu/impl/IterableComparator;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final shorterFirst:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/impl/IterableComparator;

    invoke-direct {v0}, Landroid/icu/impl/IterableComparator;-><init>()V

    sput-object v0, Landroid/icu/impl/IterableComparator;->NOCOMPARATOR:Landroid/icu/impl/IterableComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/IterableComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/IterableComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static compareIterables(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    sget-object v0, Landroid/icu/impl/IterableComparator;->NOCOMPARATOR:Landroid/icu/impl/IterableComparator;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/IterableComparator;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    :goto_0
    return v5

    :cond_0
    iget v5, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    neg-int v5, v5

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget v5, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    return v5

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v5, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    neg-int v5, v5

    :cond_4
    return v5

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    iget v5, p0, Landroid/icu/impl/IterableComparator;->shorterFirst:I

    return v5

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v6, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/icu/impl/IterableComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v6, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-eqz v4, :cond_3

    return v4

    :cond_7
    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/IterableComparator;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method
