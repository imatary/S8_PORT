.class final Landroid/icu/impl/StringRange$Ranges;
.super Ljava/lang/Object;
.source "StringRange.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/StringRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Ranges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/StringRange$Ranges;",
        ">;"
    }
.end annotation


# instance fields
.field private final ranges:[Landroid/icu/impl/StringRange$Range;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [Landroid/icu/impl/StringRange$Range;

    iput-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    new-instance v3, Landroid/icu/impl/StringRange$Range;

    aget v4, v0, v1

    aget v5, v0, v1

    invoke-direct {v3, v4, v5}, Landroid/icu/impl/StringRange$Range;-><init>(II)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/StringRange$Ranges;)I
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v2, v2

    iget-object v3, p1, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v3, v3

    sub-int v0, v2, v3

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, v1

    iget-object v3, p1, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/impl/StringRange$Ranges;

    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Ranges;->compareTo(Landroid/icu/impl/StringRange$Ranges;)I

    move-result v0

    return v0
.end method

.method public end(Z)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/icu/impl/StringRange$Ranges;->firstDifference()I

    move-result v0

    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v3, v3

    if-ne v0, v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    move v1, v0

    :goto_0
    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/icu/impl/StringRange$Range;->max:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public firstDifference()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/StringRange$Range;->min:I

    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/icu/impl/StringRange$Range;->max:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v1, v1

    return v1
.end method

.method public merge(ILandroid/icu/impl/StringRange$Ranges;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/StringRange$Range;->max:I

    iget-object v2, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/icu/impl/StringRange$Range;->min:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    return v3

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v1, v1, v0

    iget-object v2, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/icu/impl/StringRange$Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v1, v1, p1

    iget-object v2, p2, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/icu/impl/StringRange$Range;->max:I

    iput v2, v1, Landroid/icu/impl/StringRange$Range;->max:I

    const/4 v1, 0x1

    return v1
.end method

.method public size()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public start()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/StringRange$Ranges;->ranges:[Landroid/icu/impl/StringRange$Range;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/icu/impl/StringRange$Range;->min:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/icu/impl/StringRange$Ranges;->start()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/icu/impl/StringRange$Ranges;->end(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
