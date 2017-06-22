.class public Lorg/apache/commons/imaging/palette/PaletteFactory;
.super Ljava/lang/Object;
.source "PaletteFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
    }
.end annotation


# static fields
.field public static final COMPONENTS:I = 0x3

.field private static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private divide(Ljava/util/List;I[II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;I[II)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget v0, v6, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    if-nez v5, :cond_2

    move-object v5, v6

    move v4, v0

    goto :goto_0

    :cond_2
    if-le v0, v4, :cond_1

    move-object v5, v6

    move v4, v0

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    :goto_1
    return-object p1

    :cond_4
    invoke-direct {p0, p3, v5, p4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;I)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    # getter for: Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    invoke-static {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # getter for: Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    invoke-static {v1}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, p2, :cond_0

    goto :goto_1

    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v5, v5

    new-array v0, v5, [I

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v8, v8

    move-object/from16 v0, v22

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v5, v5

    new-array v0, v5, [I

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v8, v8

    move-object/from16 v0, v21

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v10, v5, p3

    :goto_0
    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v5, v5, p3

    add-int/lit8 v5, v5, 0x1

    if-eq v10, v5, :cond_0

    aput v10, v22, p3

    aput v10, v21, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->getFrequencyTotal([I[I[II)I

    move-result v19

    add-int v9, v9, v19

    div-int/lit8 v5, v23, 0x2

    if-lt v9, v5, :cond_3

    :cond_0
    sub-int v15, v9, v19

    add-int/lit8 v16, v10, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/imaging/palette/PaletteFactory;->finishDivision(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    move-result-object v17

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-direct/range {v11 .. v16}, Lorg/apache/commons/imaging/palette/PaletteFactory;->finishDivision(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    move-result-object v18

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    if-eqz v17, :cond_1

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v18, :cond_2

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v20

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;I)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
    .locals 24

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divideSubset2([ILorg/apache/commons/imaging/palette/ColorSpaceSubset;II)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v10, 0x0

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    # getter for: Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    invoke-static {v11}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$000(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v14

    # getter for: Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    invoke-static {v11}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->access$100(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    move-result-object v18

    iget v6, v14, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    move-object/from16 v0, v18

    iget v7, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    sub-int v19, v6, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v20, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v16, v20, v22

    if-nez v10, :cond_1

    move-object v10, v11

    move-wide/from16 v8, v16

    goto :goto_0

    :cond_1
    cmpg-double v19, v16, v8

    if-gez v19, :cond_0

    move-object v10, v11

    move-wide/from16 v8, v16

    goto :goto_0

    :cond_2
    return-object v10
.end method

.method private finishDivision(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;IIII)Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v5, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    iget-object v7, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v7, v7, p2

    if-lt p5, v7, :cond_0

    iget-object v7, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v7, v7, p2

    if-lt p5, v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    if-lt p4, v9, :cond_0

    if-ge p4, v5, :cond_0

    sub-int v1, v5, p4

    if-lt v1, v9, :cond_0

    if-ge v1, v5, :cond_0

    iget-object v6, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v6, v6

    new-array v4, v6, [I

    iget-object v6, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    iget-object v7, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    array-length v7, v7

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v6, v6

    new-array v3, v6, [I

    iget-object v6, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    iget-object v7, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    array-length v7, v7

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p5, v3, p2

    add-int/lit8 v6, p5, 0x1

    aput v6, v4, p2

    new-instance v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    iget-object v6, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    invoke-direct {v0, p4, p3, v6, v3}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II[I[I)V

    new-instance v2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    sub-int v6, v5, p4

    iget-object v7, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    invoke-direct {v2, v6, p3, v4, v7}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II[I[I)V

    new-instance v6, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;

    invoke-direct {v6, v0, v2}, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;-><init>(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;Lorg/apache/commons/imaging/palette/ColorSpaceSubset;)V

    goto :goto_0
.end method

.method private getFrequencyTotal([I[I[II)I
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    aget v1, p2, v10

    :goto_0
    aget v7, p3, v10

    if-gt v1, v7, :cond_2

    mul-int/lit8 v7, p4, 0x2

    shl-int v0, v1, v7

    aget v3, p2, v9

    :goto_1
    aget v7, p3, v9

    if-gt v3, v7, :cond_1

    mul-int/lit8 v7, p4, 0x1

    shl-int v2, v3, v7

    aget v5, p2, v8

    :goto_2
    aget v7, p3, v8

    if-gt v5, v7, :cond_0

    or-int v7, v0, v2

    or-int v4, v7, v5

    aget v7, p1, v4

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method private pixelToQuantizationTableIndex(II)I
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x1

    shl-int/2addr v4, p2

    add-int/lit8 v1, v4, -0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 p1, p1, 0x8

    rsub-int/lit8 v4, p2, 0x8

    shr-int/2addr v3, v4

    shl-int v4, v2, p2

    and-int v5, v3, v1

    or-int v2, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public countTransparentColors(Ljava/awt/image/BufferedImage;)I
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/4 v2, -0x1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    invoke-virtual {p1, v6, v7}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    shr-int/lit8 v9, v4, 0x18

    and-int/lit16 v0, v9, 0xff

    const/16 v9, 0xff

    if-ge v0, v9, :cond_2

    if-gez v2, :cond_3

    move v2, v4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    if-eq v4, v2, :cond_2

    const/4 v8, 0x2

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-ltz v2, :cond_0

    const/4 v8, 0x1

    goto :goto_0
.end method

.method public countTrasparentColors([I)I
    .locals 7

    const/4 v2, -0x1

    move-object v1, p1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget v5, v1, v3

    shr-int/lit8 v6, v5, 0x18

    and-int/lit16 v0, v6, 0xff

    const/16 v6, 0xff

    if-ge v0, v6, :cond_0

    if-gez v2, :cond_1

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eq v5, v2, :cond_0

    const/4 v6, 0x2

    :goto_1
    return v6

    :cond_2
    if-gez v2, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;)Z
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;I)Z

    move-result v0

    return v0
.end method

.method public hasTransparency(Ljava/awt/image/BufferedImage;I)Z
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-virtual {p1, v4, v5}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v1

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v0, v7, 0xff

    if-ge v0, p2, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public isGrayscale(Ljava/awt/image/BufferedImage;)Z
    .locals 11

    const/4 v8, 0x1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/4 v9, 0x6

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v10

    if-ne v9, v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    invoke-virtual {p1, v6, v7}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    shr-int/lit8 v9, v0, 0x10

    and-int/lit16 v4, v9, 0xff

    shr-int/lit8 v9, v0, 0x8

    and-int/lit16 v2, v9, 0xff

    shr-int/lit8 v9, v0, 0x0

    and-int/lit16 v1, v9, 0xff

    if-ne v4, v2, :cond_2

    if-eq v4, v1, :cond_3

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public makeExactRgbPaletteFancy(Ljava/awt/image/BufferedImage;)Lorg/apache/commons/imaging/palette/Palette;
    .locals 26

    const/high16 v25, 0x200000

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v24

    if-ge v0, v10, :cond_1

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v3

    const v25, 0x1fffff

    and-int v21, v25, v3

    shr-int/lit8 v25, v3, 0x15

    and-int/lit8 v11, v25, 0x7

    const/16 v25, 0x1

    shl-int v18, v25, v11

    aget-byte v25, v20, v21

    or-int v25, v25, v18

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v20, v21

    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    move-object/from16 v4, v20

    array-length v15, v4

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_2

    aget-byte v9, v4, v13

    and-int/lit16 v8, v9, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->bitCount(I)I

    move-result v25

    add-int v7, v7, v25

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    new-array v6, v7, [I

    const/16 v16, 0x0

    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_4

    aget-byte v25, v20, v12

    move/from16 v0, v25

    and-int/lit16 v8, v0, 0xff

    const/16 v18, 0x80

    const/4 v14, 0x0

    move/from16 v17, v16

    :goto_4
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ge v14, v0, :cond_3

    and-int v5, v8, v18

    ushr-int/lit8 v18, v18, 0x1

    if-lez v5, :cond_5

    rsub-int/lit8 v25, v14, 0x7

    shl-int/lit8 v25, v25, 0x15

    or-int v19, v12, v25

    add-int/lit8 v16, v17, 0x1

    aput v19, v6, v17

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v17, v16

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v17

    goto :goto_3

    :cond_4
    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    new-instance v25, Lorg/apache/commons/imaging/palette/SimplePalette;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    return-object v25

    :cond_5
    move/from16 v16, v17

    goto :goto_5
.end method

.method public makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;
    .locals 12

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v1, :cond_2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    invoke-virtual {p1, v9, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    const v11, 0xffffff

    and-int v6, v11, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v11

    if-le v11, p2, :cond_0

    const/4 v11, 0x0

    :goto_2
    return-object v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v11

    new-array v5, v11, [I

    const/4 v3, 0x0

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v4, v3, 0x1

    aput v6, v5, v3

    move v3, v4

    goto :goto_3

    :cond_3
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    new-instance v11, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {v11, v5}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    goto :goto_2
.end method

.method public makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;
    .locals 19

    const/4 v8, 0x6

    const/16 v12, 0x12

    const/high16 v13, 0x40000

    const/high16 v17, 0x40000

    move/from16 v0, v17

    new-array v11, v0, [I

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    mul-int v17, v14, v5

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;-><init>(II)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v5, :cond_1

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    const/16 v17, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->pixelToQuantizationTableIndex(II)I

    move-result v7

    aget v17, v11, v7

    add-int/lit8 v17, v17, 0x1

    aput v17, v11, v7

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_1
    const/16 v17, 0x6

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v10, v1, v11, v2}, Lorg/apache/commons/imaging/palette/PaletteFactory;->divide(Ljava/util/List;I[II)Ljava/util/List;

    move-result-object v10

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    invoke-virtual {v9, v11}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->setAverageRGB([I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    sget-object v17, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->RGB_COMPARATOR:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v17, Lorg/apache/commons/imaging/palette/QuantizedPalette;

    const/16 v18, 0x6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lorg/apache/commons/imaging/palette/QuantizedPalette;-><init>(Ljava/util/List;I)V

    return-object v17
.end method

.method public makeQuantizedRgbaPalette(Ljava/awt/image/BufferedImage;ZI)Lorg/apache/commons/imaging/palette/Palette;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v0}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;-><init>(Z)V

    new-instance v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;-><init>()V

    invoke-virtual {v2, p1, p3, v0, v1}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->process(Ljava/awt/image/BufferedImage;ILorg/apache/commons/imaging/palette/MedianCut;Z)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
