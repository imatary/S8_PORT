.class public abstract Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;
.super Ljava/lang/Object;
.source "TiffImageWriterBase.java"


# instance fields
.field protected final byteOrder:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffConstants;->DEFAULT_TIFF_BYTE_ORDER:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private combineUserExifIntoFinalExif(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object v3

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v5, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p2, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    goto :goto_0

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget-object v7, v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {v4, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {v4, v6}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getStrips(Ljava/awt/image/BufferedImage;III)[[B
    .locals 27

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v12

    add-int v26, v12, p4

    add-int/lit8 v26, v26, -0x1

    div-int v21, v26, p4

    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    move v15, v12

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v13, v0, :cond_4

    move/from16 v0, p4

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v15, v15, v18

    mul-int v26, p3, p2

    mul-int v5, v26, v23

    add-int/lit8 v26, v5, 0x7

    div-int/lit8 v8, v26, 0x8

    mul-int v7, v18, v8

    new-array v0, v7, [B

    move-object/from16 v22, v0

    const/4 v9, 0x0

    mul-int v25, v13, p4

    mul-int v26, v13, p4

    add-int v20, v26, p4

    :goto_1
    move/from16 v0, v25

    if-ge v0, v12, :cond_3

    move/from16 v0, v25

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v24, 0x0

    move v10, v9

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v17

    shr-int/lit8 v26, v17, 0x10

    move/from16 v0, v26

    and-int/lit16 v14, v0, 0xff

    shr-int/lit8 v26, v17, 0x8

    move/from16 v0, v26

    and-int/lit16 v11, v0, 0xff

    shr-int/lit8 v26, v17, 0x0

    move/from16 v0, v26

    and-int/lit16 v6, v0, 0xff

    const/16 v26, 0x1

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    add-int v26, v14, v11

    add-int v26, v26, v6

    div-int/lit8 v19, v26, 0x3

    const/16 v26, 0x7f

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    const/16 v19, 0x0

    :goto_3
    shl-int/lit8 v3, v3, 0x1

    or-int v3, v3, v19

    add-int/lit8 v4, v4, 0x1

    const/16 v26, 0x8

    move/from16 v0, v26

    if-ne v4, v0, :cond_6

    add-int/lit8 v9, v10, 0x1

    int-to-byte v0, v3

    move/from16 v26, v0

    aput-byte v26, v22, v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v24, v24, 0x1

    move v10, v9

    goto :goto_2

    :cond_0
    const/16 v19, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v10, 0x1

    int-to-byte v0, v14

    move/from16 v26, v0

    aput-byte v26, v22, v10

    add-int/lit8 v10, v9, 0x1

    int-to-byte v0, v11

    move/from16 v26, v0

    aput-byte v26, v22, v9

    add-int/lit8 v9, v10, 0x1

    int-to-byte v0, v6

    move/from16 v26, v0

    aput-byte v26, v22, v10

    goto :goto_4

    :cond_2
    if-lez v4, :cond_5

    rsub-int/lit8 v26, v4, 0x8

    shl-int v3, v3, v26

    add-int/lit8 v9, v10, 0x1

    int-to-byte v0, v3

    move/from16 v26, v0

    aput-byte v26, v22, v10

    :goto_5
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    :cond_3
    aput-object v22, v16, v13

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v16

    :cond_5
    move v9, v10

    goto :goto_5

    :cond_6
    move v9, v10

    goto :goto_4
.end method

.method protected static imageDataPaddingLength(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method protected validateDirectories(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_0

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "No directories."

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_0
    const/4 v8, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    iget v3, v5, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v3, :cond_6

    packed-switch v3, :pswitch_data_0

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown directory: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :pswitch_0
    if-eqz v8, :cond_2

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "More than one EXIF directory."

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_2
    move-object v8, v5

    :goto_0
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v0, v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Tag ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ") appears twice in directory."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :pswitch_1
    if-eqz v13, :cond_4

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "More than one GPS directory."

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_4
    move-object v13, v5

    goto :goto_0

    :pswitch_2
    if-eqz v19, :cond_5

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "More than one Interoperability directory."

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_5
    move-object/from16 v19, v5

    goto :goto_0

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "More than one directory with index: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    iget v0, v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v0, v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    move/from16 v24, v0

    sget-object v25, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    move-object/from16 v0, v25

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;->tag:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    if-eqz v9, :cond_9

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "More than one Exif directory offset field."

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_9
    move-object v9, v10

    goto/16 :goto_1

    :cond_a
    iget v0, v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    move/from16 v24, v0

    sget-object v25, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    move-object/from16 v0, v25

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;->tag:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    if-eqz v20, :cond_b

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "More than one Interoperability directory offset field."

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_b
    move-object/from16 v20, v10

    goto/16 :goto_1

    :cond_c
    iget v0, v10, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    move/from16 v24, v0

    sget-object v25, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    move-object/from16 v0, v25

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;->tag:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    if-eqz v14, :cond_d

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "More than one GPS directory offset field."

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_d
    move-object v14, v10

    goto/16 :goto_1

    :cond_e
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_f

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "Missing root directory."

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_f
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/16 v21, 0x0

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_12

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    if-eq v0, v15, :cond_10

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Missing directory: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_10
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    if-eqz v21, :cond_11

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->setNextDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    :cond_11
    move-object/from16 v21, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_12
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    new-instance v22, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;-><init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Ljava/util/Map;)V

    if-nez v19, :cond_13

    if-eqz v20, :cond_13

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "Output set has Interoperability Directory Offset field, but no Interoperability Directory"

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_13
    if-eqz v19, :cond_16

    if-nez v8, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v8

    :cond_14
    if-nez v20, :cond_15

    sget-object v24, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_15
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_16
    if-nez v8, :cond_17

    if-eqz v9, :cond_17

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "Output set has Exif Directory Offset field, but no Exif Directory"

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_17
    if-eqz v8, :cond_19

    if-nez v9, :cond_18

    sget-object v24, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_18
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_19
    if-nez v13, :cond_1a

    if-eqz v14, :cond_1a

    new-instance v24, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v25, "Output set has GPS Directory Offset field, but no GPS Directory"

    invoke-direct/range {v24 .. v25}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_1a
    if-eqz v13, :cond_1c

    if-nez v14, :cond_1b

    sget-object v24, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v14

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_1b
    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_1c
    return-object v22

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v18, Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v39, "FORMAT"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    const-string v39, "FORMAT"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v33, 0x0

    const-string v39, "EXIF"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1

    const-string v39, "EXIF"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    :cond_1
    const/16 v37, 0x0

    const-string v39, "XMP_XML"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2

    const-string v39, "XMP_XML"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    const-string v39, "XMP_XML"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v39, "PIXEL_DENSITY"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/commons/imaging/PixelDensity;

    if-nez v20, :cond_3

    const-wide/high16 v40, 0x4052000000000000L    # 72.0

    const-wide/high16 v42, 0x4052000000000000L    # 72.0

    invoke-static/range {v40 .. v43}, Lorg/apache/commons/imaging/PixelDensity;->createFromPixelsPerInch(DD)Lorg/apache/commons/imaging/PixelDensity;

    move-result-object v20

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v36

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v13

    const/4 v8, 0x5

    const v24, 0xfa00

    const-string v39, "COMPRESSION"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_8

    const-string v39, "COMPRESSION"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    if-eqz v35, :cond_5

    move-object/from16 v0, v35

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v39, v0

    if-nez v39, :cond_4

    new-instance v39, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Invalid compression parameter, must be numeric: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v39

    :cond_4
    move-object/from16 v39, v35

    check-cast v39, Ljava/lang/Number;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Number;->intValue()I

    move-result v8

    :cond_5
    const-string v39, "COMPRESSION"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "PARAM_KEY_LZW_COMPRESSION_BLOCK_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_8

    const-string v39, "PARAM_KEY_LZW_COMPRESSION_BLOCK_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v0, v5, Ljava/lang/Number;

    move/from16 v39, v0

    if-nez v39, :cond_6

    new-instance v39, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Invalid compression block-size parameter: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v39

    :cond_6
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v25

    const/16 v39, 0x1f40

    move/from16 v0, v25

    move/from16 v1, v39

    if-ge v0, v1, :cond_7

    new-instance v39, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Block size parameter "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " is less than 8000 minimum"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v39

    :cond_7
    mul-int/lit8 v24, v25, 0x8

    const-string v39, "PARAM_KEY_LZW_COMPRESSION_BLOCK_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance v21, Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v39, "T4_OPTIONS"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v39, "T6_OPTIONS"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->isEmpty()Z

    move-result v39

    if-nez v39, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    new-instance v39, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unknown parameter: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v39

    :cond_9
    const/16 v39, 0x2

    move/from16 v0, v39

    if-eq v8, v0, :cond_a

    const/16 v39, 0x3

    move/from16 v0, v39

    if-eq v8, v0, :cond_a

    const/16 v39, 0x4

    move/from16 v0, v39

    if-ne v8, v0, :cond_b

    :cond_a
    const/16 v23, 0x1

    const/4 v6, 0x1

    const/16 v19, 0x0

    :goto_0
    mul-int v39, v36, v6

    mul-int v39, v39, v23

    div-int v22, v24, v39

    const/16 v39, 0x1

    move/from16 v0, v39

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->getStrips(Ljava/awt/image/BufferedImage;III)[[B

    move-result-object v26

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v8, v0, :cond_c

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v14, v0, :cond_1a

    aget-object v39, v26, v14

    aget-object v40, v26, v14

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v41, v36, 0x7

    div-int/lit8 v41, v41, 0x8

    div-int v40, v40, v41

    move-object/from16 v0, v39

    move/from16 v1, v36

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressModifiedHuffman([BII)[B

    move-result-object v39

    aput-object v39, v26, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_b
    const/16 v23, 0x3

    const/16 v6, 0x8

    const/16 v19, 0x2

    goto :goto_0

    :cond_c
    const/16 v39, 0x3

    move/from16 v0, v39

    if-ne v8, v0, :cond_13

    const-string v39, "T4_OPTIONS"

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    if-eqz v28, :cond_d

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v27

    :cond_d
    and-int/lit8 v27, v27, 0x7

    and-int/lit8 v39, v27, 0x1

    if-eqz v39, :cond_e

    const/16 v16, 0x1

    :goto_2
    and-int/lit8 v39, v27, 0x2

    if-eqz v39, :cond_f

    const/16 v34, 0x1

    :goto_3
    if-eqz v34, :cond_10

    new-instance v39, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v40, "T.4 compression with the uncompressed mode extension is not yet supported"

    invoke-direct/range {v39 .. v40}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v39

    :cond_e
    const/16 v16, 0x0

    goto :goto_2

    :cond_f
    const/16 v34, 0x0

    goto :goto_3

    :cond_10
    and-int/lit8 v39, v27, 0x4

    if-eqz v39, :cond_11

    const/4 v12, 0x1

    :goto_4
    const/4 v14, 0x0

    :goto_5
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v14, v0, :cond_1a

    if-eqz v16, :cond_12

    aget-object v39, v26, v14

    aget-object v40, v26, v14

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v41, v36, 0x7

    div-int/lit8 v41, v41, 0x8

    div-int v40, v40, v41

    move-object/from16 v0, v39

    move/from16 v1, v36

    move/from16 v2, v40

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v12, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressT4_2D([BIIZI)[B

    move-result-object v39

    aput-object v39, v26, v14

    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_11
    const/4 v12, 0x0

    goto :goto_4

    :cond_12
    aget-object v39, v26, v14

    aget-object v40, v26, v14

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v41, v36, 0x7

    div-int/lit8 v41, v41, 0x8

    div-int v40, v40, v41

    move-object/from16 v0, v39

    move/from16 v1, v36

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressT4_1D([BIIZ)[B

    move-result-object v39

    aput-object v39, v26, v14

    goto :goto_6

    :cond_13
    const/16 v39, 0x4

    move/from16 v0, v39

    if-ne v8, v0, :cond_17

    const-string v39, "T6_OPTIONS"

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    if-eqz v30, :cond_14

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v29

    :cond_14
    and-int/lit8 v29, v29, 0x4

    and-int/lit8 v39, v29, 0x2

    if-eqz v39, :cond_15

    const/16 v34, 0x1

    :goto_7
    if-eqz v34, :cond_16

    new-instance v39, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v40, "T.6 compression with the uncompressed mode extension is not yet supported"

    invoke-direct/range {v39 .. v40}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v39

    :cond_15
    const/16 v34, 0x0

    goto :goto_7

    :cond_16
    const/4 v14, 0x0

    :goto_8
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v14, v0, :cond_1a

    aget-object v39, v26, v14

    aget-object v40, v26, v14

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v41, v36, 0x7

    div-int/lit8 v41, v41, 0x8

    div-int v40, v40, v41

    move-object/from16 v0, v39

    move/from16 v1, v36

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compressT6([BII)[B

    move-result-object v39

    aput-object v39, v26, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_17
    const v39, 0x8005

    move/from16 v0, v39

    if-ne v8, v0, :cond_18

    const/4 v14, 0x0

    :goto_9
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v14, v0, :cond_1a

    new-instance v39, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct/range {v39 .. v39}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    aget-object v40, v26, v14

    invoke-virtual/range {v39 .. v40}, Lorg/apache/commons/imaging/common/PackBits;->compress([B)[B

    move-result-object v39

    aput-object v39, v26, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_18
    const/16 v39, 0x5

    move/from16 v0, v39

    if-ne v8, v0, :cond_19

    const/4 v14, 0x0

    :goto_a
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v14, v0, :cond_1a

    aget-object v32, v26, v14

    const/16 v4, 0x8

    new-instance v9, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;

    const/16 v39, 0x8

    sget-object v40, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v41, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v9, v0, v1, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;-><init>(ILjava/nio/ByteOrder;Z)V

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->compress([B)[B

    move-result-object v7

    aput-object v7, v26, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_19
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v8, v0, :cond_1b

    :cond_1a
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    new-array v15, v0, [Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    const/4 v14, 0x0

    :goto_b
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    if-ge v14, v0, :cond_1c

    new-instance v39, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    const-wide/16 v40, 0x0

    aget-object v42, v26, v14

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    aget-object v43, v26, v14

    invoke-direct/range {v39 .. v43}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    aput-object v39, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_1b
    new-instance v39, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v40, "Invalid compression parameter (Only CCITT 1D/Group 3/Group 4, LZW, Packbits and uncompressed supported)."

    invoke-direct/range {v39 .. v40}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v39

    :cond_1c
    new-instance v17, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v39, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v10

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v36, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v13, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [S

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v42, v0

    aput-short v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [S

    move-object/from16 v40, v0

    const/16 v41, 0x0

    int-to-short v0, v8

    move/from16 v42, v0

    aput-short v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [S

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v42, v0

    aput-short v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    const/16 v39, 0x3

    move/from16 v0, v23

    move/from16 v1, v39

    if-ne v0, v1, :cond_22

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v40, 0x3

    move/from16 v0, v40

    new-array v0, v0, [S

    move-object/from16 v40, v0

    const/16 v41, 0x0

    int-to-short v0, v6

    move/from16 v42, v0

    aput-short v42, v40, v41

    const/16 v41, 0x1

    int-to-short v0, v6

    move/from16 v42, v0

    aput-short v42, v40, v41

    const/16 v41, 0x2

    int-to-short v0, v6

    move/from16 v42, v0

    aput-short v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    :cond_1d
    :goto_c
    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v22, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/PixelDensity;->isUnitless()Z

    move-result v39

    if-eqz v39, :cond_23

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [S

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    aput-short v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/PixelDensity;->getRawHorizontalDensity()D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/PixelDensity;->getRawVerticalDensity()D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    :goto_d
    if-eqz v27, :cond_1e

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T4_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v27, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V

    :cond_1e
    if-eqz v29, :cond_1f

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T6_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v29, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V

    :cond_1f
    if-eqz v37, :cond_20

    const-string v39, "utf-8"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v38

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V

    :cond_20
    new-instance v31, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V

    if-eqz v33, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->combineUserExifIntoFinalExif(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void

    :cond_22
    const/16 v39, 0x1

    move/from16 v0, v23

    move/from16 v1, v39

    if-ne v0, v1, :cond_1d

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [S

    move-object/from16 v40, v0

    const/16 v41, 0x0

    int-to-short v0, v6

    move/from16 v42, v0

    aput-short v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    goto/16 :goto_c

    :cond_23
    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/PixelDensity;->isInInches()Z

    move-result v39

    if-eqz v39, :cond_24

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [S

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x2

    aput-short v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    goto/16 :goto_d

    :cond_24
    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [S

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x1

    aput-short v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityCentimetres()D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    sget-object v39, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityCentimetres()D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    goto/16 :goto_d
.end method

.method protected writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    const-wide/16 v2, 0x8

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;J)V

    return-void
.end method

.method protected writeImageFileHeader(Lorg/apache/commons/imaging/common/BinaryOutputStream;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x4d

    const/16 v2, 0x49

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_0
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    long-to-int v0, p2

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0
.end method
