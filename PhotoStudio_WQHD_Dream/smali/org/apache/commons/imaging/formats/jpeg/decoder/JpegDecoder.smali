.class public Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegDecoder.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final block:[F

.field private final blockInt:[I

.field private final huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

.field private final huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

.field private image:Ljava/awt/image/BufferedImage;

.field private imageReadException:Lorg/apache/commons/imaging/ImageReadException;

.field private ioException:Ljava/io/IOException;

.field private final quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

.field private final scaledQuantizationTables:[[F

.field private sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

.field private sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

.field private final zz:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x40

    const/4 v1, 0x4

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    new-array v0, v1, [Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    new-array v0, v1, [Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    new-array v0, v1, [Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    new-array v0, v1, [[F

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->scaledQuantizationTables:[[F

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->blockInt:[I

    new-array v0, v2, [F

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    return-void
.end method

.method private allocateMCUMemory()[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    new-array v4, v6, [Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    invoke-virtual {v6, v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v6, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v6

    iget v6, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    iget v7, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->scanComponentSelector:I

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-virtual {v6, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "Invalid component"

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    iget v6, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    mul-int/lit8 v6, v6, 0x8

    iget v7, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v1, v6, v7}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;-><init>(II)V

    aput-object v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method private decode(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->nextBit()I

    move-result v0

    :goto_0
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getMaxCode()[I

    move-result-object v3

    aget v3, v3, v1

    if-le v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->nextBit()I

    move-result v4

    or-int v0, v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getValPtr()[I

    move-result-object v3

    aget v2, v3, v1

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getMinCode()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int v3, v0, v3

    add-int/2addr v2, v3

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->getHuffVal()[I

    move-result-object v3

    aget v3, v3, v2

    return v3
.end method

.method private extend(II)I
    .locals 3

    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x1

    shl-int v0, v1, v2

    :goto_0
    if-ge p1, v0, :cond_0

    const/4 v1, -0x1

    shl-int/2addr v1, p2

    add-int/lit8 v0, v1, 0x1

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static fastRound(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private readMCU(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;[I[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v7, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    move-result-object v17

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->scanComponentSelector:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_2

    new-instance v27, Lorg/apache/commons/imaging/ImageReadException;

    const-string v28, "Invalid component"

    invoke-direct/range {v27 .. v28}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    aget-object v6, p3, v7

    const/16 v25, 0x0

    :goto_2
    iget v0, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    const/16 v23, 0x0

    :goto_3
    iget v0, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->dcCodingTableSelector:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->decode(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->receive(ILorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->extend(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v29, p2, v7

    add-int v29, v29, v3

    aput v29, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    aput v27, p2, v7

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->acCodingTableSelector:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->decode(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;)I

    move-result v14

    and-int/lit8 v21, v14, 0xf

    shr-int/lit8 v13, v14, 0x4

    move v11, v13

    if-nez v21, :cond_3

    const/16 v27, 0xf

    move/from16 v0, v27

    if-ne v11, v0, :cond_4

    add-int/lit8 v9, v9, 0x10

    goto :goto_4

    :cond_3
    add-int/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->receive(ILorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;)I

    move-result v28

    aput v28, v27, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    move-object/from16 v28, v0

    aget v28, v28, v9

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->extend(II)I

    move-result v28

    aput v28, v27, v9

    const/16 v27, 0x3f

    move/from16 v0, v27

    if-ne v9, v0, :cond_5

    :cond_4
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    shl-int v18, v27, v28

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    move/from16 v28, v0

    shl-int v27, v27, v28

    add-int/lit8 v10, v27, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->scaledQuantizationTables:[[F

    move-object/from16 v27, v0

    iget v0, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->quantTabDestSelector:I

    move/from16 v28, v0

    aget-object v16, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->zz:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->blockInt:[I

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lorg/apache/commons/imaging/formats/jpeg/decoder/ZigZag;->zigZagToBlock([I[I)V

    const/4 v8, 0x0

    :goto_5
    const/16 v27, 0x40

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->blockInt:[I

    move-object/from16 v28, v0

    aget v28, v28, v8

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aget v29, v16, v8

    mul-float v28, v28, v29

    aput v28, v27, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->inverseDCT8x8([F)V

    mul-int/lit8 v27, v25, 0x8

    mul-int/lit8 v27, v27, 0x8

    iget v0, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move/from16 v28, v0

    mul-int v27, v27, v28

    mul-int/lit8 v28, v23, 0x8

    add-int v4, v27, v28

    const/16 v19, 0x0

    const/16 v26, 0x0

    :goto_6
    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    const/16 v24, 0x0

    move/from16 v20, v19

    :goto_7
    const/16 v27, 0x8

    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->block:[F

    move-object/from16 v27, v0

    add-int/lit8 v19, v20, 0x1

    aget v15, v27, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v15, v15, v27

    const/16 v27, 0x0

    cmpg-float v27, v15, v27

    if-gez v27, :cond_7

    const/4 v12, 0x0

    :goto_8
    iget-object v0, v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    move-object/from16 v27, v0

    add-int v28, v4, v24

    aput v12, v27, v28

    add-int/lit8 v24, v24, 0x1

    move/from16 v20, v19

    goto :goto_7

    :cond_7
    int-to-float v0, v10

    move/from16 v27, v0

    cmpl-float v27, v15, v27

    if-lez v27, :cond_8

    move v12, v10

    goto :goto_8

    :cond_8
    invoke-static {v15}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->fastRound(F)I

    move-result v12

    goto :goto_8

    :cond_9
    iget v0, v5, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x8

    add-int v4, v4, v27

    add-int/lit8 v26, v26, 0x1

    move/from16 v19, v20

    goto :goto_6

    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    :cond_b
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private receive(ILorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v2, v1, 0x1

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->nextBit()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method private rescaleMCU([Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;II[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V
    .locals 15

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v10, v0

    if-ge v4, v10, :cond_5

    aget-object v1, p1, v4

    iget v10, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    move/from16 v0, p2

    if-ne v10, v0, :cond_1

    iget v10, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    move/from16 v0, p3

    if-ne v10, v0, :cond_1

    iget-object v10, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    const/4 v11, 0x0

    aget-object v12, p4, v4

    iget-object v12, v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    const/4 v13, 0x0

    mul-int v14, p2, p3

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v10, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    div-int v3, p2, v10

    iget v10, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    div-int v7, p3, v10

    const/4 v10, 0x2

    if-ne v3, v10, :cond_3

    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_1
    iget v10, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->height:I

    if-ge v9, v10, :cond_0

    const/4 v8, 0x0

    :goto_2
    move/from16 v0, p2

    if-ge v8, v0, :cond_2

    iget-object v10, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    shr-int/lit8 v11, v8, 0x1

    add-int/2addr v11, v6

    aget v5, v10, v11

    aget-object v10, p4, v4

    iget-object v10, v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v11, v2, v8

    aput v5, v10, v11

    aget-object v10, p4, v4

    iget-object v10, v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v11, v2, p2

    add-int/2addr v11, v8

    aput v5, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    iget v10, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    add-int/2addr v6, v10

    mul-int/lit8 v10, p2, 0x2

    add-int/2addr v2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_3
    move/from16 v0, p3

    if-ge v9, v0, :cond_0

    const/4 v8, 0x0

    :goto_4
    move/from16 v0, p2

    if-ge v8, v0, :cond_4

    aget-object v10, p4, v4

    iget-object v10, v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    add-int v11, v2, v8

    iget-object v12, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    div-int v13, v9, v7

    iget v14, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->width:I

    mul-int/2addr v13, v14

    div-int v14, v8, v3

    add-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    add-int v2, v2, p2

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public decode(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->ioException:Ljava/io/IOException;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->ioException:Ljava/io/IOException;

    throw v1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->image:Ljava/awt/image/BufferedImage;

    return-object v1
.end method

.method public visitSOS(I[B[B)V
    .locals 39

    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string v34, "segmentLength"

    const-string v35, "Not a Valid JPEG File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v23

    const-string v34, "SosSegment"

    add-int/lit8 v35, v23, -0x2

    const-string v36, "Not a Valid JPEG File"

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v24

    new-instance v34, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    move-object/from16 v0, v34

    move/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;-><init>(I[B)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sosSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;

    const/4 v12, 0x0

    const/16 v26, 0x0

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v14, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    move/from16 v34, v0

    move/from16 v0, v26

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v13, v12, 0x8

    mul-int/lit8 v27, v26, 0x8

    new-instance v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    move/from16 v34, v0

    add-int v34, v34, v13

    add-int/lit8 v34, v34, -0x1

    div-int v30, v34, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    move/from16 v34, v0

    add-int v34, v34, v27

    add-int/lit8 v34, v34, -0x1

    div-int v33, v34, v27

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->allocateMCUMemory()[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    move-object/from16 v22, v0

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v14, v0, :cond_1

    new-instance v34, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-direct {v0, v13, v1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;-><init>(II)V

    aput-object v34, v22, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2

    new-instance v8, Ljava/awt/image/DirectColorModel;

    const/16 v34, 0x18

    const/high16 v35, 0xff0000

    const v36, 0xff00

    const/16 v37, 0xff

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v8, v0, v1, v2, v3}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    fill-array-data v37, :array_0

    const/16 v38, 0x0

    invoke-static/range {v34 .. v38}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v20

    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v9

    const/16 v31, 0x0

    :goto_3
    mul-int v34, v27, v33

    move/from16 v0, v31

    move/from16 v1, v34

    if-ge v0, v1, :cond_9

    const/16 v28, 0x0

    :goto_4
    mul-int v34, v13, v30

    move/from16 v0, v28

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->readMCU(Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;[I[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v27

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v13, v2, v3}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->rescaleMCU([Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;II[Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;)V

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    move/from16 v34, v0

    mul-int v34, v34, v31

    add-int v10, v34, v28

    const/16 v32, 0x0

    :goto_5
    move/from16 v0, v32

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    add-int v34, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    const/16 v29, 0x0

    :goto_6
    move/from16 v0, v29

    if-ge v0, v13, :cond_6

    add-int v34, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_4

    const/16 v34, 0x0

    aget-object v34, v22, v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    move-object/from16 v34, v0

    add-int v35, v25, v29

    aget v6, v34, v35

    const/16 v34, 0x1

    aget-object v34, v22, v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    move-object/from16 v34, v0

    add-int v35, v25, v29

    aget v4, v34, v35

    const/16 v34, 0x2

    aget-object v34, v22, v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    move-object/from16 v34, v0

    add-int v35, v25, v29

    aget v5, v34, v35

    invoke-static {v6, v4, v5}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->convertYCbCrToRGB(III)I

    move-result v21

    add-int v34, v10, v29

    move/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/awt/image/DataBuffer;->setElem(II)V

    :goto_7
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_3

    new-instance v8, Ljava/awt/image/DirectColorModel;

    const/16 v34, 0x18

    const/high16 v35, 0xff0000

    const v36, 0xff00

    const/16 v37, 0xff

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v8, v0, v1, v2, v3}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    fill-array-data v37, :array_1

    const/16 v38, 0x0

    invoke-static/range {v34 .. v38}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v20

    goto/16 :goto_2

    :cond_3
    new-instance v34, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " components are invalid or unsupported"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v34
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    :goto_8
    return-void

    :cond_4
    :try_start_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    const/16 v34, 0x0

    aget-object v34, v22, v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Block;->samples:[I

    move-object/from16 v34, v0

    add-int v35, v25, v29

    aget v6, v34, v35

    add-int v34, v10, v29

    shl-int/lit8 v35, v6, 0x10

    shl-int/lit8 v36, v6, 0x8

    or-int v35, v35, v36

    or-int v35, v35, v6

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v9, v0, v1}, Ljava/awt/image/DataBuffer;->setElem(II)V
    :try_end_1
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_7

    :catch_1
    move-exception v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->ioException:Ljava/io/IOException;

    goto :goto_8

    :cond_5
    :try_start_2
    new-instance v34, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unsupported JPEG with "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " components"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v34
    :try_end_2
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v11

    new-instance v34, Lorg/apache/commons/imaging/ImageReadException;

    const-string v35, "Error parsing JPEG"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v11}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->imageReadException:Lorg/apache/commons/imaging/ImageReadException;

    goto :goto_8

    :cond_6
    add-int v25, v25, v13

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    move/from16 v34, v0

    add-int v10, v10, v34

    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_5

    :cond_7
    add-int v28, v28, v13

    goto/16 :goto_4

    :cond_8
    add-int v31, v31, v27

    goto/16 :goto_3

    :cond_9
    new-instance v34, Ljava/awt/image/BufferedImage;

    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v35

    new-instance v36, Ljava/util/Properties;

    invoke-direct/range {v36 .. v36}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v8, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->image:Ljava/awt/image/BufferedImage;
    :try_end_3
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_8

    :array_0
    .array-data 4
        0xff0000
        0xff00
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff0000
        0xff00
        0xff
    .end array-data
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0xd

    new-array v7, v10, [I

    fill-array-data v7, :array_0

    invoke-static {v7, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    if-ltz v10, :cond_2

    const v10, 0xffc0

    if-eq p1, v10, :cond_0

    new-instance v10, Lorg/apache/commons/imaging/ImageReadException;

    const-string v11, "Only sequential, baseline JPEGs are supported at the moment"

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    new-instance v10, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    move-object/from16 v0, p5

    invoke-direct {v10, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(I[B)V

    iput-object v10, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->sofnSegment:Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    :cond_1
    const/4 v10, 0x1

    return v10

    :cond_2
    const v10, 0xffdb

    if-ne p1, v10, :cond_6

    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;

    move-object/from16 v0, p5

    invoke-direct {v2, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;-><init>(I[B)V

    const/4 v3, 0x0

    :goto_0
    iget-object v10, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    iget-object v10, v2, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    iget v10, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    if-ltz v10, :cond_3

    iget v10, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    iget-object v11, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    array-length v11, v11

    if-lt v10, v11, :cond_4

    :cond_3
    new-instance v10, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid quantization table identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    iget-object v10, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->quantizationTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    iget v11, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    aput-object v8, v10, v11

    const/16 v10, 0x40

    new-array v6, v10, [I

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->getElements()[I

    move-result-object v10

    invoke-static {v10, v6}, Lorg/apache/commons/imaging/formats/jpeg/decoder/ZigZag;->zigZagToBlock([I[I)V

    const/16 v10, 0x40

    new-array v5, v10, [F

    const/4 v4, 0x0

    :goto_1
    const/16 v10, 0x40

    if-ge v4, v10, :cond_5

    aget v10, v6, v4

    int-to-float v10, v10

    aput v10, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->scaleDequantizationMatrix([F)V

    iget-object v10, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->scaledQuantizationTables:[[F

    iget v11, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;->destinationIdentifier:I

    aput-object v5, v10, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const v10, 0xffc4

    if-ne p1, v10, :cond_1

    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;

    move-object/from16 v0, p5

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;-><init>(I[B)V

    const/4 v3, 0x0

    :goto_2
    iget-object v10, v1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->huffmanTables:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    iget-object v10, v1, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->huffmanTables:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    iget v10, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    if-nez v10, :cond_8

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanDCTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    :goto_3
    iget v10, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    if-ltz v10, :cond_7

    iget v10, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    array-length v11, v9

    if-lt v10, v11, :cond_a

    :cond_7
    new-instance v10, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid huffman table identifier "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_8
    iget v10, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->huffmanACTables:[Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    goto :goto_3

    :cond_9
    new-instance v10, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid huffman table class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_a
    iget v10, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    aput-object v8, v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    nop

    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data
.end method
