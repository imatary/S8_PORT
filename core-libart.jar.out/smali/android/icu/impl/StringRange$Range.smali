.class final Landroid/icu/impl/StringRange$Range;
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
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/impl/StringRange$Range;",
        ">;"
    }
.end annotation


# instance fields
.field max:I

.field min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    iput p2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/impl/StringRange$Range;)I
    .locals 3

    iget v1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    iget v2, p1, Landroid/icu/impl/StringRange$Range;->min:I

    sub-int v0, v1, v2

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/icu/impl/StringRange$Range;->max:I

    iget v2, p1, Landroid/icu/impl/StringRange$Range;->max:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/impl/StringRange$Range;

    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    check-cast p1, Landroid/icu/impl/StringRange$Range;

    invoke-virtual {p0, p1}, Landroid/icu/impl/StringRange$Range;->compareTo(Landroid/icu/impl/StringRange$Range;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/StringRange$Range;->min:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/impl/StringRange$Range;->max:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/icu/impl/StringRange$Range;->min:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/StringRange$Range;->min:I

    iget v2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/StringRange$Range;->max:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
