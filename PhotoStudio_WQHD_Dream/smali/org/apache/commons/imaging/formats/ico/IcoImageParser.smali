.class public Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;,
        Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".ico"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".ico"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".cur"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readBitmapIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v32, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v40, "size"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    const-string v40, "width"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    const-string v40, "height"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string v40, "planes"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    const-string v40, "bitCount"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const-string v40, "compression"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    const-string v40, "sizeImage"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    const-string v40, "xPelsPerMeter"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    const-string v40, "yPelsPerMeter"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    const-string v40, "colorsUsed"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    const-string v40, "ColorsImportant"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    const/16 v33, 0x0

    const/16 v30, 0x0

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v40, 0x3

    move/from16 v0, v40

    if-ne v10, v0, :cond_0

    const-string v40, "redMask"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v33

    const-string v40, "greenMask"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v30

    const-string v40, "blueMask"

    const-string v41, "Not a Valid ICO File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v23

    :cond_0
    const-string v40, "RestOfFile"

    invoke-virtual/range {v32 .. v32}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v41

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v34

    const/16 v40, 0x28

    move/from16 v0, v40

    if-eq v5, v0, :cond_1

    new-instance v40, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Not a Valid ICO File: Wrong bitmap header size "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v40

    :cond_1
    const/16 v40, 0x1

    move/from16 v0, v40

    if-eq v8, v0, :cond_2

    new-instance v40, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Not a Valid ICO File: Planes can\'t be "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-direct/range {v40 .. v41}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v40

    :cond_2
    if-nez v10, :cond_3

    const/16 v40, 0x20

    move/from16 v0, v40

    if-ne v9, v0, :cond_3

    const/4 v10, 0x3

    const/high16 v33, 0xff0000

    const v30, 0xff00

    const/16 v23, 0xff

    const/high16 v19, -0x1000000

    :cond_3
    new-instance v4, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;

    invoke-direct/range {v4 .. v15}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;-><init>(IIIIIIIIIII)V

    if-nez v14, :cond_7

    const/16 v40, 0x8

    move/from16 v0, v40

    if-gt v9, v0, :cond_7

    const/16 v40, 0x1

    shl-int v40, v40, v9

    :goto_0
    mul-int/lit8 v40, v40, 0x4

    add-int/lit8 v21, v40, 0x46

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v22, v40, 0x46

    new-instance v20, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v26, 0x0

    const/16 v28, 0x0

    :try_start_0
    new-instance v27, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v40, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v40, 0x42

    :try_start_1
    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v40, 0x4d

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v40, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v40, 0x38

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    div-int/lit8 v40, v7, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    invoke-virtual/range {v27 .. v27}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v28, 0x1

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v27, v40, v41

    move/from16 v0, v28

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    new-instance v25, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v40

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v40, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;

    invoke-direct/range {v40 .. v40}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;-><init>()V

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/formats/bmp/BmpImageParser;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v24

    add-int/lit8 v40, v6, 0x7

    div-int/lit8 v36, v40, 0x8

    rem-int/lit8 v40, v36, 0x4

    if-eqz v40, :cond_4

    rem-int/lit8 v40, v36, 0x4

    rsub-int/lit8 v40, v40, 0x4

    add-int v36, v36, v40

    :cond_4
    div-int/lit8 v40, v7, 0x2

    mul-int v29, v36, v40

    const/16 v37, 0x0

    :try_start_2
    const-string v40, "transparency_map"

    const-string v41, "Not a Valid ICO File"

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    move/from16 v2, v29

    move-object/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v37

    :cond_5
    const/16 v16, 0x1

    const/16 v40, 0x20

    move/from16 v0, v40

    if-ne v9, v0, :cond_9

    const/16 v39, 0x0

    :goto_1
    if-eqz v16, :cond_9

    invoke-virtual/range {v24 .. v24}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_9

    const/16 v38, 0x0

    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v40

    move/from16 v0, v38

    move/from16 v1, v40

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v40

    const/high16 v41, -0x1000000

    and-int v40, v40, v41

    if-eqz v40, :cond_8

    const/16 v16, 0x0

    :cond_6
    add-int/lit8 v39, v39, 0x1

    goto :goto_1

    :cond_7
    move/from16 v40, v14

    goto/16 :goto_0

    :catchall_0
    move-exception v40

    :goto_3
    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput-object v26, v41, v42

    move/from16 v0, v28

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v40

    :catch_0
    move-exception v31

    const/16 v40, 0x20

    move/from16 v0, v40

    if-eq v9, v0, :cond_5

    throw v31

    :cond_8
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    :cond_9
    if-eqz v16, :cond_d

    new-instance v35, Ljava/awt/image/BufferedImage;

    invoke-virtual/range {v24 .. v24}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v40

    invoke-virtual/range {v24 .. v24}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v41

    const/16 v42, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    const/16 v39, 0x0

    :goto_4
    invoke-virtual/range {v35 .. v35}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_e

    const/16 v38, 0x0

    :goto_5
    invoke-virtual/range {v35 .. v35}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v40

    move/from16 v0, v38

    move/from16 v1, v40

    if-ge v0, v1, :cond_c

    const/16 v17, 0xff

    if-eqz v37, :cond_a

    invoke-virtual/range {v24 .. v24}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v40

    sub-int v40, v40, v39

    add-int/lit8 v40, v40, -0x1

    mul-int v40, v40, v36

    div-int/lit8 v41, v38, 0x8

    add-int v40, v40, v41

    aget-byte v40, v37, v40

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    rem-int/lit8 v40, v38, 0x8

    rsub-int/lit8 v40, v40, 0x7

    shr-int v40, v18, v40

    and-int/lit8 v17, v40, 0x1

    if-nez v17, :cond_b

    const/16 v17, 0xff

    :cond_a
    :goto_6
    shl-int/lit8 v40, v17, 0x18

    const v41, 0xffffff

    move-object/from16 v0, v24

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v42

    and-int v41, v41, v42

    or-int v40, v40, v41

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v38, v38, 0x1

    goto :goto_5

    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    :cond_c
    add-int/lit8 v39, v39, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v35, v24

    :cond_e
    new-instance v40, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;Ljava/awt/image/BufferedImage;)V

    return-object v40

    :catchall_1
    move-exception v40

    move-object/from16 v26, v27

    goto/16 :goto_3
