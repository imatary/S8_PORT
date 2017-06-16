.class public Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;
.super Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;
.source "TiffImageWriterLossless.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;
    }
.end annotation


# static fields
.field private static final ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITEM_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final exifBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$2;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$2;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ITEM_SIZE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;-><init>(Ljava/nio/ByteOrder;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    return-void
.end method

.method private analyzeOldTiff(Ljava/util/Map;)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v3, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    const/16 v23, 0x0

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v13

    new-instance v27, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1, v13}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getDirectoryEntries()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-virtual {v11}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getOversizeValueElement()Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    move-result-object v22

    if-eqz v22, :cond_1

    invoke-virtual {v11}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v27

    if-eqz v27, :cond_2

    invoke-virtual {v11}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytesEqual([B)Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v27

    invoke-virtual {v11}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getOffset()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v27, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-virtual {v8}, Lorg/apache/commons/imaging/ImageReadException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v8}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    :cond_2
    :try_start_1
    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v17

    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v26

    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v5

    invoke-static {v10, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    sget-object v27, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v27

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    const/16 v25, 0x0

    const-wide/16 v18, -0x1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    iget-wide v0, v9, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-wide/from16 v28, v0

    iget v0, v9, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v20, v28, v30

    if-nez v25, :cond_6

    move-object/from16 v25, v9

    move-wide/from16 v18, v20

    goto :goto_2

    :cond_6
    iget-wide v0, v9, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-wide/from16 v28, v0

    sub-long v28, v28, v18

    const-wide/16 v30, 0x3

    cmp-long v27, v28, v30

    if-lez v27, :cond_7

    new-instance v27, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;

    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-wide/from16 v30, v0

    sub-long v30, v18, v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-direct/range {v27 .. v30}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;-><init>(JI)V

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v9

    move-wide/from16 v18, v20

    goto :goto_2

    :cond_7
    move-wide/from16 v18, v20

    goto :goto_2

    :cond_8
    if-eqz v25, :cond_9

    new-instance v27, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;

    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-wide/from16 v30, v0

    sub-long v30, v18, v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-direct/range {v27 .. v30}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;-><init>(JI)V

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return-object v24
.end method

.method private updateOffsetsStep(Ljava/util/List;Ljava/util/List;)J
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v12, v0

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v16, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v15}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :goto_0
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_0

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    iget-wide v0, v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-wide/from16 v16, v0

    iget v0, v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v4, v16, v18

    cmp-long v16, v4, v12

    if-nez v16, :cond_0

    iget v0, v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v12, v12, v16

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v16, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v15}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v16, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ITEM_SIZE_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v14}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    invoke-virtual {v10}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result v11

    const/4 v2, 0x0

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    iget v0, v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v0, v11, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v10, v12, v13}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    goto :goto_1

    :cond_3
    iget-wide v0, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->setOffset(J)V

    invoke-interface {v15, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v0, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v0, v11, :cond_1

    iget-wide v0, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-wide/from16 v16, v0

    int-to-long v0, v11

    move-wide/from16 v18, v0

    add-long v8, v16, v18

    iget v0, v2, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    move/from16 v16, v0

    sub-int v6, v16, v11

    new-instance v16, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v9, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;-><init>(JI)V

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v16, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->ELEMENT_SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v15}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-wide v12
.end method

.method private writeStep(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Ljava/util/List;Ljava/util/List;J)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v9

    move-wide/from16 v0, p5

    long-to-int v11, v0

    new-array v7, v11, [B

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    array-length v14, v14

    array-length v15, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v11, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v11}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;-><init>([BI)V

    new-instance v2, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v2, v10, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    invoke-virtual {v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getOffset()J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;J)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    const/4 v6, 0x0

    :goto_0
    iget v11, v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    if-ge v6, v11, :cond_0

    iget-wide v12, v3, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    int-to-long v14, v6

    add-long/2addr v12, v14

    long-to-int v5, v12

    array-length v11, v7

    if-ge v5, v11, :cond_1

    const/4 v11, 0x0

    aput-byte v11, v7, v5

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v12

    long-to-int v11, v12

    invoke-direct {v10, v7, v11}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;-><init>([BI)V

    new-instance v2, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v2, v10, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    invoke-virtual {v8, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->writeItem(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_MAKER_NOTE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_MAKER_NOTE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    iget v3, v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->analyzeOldTiff(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->exifBytes:[B

    array-length v0, v3

    move/from16 v16, v0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v4, "Couldn\'t analyze old tiff data."

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/imaging/formats/tiff/TiffElement;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    const-wide/16 v20, 0x8

    cmp-long v3, v4, v20

    if-nez v3, :cond_2

    move-object/from16 v0, v17

    iget-wide v4, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    move-object/from16 v0, v17

    iget v3, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    int-to-long v0, v3

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    const-wide/16 v20, 0x8

    add-long v4, v4, v20

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v3, v4, v20

    if-nez v3, :cond_2

    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>(Ljava/nio/ByteOrder;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    :goto_0
    return-void

    :cond_2
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-virtual {v11}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v4

    const-wide/16 v20, -0x1

    cmp-long v3, v4, v20

    if-eqz v3, :cond_3

    invoke-virtual {v11}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v12, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->validateDirectories(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->updateOffsetsStep(Ljava/util/List;Ljava/util/List;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->updateOffsets(Ljava/nio/ByteOrder;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;->writeStep(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Ljava/util/List;Ljava/util/List;J)V

    goto/16 :goto_0
.end method
