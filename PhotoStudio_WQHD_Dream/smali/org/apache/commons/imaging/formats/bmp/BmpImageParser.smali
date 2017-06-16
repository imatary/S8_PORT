.class public Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "BmpImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final BITMAP_FILE_HEADER_SIZE:I = 0xe

.field private static final BITMAP_INFO_HEADER_SIZE:I = 0x28

.field private static final BI_BITFIELDS:I = 0x3

.field private static final BI_RGB:I = 0x0

.field private static final BI_RLE4:I = 0x2

.field private static final BI_RLE8:I = 0x1

.field private static final BMP_HEADER_SIGNATURE:[B

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".bmp"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".bmp"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x4dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private getBmpTypeDescription(II)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x50

    const/16 v3, 0x49

    const/16 v2, 0x42

    const/16 v1, 0x43

    if-ne p1, v2, :cond_0

    const/16 v0, 0x4d

    if-ne p2, v0, :cond_0

    const-string v0, "Windows 3.1x, 95, NT,"

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v2, :cond_1

    const/16 v0, 0x41

    if-ne p2, v0, :cond_1

    const-string v0, "OS/2 Bitmap Array"

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v3, :cond_2

    const-string v0, "OS/2 Color Icon"

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    if-ne p2, v4, :cond_3

    const-string v0, "OS/2 Color Pointer"

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    if-ne p2, v1, :cond_4

    const-string v0, "OS/2 Icon"

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    const/16 v0, 0x54

    if-ne p2, v0, :cond_5

    const-string v0, "OS/2 Pointer"

    goto :goto_0

    :cond_5
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private getRLEBytes(Ljava/io/InputStream;I)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    if-nez v6, :cond_3

    const-string v8, "RLE a"

    const-string v9, "BMP: Bad RLE"

    invoke-static {v8, p1, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v0, v8, 0xff

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v8, "RLE b"

    const-string v9, "BMP: Bad RLE"

    invoke-static {v8, p1, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez v0, :cond_0

    packed-switch v1, :pswitch_data_0

    div-int v7, v1, p2

    rem-int v8, v1, p2

    if-lez v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    rem-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    const-string v8, "bytes"

    const-string v9, "RLE: Absolute Mode"

    invoke-static {v8, p1, v7, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :pswitch_1
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_2
    const-string v8, "RLE c"

    const-string v9, "BMP: Bad RLE"

    invoke-static {v8, p1, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v4, v8, 0xff

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v8, "RLE d"

    const-string v9, "BMP: Bad RLE"

    invoke-static {v8, p1, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v5, v8, 0xff

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v4, "Identifier1"

    const-string v34, "Not a Valid BMP File"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-static {v4, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    const-string v4, "Identifier2"

    const-string v34, "Not a Valid BMP File"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-static {v4, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    if-eqz p2, :cond_0

    const-string v4, "Signature"

    sget-object v34, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->BMP_HEADER_SIGNATURE:[B

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-byte v5, v35, v36

    const/16 v36, 0x1

    aput-byte v6, v35, v36

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/FormatCompliance;->compareBytes(Ljava/lang/String;[B[B)Z

    :cond_0
    const-string v4, "File Size"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string v4, "Reserved"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    const-string v4, "Bitmap Data Offset"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const-string v4, "Bitmap Header Size"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    new-instance v26, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;

    invoke-direct/range {v26 .. v26}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;-><init>()V

    new-instance v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v4}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    new-instance v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v4}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    new-instance v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    invoke-direct {v4}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;-><init>()V

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v4, 0x28

    if-lt v10, v4, :cond_b

    const-string v4, "Width"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    const-string v4, "Height"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    const-string v4, "Planes"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    const-string v4, "Bits Per Pixel"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    const-string v4, "Compression"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    const-string v4, "Bitmap Data Size"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v16

    const-string v4, "HResolution"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v17

    const-string v4, "VResolution"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v18

    const-string v4, "ColorsUsed"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v19

    const-string v4, "ColorsImportant"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v20

    const/16 v4, 0x34

    if-ge v10, v4, :cond_1

    const/4 v4, 0x3

    if-ne v15, v4, :cond_2

    :cond_1
    const-string v4, "RedMask"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v21

    const-string v4, "GreenMask"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v22

    const-string v4, "BlueMask"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v23

    :cond_2
    const/16 v4, 0x38

    if-lt v10, v4, :cond_3

    const-string v4, "AlphaMask"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v24

    :cond_3
    const/16 v4, 0x6c

    if-lt v10, v4, :cond_4

    const-string v4, "ColorSpaceType"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v25

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v34, "ColorSpaceRedX"

    const-string v35, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v34, "ColorSpaceRedY"

    const-string v35, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v34, "ColorSpaceRedZ"

    const-string v35, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v34, "ColorSpaceGreenX"

    const-string v35, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v34, "ColorSpaceGreenY"

    const-string v35, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v34, "ColorSpaceGreenZ"

    const-string v35, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v34, "ColorSpaceBlueX"

    const-string v35, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v34, "ColorSpaceBlueY"

    const-string v35, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    const-string v34, "ColorSpaceBlueZ"

    const-string v35, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v34

    move/from16 v0, v34

    iput v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    const-string v4, "GammaRed"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v27

    const-string v4, "GammaGreen"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v28

    const-string v4, "GammaBlue"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v29

    :cond_4
    const/16 v4, 0x7c

    if-lt v10, v4, :cond_5

    const-string v4, "Intent"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v30

    const-string v4, "ProfileData"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v31

    const-string v4, "ProfileSize"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v32

    const-string v4, "Reserved"

    const-string v34, "Not a Valid BMP File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v35

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v33

    :cond_5
    if-eqz p3, :cond_a

    const-string v4, "identifier1"

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v5, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "identifier2"

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v6, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "fileSize"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v7, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "reserved"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v8, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "bitmapDataOffset"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v9, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "bitmapHeaderSize"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v10, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "width"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v11, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "height"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v12, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "planes"

    const/16 v34, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v13, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "bitsPerPixel"

    const/16 v34, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v14, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "compression"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v15, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "bitmapDataSize"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "hResolution"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "vResolution"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorsUsed"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorsImportant"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const/16 v4, 0x34

    if-ge v10, v4, :cond_6

    const/4 v4, 0x3

    if-ne v15, v4, :cond_7

    :cond_6
    const-string v4, "redMask"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "greenMask"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "blueMask"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_7
    const/16 v4, 0x38

    if-lt v10, v4, :cond_8

    const-string v4, "alphaMask"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_8
    const/16 v4, 0x6c

    if-lt v10, v4, :cond_9

    const-string v4, "colorSpaceType"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorSpace.red.x"

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorSpace.red.y"

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorSpace.red.z"

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->red:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorSpace.green.x"

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorSpace.green.y"

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorSpace.green.z"

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->green:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorSpace.blue.x"

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->x:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorSpace.blue.y"

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->y:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "colorSpace.blue.z"

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;->blue:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;->z:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "gammaRed"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "gammaGreen"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "gammaBlue"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_9
    const/16 v4, 0x7c

    if-lt v10, v4, :cond_a

    const-string v4, "intent"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "profileData"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "profileSize"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v4, "reservedV5"

    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_a
    new-instance v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    invoke-direct/range {v4 .. v33}, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;-><init>(BBIIIIIIIIIIIIIIIIIIILorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;IIIIIII)V

    return-object v4

    :cond_b
    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    const-string v34, "Invalid/unsupported BMP file"

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readBmpHeaderInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v3

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3
.end method

.method private readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object v4

    iget v6, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    if-nez v6, :cond_0

    const/16 v18, 0x1

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move/from16 v19, v0

    shl-int v6, v18, v19

    :cond_0
    if-eqz p3, :cond_1

    const-string v18, "ColorsUsed"

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v18, "BitsPerPixel"

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v18, "ColorTableSize"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v18, "bhi.colorsUsed"

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v18, "Compression"

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_1
    const/16 v17, 0x0

    const/16 v16, 0x0

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    new-instance v18, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BMP: Unknown Compression: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v18

    :pswitch_0
    if-eqz p3, :cond_2

    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "Compression: BI_RGB"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    mul-int/lit8 v13, v6, 0x4

    :goto_0
    const/4 v5, 0x0

    if-lez v13, :cond_3

    const-string v18, "ColorTable"

    const-string v19, "Not a Valid BMP File"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v13, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v5

    :cond_3
    if-eqz p3, :cond_4

    const-string v18, "paletteLength"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v13, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ColorTable: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v5, :cond_b

    const-string v18, "null"

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    move/from16 v18, v0

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    move/from16 v19, v0

    mul-int v14, v18, v19

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move/from16 v18, v0

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int/lit8 v18, v18, 0x7

    div-int/lit8 v12, v18, 0x8

    if-eqz p3, :cond_5

    const-string v18, "bhi.Width"

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v18, "bhi.Height"

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v18, "ImageLineLength"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v18, "PixelCount"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v14, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_5
    :goto_2
    rem-int/lit8 v18, v12, 0x4

    if-eqz v18, :cond_c

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    :pswitch_1
    if-eqz p3, :cond_7

    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "Compression: BI_RLE4"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    mul-int/lit8 v13, v6, 0x4

    const/16 v17, 0x2

    const/16 v16, 0x1

    goto/16 :goto_0

    :pswitch_2
    if-eqz p3, :cond_8

    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "Compression: BI_RLE8"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    mul-int/lit8 v13, v6, 0x4

    const/16 v17, 0x1

    const/16 v16, 0x1

    goto/16 :goto_0

    :pswitch_3
    if-eqz p3, :cond_9

    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v19, "Compression: BI_BITFIELDS"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    mul-int/lit8 v13, v6, 0x4

    goto/16 :goto_0

    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_b
    array-length v0, v5

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    :cond_c
    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0xe

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    move/from16 v18, v0

    const/16 v20, 0x28

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v18, v0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/16 v18, 0xc

    :goto_3
    add-int v9, v19, v18

    add-int v7, v9, v13

    if-eqz p3, :cond_d

    const-string v18, "bhi.BitmapDataOffset"

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    const-string v18, "expectedDataOffset"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v7, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_d
    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    move/from16 v18, v0

    sub-int v8, v18, v7

    if-gez v8, :cond_f

    new-instance v18, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BMP has invalid image data offset: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " (expected: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", paletteLength: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", headerSize: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_e
    const/16 v18, 0x0

    goto :goto_3

    :cond_f
    if-lez v8, :cond_10

    const-string v18, "BitmapDataOffset"

    const-string v19, "Not a Valid BMP File"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v8, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    :cond_10
    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    move/from16 v18, v0

    mul-int v11, v18, v12

    if-eqz p3, :cond_11

    const-string v18, "imageDataSize"

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_11
    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v10

    :goto_4
    if-eqz p3, :cond_12

    const-string v18, "ImageData.length"

    array-length v0, v10

    move/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_12
    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_1

    new-instance v18, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BMP: Unknown Compression: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v4, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_13
    const-string v18, "ImageData"

    const-string v19, "Not a Valid BMP File"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v11, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v10

    goto :goto_4

    :pswitch_4
    new-instance v15, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;

    invoke-direct {v15, v4, v5, v10}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    :goto_5
    new-instance v18, Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v10, v15}, Lorg/apache/commons/imaging/formats/bmp/ImageContents;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[BLorg/apache/commons/imaging/formats/bmp/PixelParser;)V

    return-object v18

    :pswitch_5
    new-instance v15, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;

    invoke-direct {v15, v4, v5, v10}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_5

    :pswitch_6
    new-instance v15, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;

    invoke-direct {v15, v4, v5, v10}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "bmp.dumpImageFile"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "VERBOSE"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "VERBOSE"

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "VERBOSE"

    invoke-interface {p2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v8, "BUFFERED_IMAGE_FACTORY"

    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "BUFFERED_IMAGE_FACTORY"

    invoke-interface {p2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown parameter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v8

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v8

    invoke-direct {p0, p1, v8, v6}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    const-string v9, "Couldn\'t read BMP Data"

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    iget-object v0, v3, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v7, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    iget v2, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    if-eqz v6, :cond_5

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width*height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int v10, v7, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "width*height*4: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-int v10, v7, v2

    mul-int/lit8 v10, v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v5, v3, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->pixelParser:Lorg/apache/commons/imaging/formats/bmp/PixelParser;

    new-instance v4, Lorg/apache/commons/imaging/common/ImageBuilder;

    const/4 v8, 0x1

    invoke-direct {v4, v7, v2, v8}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    invoke-virtual {v5, v4}, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->processImage(Lorg/apache/commons/imaging/common/ImageBuilder;)V

    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v8

    return-object v8
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 6
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

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v3

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".bmp"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    new-instance v2, Lorg/apache/commons/imaging/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/commons/imaging/FormatCompliance;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    new-array v4, v5, [Ljava/io/Closeable;

    aput-object v1, v4, v6

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v4

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v4
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 38
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

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct/range {p2 .. p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "VERBOSE"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v34

    const-string v4, "VERBOSE"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "VERBOSE"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown parameter: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 p2, v4

    goto :goto_0

    :cond_2
    const/16 v28, 0x0

    const/16 v27, 0x0

    const/16 v24, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v34

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readImageContents(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;Z)Lorg/apache/commons/imaging/formats/bmp/ImageContents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v27

    const/16 v24, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/io/Closeable;

    const/4 v9, 0x0

    aput-object v28, v4, v9

    move/from16 v0, v24

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    if-nez v27, :cond_3

    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    const-string v9, "Couldn\'t read BMP Data"

    invoke-direct {v4, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v28, v9, v11

    move/from16 v0, v24

    invoke-static {v0, v9}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v4

    :cond_3
    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/bmp/ImageContents;->colorTable:[B

    move-object/from16 v25, v0

    if-nez v23, :cond_4

    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    const-string v9, "BMP: couldn\'t read header"

    invoke-direct {v4, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-object/from16 v0, v23

    iget v10, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    move/from16 v17, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iget v6, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    sget-object v8, Lorg/apache/commons/imaging/ImageFormats;->BMP:Lorg/apache/commons/imaging/ImageFormats;

    const-string v30, "BMP Windows Bitmap"

    const-string v29, "image/x-ms-bmp"

    const/16 v31, -0x1

    const/16 v32, 0x0

    move-object/from16 v0, v23

    iget v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->hResolution:I

    int-to-double v0, v4

    move-wide/from16 v18, v0

    const-wide v36, 0x3f9a027525460aa6L    # 0.0254

    mul-double v18, v18, v36

    move-wide/from16 v0, v18

    double-to-int v15, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    int-to-double v0, v15

    move-wide/from16 v36, v0

    div-double v18, v18, v36

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v23

    iget v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->vResolution:I

    int-to-double v0, v4

    move-wide/from16 v18, v0

    const-wide v36, 0x3f9a027525460aa6L    # 0.0254

    mul-double v18, v18, v36

    move-wide/from16 v0, v18

    double-to-int v13, v0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    int-to-double v0, v13

    move-wide/from16 v36, v0

    div-double v18, v18, v36

    move-wide/from16 v0, v18

    double-to-float v14, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bmp ("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-byte v9, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-byte v9, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    int-to-char v9, v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-byte v9, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    move-object/from16 v0, v23

    iget-byte v11, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBmpTypeDescription(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v33, 0x0

    if-eqz v25, :cond_5

    const/16 v20, 0x1

    :goto_1
    sget-object v21, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v22, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v4, Lorg/apache/commons/imaging/ImageInfo;

    const-string v9, "BMP Windows Bitmap"

    const-string v11, "image/x-ms-bmp"

    const/4 v12, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v4 .. v22}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v4

    :cond_5
    const/16 v20, 0x0

    goto :goto_1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 6
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

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "VERBOSE"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "VERBOSE"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "VERBOSE"

    invoke-interface {p2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->readBmpHeaderInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "BMP: couldn\'t read header"

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Ljava/awt/Dimension;

    iget v4, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    iget v5, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    invoke-direct {v3, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    return-object v3
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Bmp-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 12
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

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const/4 v6, 0x0

    const-string v9, "FORMAT"

    invoke-interface {p3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "FORMAT"

    invoke-interface {p3, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v9, "PIXEL_DENSITY"

    invoke-interface {p3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "PIXEL_DENSITY"

    invoke-interface {p3, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/PixelDensity;

    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v9, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown parameter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v9

    goto :goto_0

    :cond_3
    new-instance v9, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v10, 0x100

    invoke-virtual {v9, p1, v10}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v8, Lorg/apache/commons/imaging/formats/bmp/BmpWriterRgb;

    invoke-direct {v8}, Lorg/apache/commons/imaging/formats/bmp/BmpWriterRgb;-><init>()V

    :goto_1
    invoke-interface {v8, p1}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getImageData(Ljava/awt/image/BufferedImage;)[B

    move-result-object v4

    new-instance v0, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, p2, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 v9, 0x42

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    const/16 v9, 0x4d

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {v8}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getPaletteSize()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0x36

    array-length v10, v4

    add-int v1, v9, v10

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-interface {v8}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getPaletteSize()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    add-int/lit8 v9, v9, 0x36

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/16 v9, 0x28

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-interface {v8}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->getBitsPerPixel()I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    array-length v9, v4

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v9, v10

    :goto_2
    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityMetres()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v9, v10

    :goto_3
    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v5, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    :goto_4
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-interface {v8, v0}, Lorg/apache/commons/imaging/formats/bmp/BmpWriter;->writePalette(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    invoke-virtual {v0, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    return-void

    :cond_4
    new-instance v8, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;

    invoke-direct {v8, v5}, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;-><init>(Lorg/apache/commons/imaging/palette/SimplePalette;)V

    goto/16 :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_4
.end method