.end method

.method private readFileHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "Reserved"

    const-string v4, "Not a Valid ICO File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    const-string v3, "IconType"

    const-string v4, "Not a Valid ICO File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const-string v3, "IconCount"

    const-string v4, "Not a Valid ICO File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    if-eqz v2, :cond_0

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a Valid ICO File: reserved is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a Valid ICO File: icon type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    invoke-direct {v3, v2, v1, v0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;-><init>(III)V

    return-object v3
.end method

.method private readIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/imaging/Imaging;->guessFormat([B)Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage([B)Ljava/awt/image/BufferedImage;

    move-result-object v0

    new-instance v2, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;

    invoke-direct {v2, p2, v0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;Ljava/awt/image/BufferedImage;)V

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readBitmapIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    move-result-object v2

    goto :goto_0
.end method

.method private readIconInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Width"

    const-string v9, "Not a Valid ICO File"

    invoke-static {v0, p1, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    const-string v0, "Height"

    const-string v9, "Not a Valid ICO File"

    invoke-static {v0, p1, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    const-string v0, "ColorCount"

    const-string v9, "Not a Valid ICO File"

    invoke-static {v0, p1, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    const-string v0, "Reserved"

    const-string v9, "Not a Valid ICO File"

    invoke-static {v0, p1, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    const-string v0, "Planes"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v0, p1, v9, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    const-string v0, "BitCount"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v0, p1, v9, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    const-string v0, "ImageSize"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v0, p1, v9, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string v0, "ImageOffset"

    const-string v9, "Not a Valid ICO File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v0, p1, v9, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    new-instance v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;-><init>(BBBBIIII)V

    return-object v0
.end method

.method private readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readFileHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    move-result-object v3

    iget v8, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v2, v8, [Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    const/4 v4, 0x0

    :goto_0
    iget v8, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v4, v8, :cond_0

    invoke-direct {p0, v6}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readIconInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    move-result-object v8

    aput-object v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v8, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    new-array v1, v8, [Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    const/4 v4, 0x0

    :goto_1
    iget v8, v3, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v4, v8, :cond_1

    aget-object v8, v2, v4

    iget v8, v8, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;->imageOffset:I

    aget-object v9, v2, v4

    iget v9, v9, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;->imageSize:I

    invoke-virtual {p1, v8, v9}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(II)[B

    move-result-object v5

    aget-object v8, v2, v4

    invoke-direct {p0, v5, v8}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readIconData([BLorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    move-result-object v8

    aput-object v8, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v7, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    invoke-direct {v7, v3, v1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    new-array v8, v11, [Ljava/io/Closeable;

    aput-object v6, v8, v10

    invoke-static {v0, v8}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v7

    :catchall_0
    move-exception v8

    new-array v9, v11, [Ljava/io/Closeable;

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v8
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    move-result-object v1

    iget-object v5, v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    invoke-virtual {v5, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    return v5
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->ICO:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 7
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

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    const/4 v2, 0x0

    :goto_0
    iget v6, v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-ge v2, v6, :cond_0

    iget-object v6, v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    aget-object v3, v6, v2

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->readBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 4
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

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    iget v2, v1, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;->iconCount:I

    if-lez v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->readBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "No icons in ICO file"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".ico"

    return-object v0
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
            "Lorg/apache/commons/imaging/ImageInfo;"
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

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
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
            "Ljava/awt/Dimension;"
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

    const-string v0, "ico-Custom"

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
    .locals 30
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

    if-nez p3, :cond_1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct/range {p3 .. p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v27, "FORMAT"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    const-string v27, "FORMAT"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v27, "PIXEL_DENSITY"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/imaging/PixelDensity;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    new-instance v27, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unknown parameter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_1
    new-instance v27, Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 p3, v27

    goto :goto_0

    :cond_2
    new-instance v18, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct/range {v18 .. v18}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v27, 0x100

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v11

    if-nez v17, :cond_8

    if-eqz v11, :cond_7

    const/16 v7, 0x20

    :goto_1
    new-instance v9, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v27, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v9, v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v27

    mul-int v27, v27, v7

    add-int/lit8 v27, v27, 0x7

    div-int/lit8 v22, v27, 0x8

    rem-int/lit8 v27, v22, 0x4

    if-eqz v27, :cond_3

    rem-int/lit8 v27, v22, 0x4

    rsub-int/lit8 v27, v27, 0x4

    add-int v22, v22, v27

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v27

    add-int/lit8 v27, v27, 0x7

    div-int/lit8 v24, v27, 0x8

    rem-int/lit8 v27, v24, 0x4

    if-eqz v27, :cond_4

    rem-int/lit8 v27, v24, 0x4

    rsub-int/lit8 v27, v27, 0x4

    add-int v24, v24, v27

    :cond_4
    const/16 v27, 0x8

    move/from16 v0, v27

    if-gt v7, v0, :cond_b

    const/16 v27, 0x1

    shl-int v27, v27, v7

    :goto_2
    mul-int/lit8 v27, v27, 0x4

    add-int/lit8 v27, v27, 0x28

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v28

    mul-int v28, v28, v22

    add-int v27, v27, v28

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v28

    mul-int v28, v28, v24

    add-int v15, v27, v28

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v13

    const/16 v27, 0xff

    move/from16 v0, v27

    if-gt v14, v0, :cond_5

    const/16 v27, 0xff

    move/from16 v0, v27

    if-le v13, v0, :cond_6

    :cond_5
    const/4 v14, 0x0

    const/4 v13, 0x0

    :cond_6
    invoke-virtual {v9, v14}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {v9, v13}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v27, 0x8

    move/from16 v0, v27

    if-lt v7, v0, :cond_c

    const/16 v27, 0x0

    :goto_3
    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {v9, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {v9, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v27, 0x16

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v27, 0x28

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v27

    mul-int/lit8 v27, v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {v9, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v19, :cond_d

    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-nez v19, :cond_e

    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    if-eqz v17, :cond_10

    const/4 v12, 0x0

    :goto_6
    const/16 v27, 0x1

    shl-int v27, v27, v7

    move/from16 v0, v27

    if-ge v12, v0, :cond_10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v12, v0, :cond_f

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v27, v5, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v27, v5, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_7
    const/16 v7, 0x18

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_9

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v27

    const/16 v28, 0x10

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_a

    const/4 v7, 0x4

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0x8

    goto/16 :goto_1

    :cond_b
    const/16 v27, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v27, 0x1

    shl-int v27, v27, v7

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->round(D)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    goto/16 :goto_4

    :cond_e
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->round(D)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    goto/16 :goto_5

    :cond_f
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_7

    :cond_10
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v27

    mul-int v27, v27, v7

    add-int/lit8 v27, v27, 0x7

    div-int/lit8 v27, v27, 0x8

    sub-int v21, v22, v27

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v27

    add-int/lit8 v26, v27, -0x1

    :goto_8
    if-ltz v26, :cond_18

    const/16 v25, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    const/16 v27, 0x8

    move/from16 v0, v27

    if-ge v7, v0, :cond_12

    const v27, 0xffffff

    and-int v20, v27, v5

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v16

    shl-int/2addr v6, v7

    or-int v6, v6, v16

    add-int/2addr v8, v7

    const/16 v27, 0x8

    move/from16 v0, v27

    if-lt v8, v0, :cond_11

    and-int/lit16 v0, v6, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_11
    :goto_a
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    :cond_12
    const/16 v27, 0x8

    move/from16 v0, v27

    if-ne v7, v0, :cond_13

    const v27, 0xffffff

    and-int v20, v27, v5

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_a

    :cond_13
    const/16 v27, 0x18

    move/from16 v0, v27

    if-ne v7, v0, :cond_14

    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v27, v5, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v27, v5, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_a

    :cond_14
    const/16 v27, 0x20

    move/from16 v0, v27

    if-ne v7, v0, :cond_11

    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v27, v5, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v27, v5, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v27, v5, 0x18

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto/16 :goto_a

    :cond_15
    if-lez v8, :cond_16

    rsub-int/lit8 v27, v8, 0x8

    shl-int v6, v6, v27

    and-int/lit16 v0, v6, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_16
    const/16 v25, 0x0

    :goto_b
    move/from16 v0, v25

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    :cond_17
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_8

    :cond_18
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v27

    add-int/lit8 v27, v27, 0x7

    div-int/lit8 v27, v27, 0x8

    sub-int v23, v24, v27

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v27

    add-int/lit8 v26, v27, -0x1

    :goto_c
    if-ltz v26, :cond_1e

    const/16 v25, 0x0

    :goto_d
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    shr-int/lit8 v27, v5, 0x18

    move/from16 v0, v27

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v6, v6, 0x1

    if-nez v4, :cond_19

    or-int/lit8 v6, v6, 0x1

    :cond_19
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x8

    move/from16 v0, v27

    if-lt v8, v0, :cond_1a

    and-int/lit16 v0, v6, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_1a
    add-int/lit8 v25, v25, 0x1

    goto :goto_d

    :cond_1b
    if-lez v8, :cond_1c

    rsub-int/lit8 v27, v8, 0x8

    shl-int v6, v6, v27

    and-int/lit16 v0, v6, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_1c
    const/16 v25, 0x0

    :goto_e
    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_1d

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    :cond_1d
    add-int/lit8 v26, v26, -0x1

    goto :goto_c

    :cond_1e
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    return-void
.end method
