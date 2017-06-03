.class final Landroid/icu/text/PluralRanges$Matrix;
.super Ljava/lang/Object;
.source "PluralRanges.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Matrix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/PluralRanges$Matrix;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v1, Landroid/icu/impl/StandardPlural;->COUNT:I

    sget v2, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Landroid/icu/text/PluralRanges$Matrix;
    .locals 2

    new-instance v0, Landroid/icu/text/PluralRanges$Matrix;

    invoke-direct {v0}, Landroid/icu/text/PluralRanges$Matrix;-><init>()V

    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/PluralRanges$Matrix;->clone()Landroid/icu/text/PluralRanges$Matrix;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Landroid/icu/text/PluralRanges$Matrix;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    aget-byte v2, v2, v1

    iget-object v3, p1, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    aget-byte v3, v3, v1

    sub-int v0, v2, v3

    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges$Matrix;->compareTo(Landroid/icu/text/PluralRanges$Matrix;)I

    move-result v0

    return v0
.end method

.method endSame(Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    sget-object v4, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/StandardPlural;

    invoke-virtual {p0, v2, p1}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_0

    return-object v5

    :cond_2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/icu/text/PluralRanges$Matrix;

    if-nez v1, :cond_0

    return v0

    :cond_0
    check-cast p1, Landroid/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges$Matrix;->compareTo(Landroid/icu/text/PluralRanges$Matrix;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;
    .locals 4

    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    sget v3, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v3

    add-int/2addr v2, v3

    aget-byte v0, v1, v2

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/StandardPlural;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v1, 0x25

    iget-object v3, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method set(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .locals 3

    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    sget v2, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    if-nez p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    aput-byte v0, v1, v2

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method setIfNew(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .locals 4

    iget-object v1, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    sget v3, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v3

    add-int/2addr v2, v3

    aget-byte v0, v1, v2

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Previously set value for <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Landroid/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    sget v3, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v3

    add-int/2addr v3, v1

    if-nez p3, :cond_1

    const/4 v1, -0x1

    :goto_0
    aput-byte v1, v2, v3

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    goto :goto_0
.end method

.method startSame(Landroid/icu/impl/StandardPlural;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/impl/StandardPlural;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/StandardPlural;",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/StandardPlural;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/icu/impl/StandardPlural;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v4, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/StandardPlural;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-eq v2, v3, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v0, v7, v6

    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v9

    array-length v10, v9

    move v4, v5

    :goto_1
    if-ge v4, v10, :cond_1

    aget-object v1, v9, v4

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " & "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " \u2192 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ";\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
