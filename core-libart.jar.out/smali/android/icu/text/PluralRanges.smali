.class public final Landroid/icu/text/PluralRanges;
.super Ljava/lang/Object;
.source "PluralRanges.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralRanges$Matrix;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/PluralRanges;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/PluralRanges;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private explicit:[Z

.field private volatile isFrozen:Z

.field private matrix:Landroid/icu/text/PluralRanges$Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/PluralRanges$Matrix;

    invoke-direct {v0}, Landroid/icu/text/PluralRanges$Matrix;-><init>()V

    iput-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    return-void
.end method


# virtual methods
.method public add(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v10, 0x1

    iget-boolean v3, p0, Landroid/icu/text/PluralRanges;->isFrozen:Z

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    :cond_0
    iget-object v3, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v4

    aput-boolean v10, v3, v4

    if-nez p1, :cond_3

    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v1, v5, v4

    if-nez p2, :cond_1

    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v7

    array-length v8, v7

    move v3, v2

    :goto_1
    if-ge v3, v8, :cond_2

    aget-object v0, v7, v3

    iget-object v9, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v9, v1, v0, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v7

    aput-boolean v10, v3, v7

    iget-object v3, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v3, v1, p2, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object v3, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v4

    aput-boolean v10, v3, v4

    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v0, v3, v2

    iget-object v5, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v5, p1, v0, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v3

    aput-boolean v10, v2, v3

    iget-object v2, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v3

    aput-boolean v10, v2, v3

    iget-object v2, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    :cond_5
    return-void
.end method

.method public cloneAsThawed()Landroid/icu/text/PluralRanges;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/text/PluralRanges;

    invoke-direct {v0}, Landroid/icu/text/PluralRanges;-><init>()V

    iget-object v1, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, Landroid/icu/text/PluralRanges;->explicit:[Z

    iget-object v1, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v1}, Landroid/icu/text/PluralRanges$Matrix;->clone()Landroid/icu/text/PluralRanges$Matrix;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/PluralRanges;->cloneAsThawed()Landroid/icu/text/PluralRanges;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Landroid/icu/text/PluralRanges;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    iget-object v1, p1, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRanges$Matrix;->compareTo(Landroid/icu/text/PluralRanges$Matrix;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/PluralRanges;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges;->compareTo(Landroid/icu/text/PluralRanges;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/icu/text/PluralRanges;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/text/PluralRanges;

    iget-object v2, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    iget-object v3, v0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v2, v3}, Landroid/icu/text/PluralRanges$Matrix;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    iget-object v2, v0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public freeze()Landroid/icu/text/PluralRanges;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/PluralRanges;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/PluralRanges;->freeze()Landroid/icu/text/PluralRanges;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v0}, Landroid/icu/text/PluralRanges$Matrix;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExplicit(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExplicitlySet(Landroid/icu/impl/StandardPlural;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isFrozen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/icu/text/PluralRanges;->isFrozen:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {v0}, Landroid/icu/text/PluralRanges$Matrix;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
