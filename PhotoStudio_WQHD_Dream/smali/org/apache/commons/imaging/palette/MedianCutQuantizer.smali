.class public Lorg/apache/commons/imaging/palette/MedianCutQuantizer;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# instance fields
.field private final ignoreAlpha:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    return-void
.end method

.method private groupColors1(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/palette/ColorCount;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v11

    new-array v5, v3, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v11, :cond_1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p1

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v3, :cond_3

    aget v8, v5, v12

    iget-boolean v0, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0xffffff

    and-int/2addr v8, v0

    :cond_0
    and-int v8, v8, p3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/imaging/palette/ColorCount;

    if-nez v9, :cond_2

    new-instance v9, Lorg/apache/commons/imaging/palette/ColorCount;

    invoke-direct {v9, v8}, Lorg/apache/commons/imaging/palette/ColorCount;-><init>(I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    const/4 v10, 0x0

    :cond_1
    return-object v10

    :cond_2
    iget v0, v9, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/palette/ColorCount;",
            ">;"
        }
    .end annotation

    const v2, 0x7fffffff

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_1

    const/16 v4, 0xff

    shl-int/2addr v4, v0

    and-int/lit16 v1, v4, 0xff

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v4, v1

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x18

    or-int v1, v4, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mask("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    const v4, 0x7fffffff

    invoke-direct {p0, p1, v4, v1}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->groupColors1(Ljava/awt/image/BufferedImage;II)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/Error;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public process(Ljava/awt/image/BufferedImage;ILorg/apache/commons/imaging/palette/MedianCut;Z)Lorg/apache/commons/imaging/palette/Palette;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->groupColors(Ljava/awt/image/BufferedImage;I)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v6

    move/from16 v0, p2

    if-gt v6, v0, :cond_3

    if-eqz p4, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lossless palette: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_0
    new-array v8, v6, [I

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/palette/ColorCount;

    iget v11, v1, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    aput v11, v8, v7

    iget-boolean v11, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    if-eqz v11, :cond_1

    aget v11, v8, v7

    const/high16 v12, -0x1000000

    or-int/2addr v11, v12

    aput v11, v8, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v11, Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-direct {v11, v8}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    :goto_1
    return-object v11

    :cond_3
    if-eqz p4, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "discrete colors: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/apache/commons/imaging/palette/ColorGroup;

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v12, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v0, p2

    if-ge v11, v0, :cond_6

    iget-boolean v11, p0, Lorg/apache/commons/imaging/palette/MedianCutQuantizer;->ignoreAlpha:Z

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v11}, Lorg/apache/commons/imaging/palette/MedianCut;->performNextMedianCut(Ljava/util/List;Z)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-eqz p4, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "palette size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_7
    new-array v8, v9, [I

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_9

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/palette/ColorGroup;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/palette/ColorGroup;->getMedianValue()I

    move-result v11

    aput v11, v8, v7

    iput v7, v3, Lorg/apache/commons/imaging/palette/ColorGroup;->paletteIndex:I

    iget-object v11, v3, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_8

    new-instance v11, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "empty color_group: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    if-le v9, v6, :cond_a

    new-instance v11, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v12, "palette_size > discrete_colors"

    invoke-direct {v11, v12}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_a
    new-instance v11, Lorg/apache/commons/imaging/palette/MedianCutPalette;

    invoke-direct {v11, v10, v8}, Lorg/apache/commons/imaging/palette/MedianCutPalette;-><init>(Lorg/apache/commons/imaging/palette/ColorGroup;[I)V

    goto/16 :goto_1
.end method
