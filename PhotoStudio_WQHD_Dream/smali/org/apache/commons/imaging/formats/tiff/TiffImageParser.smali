.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "TiffImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".tif"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".tif"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".tiff"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private checkForSubImage(Ljava/util/Map;)Ljava/awt/Rectangle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Rectangle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const-string v5, "SUBIMAGE_X"

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "SUBIMAGE_Y"

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "SUBIMAGE_WIDTH"

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "SUBIMAGE_HEIGHT"

    invoke-direct {p0, v5, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v2, :cond_1

    const-string v5, " x0,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v3, :cond_2

    const-string v5, " y0,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-nez v1, :cond_3

    const-string v5, " width,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-nez v0, :cond_4

    const-string v5, " height,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incomplete subimage parameters, missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v5, Ljava/awt/Rectangle;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    goto :goto_0
.end method

.method private getIntegerParameter(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-Integer parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPhotometricInterpreter(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    sparse-switch p2, :sswitch_data_0

    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIFF: Unknown fPhotometricInterpretation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    if-nez p2, :cond_0

    const/4 v7, 0x1

    :goto_0
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;-><init>(I[IIIIZ)V

    :goto_1
    return-object v1

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :sswitch_1
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COLOR_MAP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v14

    const/4 v1, 0x1

    shl-int v1, v1, p3

    mul-int/lit8 v15, v1, 0x3

    array-length v1, v14

    if-eq v1, v15, :cond_1

    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tiff: fColorMap.length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")!=expectedColormapSize ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;

    move/from16 v9, p6

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;-><init>(I[IIII[I)V

    move-object v1, v8

    goto :goto_1

    :sswitch_2
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;-><init>(I[IIII)V

    goto :goto_1

    :sswitch_3
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCmyk;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCmyk;-><init>(I[IIII)V

    goto :goto_1

    :sswitch_4
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;-><init>(I[IIII)V

    goto/16 :goto_1

    :sswitch_5
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCieLab;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCieLab;-><init>(I[IIII)V

    goto/16 :goto_1

    :sswitch_6
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;

    move/from16 v2, p6

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;-><init>(I[IIII)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x8 -> :sswitch_5
        0x804c -> :sswitch_6
        0x804d -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public collectRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v5

    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v10

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v10, 0x1

    invoke-virtual {v9, p1, v10, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    iget-object v9, v1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    iget-object v9, v1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    iget-wide v10, v4, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    iget v9, v4, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    invoke-virtual {p1, v10, v11, v9}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v10, "tiff.dumpImageFile"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v10, 0x0

    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return v10

    :cond_0
    :try_start_1
    const-string v10, ""

    invoke-virtual {v8, p1, v10}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v6

    const/4 v9, 0x0

    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v10, p2, v9, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v0

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const/4 v10, 0x0

    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    iget-object v4, v3, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    const/4 v10, 0x0

    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, p1, v10}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v10

    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    throw v10

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_4
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v10, 0x1

    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v2

    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v6, p1, v7, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v7, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImage(Ljava/nio/ByteOrder;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v3

    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v6

    invoke-direct {v4, v6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v6, 0x1

    invoke-virtual {v4, p1, p2, v6, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v1

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iget-object v6, v1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    invoke-virtual {v2, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImage(Ljava/nio/ByteOrder;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "TIFF does not contain an image."

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    return-object v5
.end method

.method protected getBufferedImage(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Ljava/nio/ByteOrder;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "TIFF missing entries"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const v2, 0xffff

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v3

    and-int v4, v2, v3

    const v2, 0xffff

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v3

    and-int v20, v2, v3

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;)I

    move-result v9

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;)I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->checkForSubImage(Ljava/util/Map;)Ljava/awt/Rectangle;

    move-result-object v30

    if-eqz v30, :cond_9

    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    if-gtz v2, :cond_1

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "negative or zero subimage width"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    if-gtz v2, :cond_2

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "negative or zero subimage height"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->x:I

    if-ltz v2, :cond_3

    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->x:I

    if-lt v2, v9, :cond_4

    :cond_3
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "subimage x is outside raster"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->x:I

    move-object/from16 v0, v30

    iget v3, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v2, v3

    if-le v2, v9, :cond_5

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "subimage (x+width) is outside raster"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    if-ltz v2, :cond_6

    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    if-lt v2, v10, :cond_7

    :cond_6
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "subimage y is outside raster"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    move-object/from16 v0, v30

    iget v3, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v2, v3

    if-le v2, v10, :cond_8

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "subimage (y+height) is outside raster"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->x:I

    if-nez v2, :cond_9

    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    if-nez v2, :cond_9

    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    if-ne v2, v9, :cond_9

    move-object/from16 v0, v30

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    if-ne v2, v10, :cond_9

    const/16 v30, 0x0

    :cond_9
    const/4 v8, 0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v29

    if-eqz v29, :cond_a

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v8

    :cond_a
    const/4 v2, 0x1

    new-array v6, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v6, v2

    move v5, v8

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v22

    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v5

    :cond_b
    const/4 v7, -0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_PREDICTOR:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v27

    if-eqz v27, :cond_c

    invoke-virtual/range {v27 .. v27}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v7

    :cond_c
    array-length v2, v6

    if-eq v8, v2, :cond_d

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Tiff: samplesPerPixel ("

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ")!=fBitsPerSample.length ("

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v12, v6

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ")"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getPhotometricInterpreter(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;II[IIIII)Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v11

    move-object/from16 v12, p1

    move v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v21, p2

    invoke-virtual/range {v11 .. v21}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getDataReader(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;

    move-result-object v23

    const/16 v28, 0x0

    if-eqz v30, :cond_e

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->readImageData(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object v28

    :goto_0
    return-object v28

    :cond_e
    const/16 v25, 0x0

    new-instance v26, Lorg/apache/commons/imaging/common/ImageBuilder;

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v9, v10, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->readImageData(Lorg/apache/commons/imaging/common/ImageBuilder;)V

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v28

    goto :goto_0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".tif"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v2, p1, v1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v4

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v3, p1, p2, v5, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v0

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffEpTagConstants;->EXIF_TAG_INTER_COLOR_PROFILE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoUndefined;

    invoke-virtual {v1, v3, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;Z)[B

    move-result-object v3

    return-object v3
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v30

    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v9

    invoke-direct {v7, v9}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/4 v9, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v9}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v39

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    const/4 v9, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v7, v9}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v32

    if-eqz v39, :cond_0

    if-nez v32, :cond_1

    :cond_0
    new-instance v7, Lorg/apache/commons/imaging/ImageReadException;

    const-string v9, "TIFF image missing size info."

    invoke-direct {v7, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-virtual/range {v32 .. v32}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v8

    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v15

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v37

    const/16 v36, 0x2

    if-eqz v37, :cond_2

    invoke-virtual/range {v37 .. v37}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual/range {v37 .. v37}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v36

    :cond_2
    const-wide/high16 v40, -0x4010000000000000L    # -1.0

    packed-switch v36, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v42

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v43

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const-wide/16 v16, 0x0

    cmpl-double v7, v40, v16

    if-lez v7, :cond_4

    if-eqz v42, :cond_3

    invoke-virtual/range {v42 .. v42}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual/range {v42 .. v42}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v44

    mul-double v16, v44, v40

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v48, v44, v40

    div-double v16, v16, v48

    move-wide/from16 v0, v16

    double-to-float v14, v0

    :cond_3
    if-eqz v43, :cond_4

    invoke-virtual/range {v43 .. v43}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual/range {v43 .. v43}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDoubleValue()D

    move-result-wide v46

    mul-double v16, v46, v40

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v11, v0

    int-to-double v0, v8

    move-wide/from16 v16, v0

    mul-double v48, v46, v40

    div-double v16, v16, v48

    move-wide/from16 v0, v16

    double-to-float v12, v0

    :cond_4
    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v22

    const/16 v21, 0x1

    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValueOrArraySum()I

    move-result v21

    :cond_5
    move/from16 v4, v21

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->entries:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_1
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-virtual/range {v29 .. v29}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    :pswitch_2
    const-wide v40, 0x400451eb851eb852L    # 2.54

    goto/16 :goto_0

    :cond_6
    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->TIFF:Lorg/apache/commons/imaging/ImageFormats;

    const-string v31, "TIFF Tag-based Image File Format"

    const-string v34, "image/tiff"

    move-object/from16 v0, v26

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/16 v35, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tiff v."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    iget-object v9, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->header:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    iget v9, v9, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->tiffVersion:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v38, 0x0

    const/16 v18, 0x0

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COLOR_MAP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v23

    if-eqz v23, :cond_7

    const/16 v18, 0x1

    :cond_7
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const v7, 0xffff

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_COMPRESSION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)S

    move-result v9

    and-int v25, v7, v9

    sparse-switch v25, :sswitch_data_0

    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    :goto_2
    new-instance v2, Lorg/apache/commons/imaging/ImageInfo;

    const-string v7, "TIFF Tag-based Image File Format"

    const-string v9, "image/tiff"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v2

    :sswitch_0
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    :sswitch_1
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    :sswitch_2
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    :sswitch_3
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    :sswitch_4
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    :sswitch_5
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    :sswitch_6
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    :sswitch_7
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x8003 -> :sswitch_6
        0x8005 -> :sswitch_7
    .end sparse-switch
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v2

    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v8

    invoke-direct {v7, v8}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v7, p1, p2, v9, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v0

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v1, v7, v10}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v6

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    invoke-virtual {v1, v7, v10}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v4

    if-eqz v6, :cond_0

    if-nez v4, :cond_1

    :cond_0
    new-instance v7, Lorg/apache/commons/imaging/ImageReadException;

    const-string v8, "TIFF image missing size info."

    invoke-direct {v7, v8}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v3

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v5

    new-instance v7, Ljava/awt/Dimension;

    invoke-direct {v7, v5, v3}, Ljava/awt/Dimension;-><init>(II)V

    return-object v7
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v5

    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v11

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v10, p1, p2, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v0

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-direct {v9, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffContents;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    invoke-virtual {v10}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-direct {v8, v11, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;-><init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)V

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getDirectoryEntries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-virtual {v8, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->add(Lorg/apache/commons/imaging/formats/tiff/TiffField;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v9, v8}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->add(Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;)V

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Tiff-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v4

    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/TiffReader;

    invoke-static {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->isStrict(Ljava/util/Map;)Z

    move-result v7

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;-><init>(Z)V

    invoke-virtual {v6, p1, v8, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v1

    iget-object v6, v1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XMP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    invoke-virtual {v2, v6, v8}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;Z)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "Invalid JPEG XMP Segment."

    invoke-direct {v6, v7, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 1
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

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method
