.class Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;
.super Ljava/lang/Object;
.source "RgbeInfo.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final HEADER:[B

.field private static final RESOLUTION_STRING:Ljava/util/regex/Pattern;

.field private static final TWO_TWO:[B


# instance fields
.field private height:I

.field private final in:Ljava/io/InputStream;

.field private metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->HEADER:[B

    const-string v0, "-Y (\\d+) \\+X (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->RESOLUTION_STRING:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->TWO_TWO:[B

    return-void

    :array_0
    .array-data 1
        0x23t
        0x3ft
        0x52t
        0x41t
        0x44t
        0x49t
        0x41t
        0x4et
        0x43t
        0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x2t
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    iput v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    return-void
.end method

.method private static decompress(Ljava/io/InputStream;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    array-length v4, p1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v6, 0x80

    if-le v1, v6, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v0, 0x0

    move v3, v2

    :goto_1
    and-int/lit8 v6, v1, 0x7f

    if-ge v0, v6, :cond_0

    add-int/lit8 v2, v3, 0x1

    int-to-byte v6, v5

    aput-byte v6, p1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v3, v2

    :goto_2
    if-ge v0, v1, :cond_3

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private readDimensions()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getMetadata()Lorg/apache/commons/imaging/common/ImageMetadata;

    new-instance v1, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->RESOLUTION_STRING:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid HDR resolution string. Only \"-Y N +X M\" is supported. Found \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    return-void
.end method

.method private readMetadata()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    sget-object v6, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->HEADER:[B

    const-string v7, "Not a valid HDR: Incorrect Header"

    invoke-static {v5, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    new-instance v2, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-direct {v2, v5}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    const-string v6, "Not a valid HDR: Incorrect Header"

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-direct {v5}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    iput-object v5, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FORMAT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "32-bit_rle_rgbe"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Only 32-bit_rle_rgbe images are supported, trying to read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-virtual {v5, v4, v3}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->readNextLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    const-string v6, "<command>"

    invoke-virtual {v5, v6, v1}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method getHeight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->readDimensions()V

    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->height:I

    return v0
.end method

.method getMetadata()Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->readMetadata()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->metadata:Lorg/apache/commons/imaging/common/GenericImageMetadata;

    return-object v0
.end method

.method public getPixelData()[[F
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v14

    const v15, 0x8000

    if-lt v14, v15, :cond_0

    new-instance v15, Lorg/apache/commons/imaging/ImageReadException;

    const-string v16, "Scan lines must be less than 32768 bytes long"

    invoke-direct/range {v15 .. v16}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    int-to-short v15, v14

    sget-object v16, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v13

    mul-int/lit8 v15, v14, 0x4

    new-array v12, v15, [B

    const/4 v15, 0x3

    mul-int v16, v14, v5

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[F

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    sget-object v16, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->TWO_TWO:[B

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Scan line "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " expected to start with 0x2 0x2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Scan line "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " length expected"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v13, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->in:Ljava/io/InputStream;

    invoke-static {v15, v12}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->decompress(Ljava/io/InputStream;[B)V

    const/4 v2, 0x0

    :goto_1
    const/4 v15, 0x3

    if-ge v2, v15, :cond_3

    mul-int v3, v2, v14

    mul-int/lit8 v4, v14, 0x3

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v14, :cond_2

    add-int v15, v10, v4

    aget-byte v15, v12, v15

    and-int/lit16 v7, v15, 0xff

    mul-int v15, v6, v14

    add-int v11, v10, v15

    if-nez v7, :cond_1

    aget-object v15, v9, v2

    const/16 v16, 0x0

    aput v16, v15, v11

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    add-int/lit16 v15, v7, -0x88

    int-to-double v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v8, v0

    aget-object v15, v9, v2

    add-int v16, v10, v3

    aget-byte v16, v12, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    mul-float v16, v16, v8

    aput v16, v15, v11

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v9
.end method

.method getWidth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->readDimensions()V

    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->width:I

    return v0
.end method
