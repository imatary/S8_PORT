.class public Lorg/apache/commons/imaging/palette/QuantizedPalette;
.super Ljava/lang/Object;
.source "QuantizedPalette.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/Palette;


# instance fields
.field private final precision:I

.field private final straight:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

.field private final subsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;I)V"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->subsets:Ljava/util/List;

    iput p2, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->precision:I

    mul-int/lit8 v6, p2, 0x3

    shl-int v6, v8, v6

    new-array v6, v6, [Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iput-object v6, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->straight:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    invoke-virtual {v4, v0}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->setIndex(I)V

    iget-object v6, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v5, v6, v9

    :goto_1
    iget-object v6, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v9

    if-gt v5, v6, :cond_2

    iget-object v6, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v2, v6, v8

    :goto_2
    iget-object v6, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v8

    if-gt v2, v6, :cond_1

    iget-object v6, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v3, v6, v10

    :goto_3
    iget-object v6, v4, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v6, v6, v10

    if-gt v3, v6, :cond_0

    mul-int/lit8 v6, p2, 0x2

    shl-int v6, v5, v6

    mul-int/lit8 v7, p2, 0x1

    shl-int v7, v2, v7

    or-int/2addr v6, v7

    mul-int/lit8 v7, p2, 0x0

    shl-int v7, v3, v7

    or-int v1, v6, v7

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->straight:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    aput-object v4, v6, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getEntry(I)I
    .locals 2

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->subsets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    return v1
.end method

.method public getPaletteIndex(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->precision:I

    shl-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    iget v2, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->precision:I

    mul-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x18

    shr-int v2, p1, v2

    iget v3, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->precision:I

    shl-int/lit8 v3, v3, 0x1

    shl-int v3, v1, v3

    and-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->precision:I

    mul-int/lit8 v3, v3, 0x2

    rsub-int/lit8 v3, v3, 0x10

    shr-int v3, p1, v3

    iget v4, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->precision:I

    shl-int v4, v1, v4

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shr-int v3, p1, v3

    and-int/2addr v3, v1

    or-int v0, v2, v3

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->straight:[Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->getIndex()I

    move-result v2

    return v2
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/palette/QuantizedPalette;->subsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
