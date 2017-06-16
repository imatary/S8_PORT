.class public Lorg/apache/commons/imaging/formats/gif/GifImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "GifImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final APPLICATION_EXTENSION_LABEL:I = 0xff

.field private static final COMMENT_EXTENSION:I = 0xfe

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".gif"

.field private static final EXTENSION_CODE:I = 0x21

.field private static final GIF_HEADER_SIGNATURE:[B

.field private static final GRAPHIC_CONTROL_EXTENSION:I = 0x21f9

.field private static final IMAGE_SEPARATOR:I = 0x2c

.field private static final INTERLACE_FLAG_MASK:I = 0x40

.field private static final LOCAL_COLOR_TABLE_FLAG_MASK:I = 0x80

.field private static final PLAIN_TEXT_EXTENSION:I = 0x1

.field private static final SORT_FLAG_MASK:I = 0x20

.field private static final TERMINATOR_BYTE:I = 0x3b

.field private static final XMP_APPLICATION_ID_AND_AUTH_CODE:[B

.field private static final XMP_COMPLETE_CODE:I = 0x21ff

.field private static final XMP_EXTENSION:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".gif"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    return-void

    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x4dt
        0x50t
        0x20t
        0x44t
        0x61t
        0x74t
        0x61t
        0x58t
        0x4dt
        0x50t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private convertColorTableSize(I)I
    .locals 2

    const/4 v0, 0x2

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->simplePow(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;I)",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    iget v2, v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    if-ne v2, p2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColorTable([B)[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    array-length v8, p1

    rem-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_0

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad Color Table Length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    array-length v8, p1

    div-int/lit8 v4, v8, 0x3

    new-array v6, v4, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x0

    aget-byte v8, p1, v8

    and-int/lit16 v5, v8, 0xff

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v2, v8, 0xff

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v1, v8, 0xff

    const/16 v0, 0xff

    const/high16 v8, -0x1000000

    shl-int/lit8 v9, v5, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v2, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v7, v8, v9

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method

.method private getComments(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x21fe

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    iget v5, v0, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    const/16 v6, 0x21fe

    if-ne v5, v6, :cond_0

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks()[B

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    const-string v6, "US-ASCII"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private readBlocks(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;",
            "Ljava/io/InputStream;",
            "Z",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GIF: unknown code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "GIF: unexpected end of data"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readImageDescriptor(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;ILjava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v9

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, v9, 0xff

    or-int v8, v1, v2

    sparse-switch v9, :sswitch_data_1

    if-eqz p4, :cond_1

    const-string v1, "Unknown block"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/imaging/FormatCompliance;->addComment(Ljava/lang/String;I)V

    :cond_1
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    move-result-object v10

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object v12

    if-eqz p4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Application Extension ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v2, v12, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v8}, Lorg/apache/commons/imaging/FormatCompliance;->addComment(Ljava/lang/String;I)V

    :cond_2
    if-eqz v12, :cond_0

    array-length v1, v12

    if-lez v1, :cond_0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8, v12}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
        0x21 -> :sswitch_3
        0x2c -> :sswitch_2
        0x3b -> :sswitch_7
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_4
        0xfe -> :sswitch_5
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method private readColorTable(Ljava/io/InputStream;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result v0

    const-string v1, "block"

    const-string v2, "GIF: corrupt Color Table"

    invoke-static {v1, p1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/imaging/FormatCompliance;->getDefault()Lorg/apache/commons/imaging/FormatCompliance;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object v0

    return-object v0
.end method

.method private readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageContents;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    move-result-object v2

    const/4 v3, 0x0

    iget-boolean v6, v2, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->globalColorTableFlag:Z

    if-eqz v6, :cond_0

    iget-byte v6, v2, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sizeOfGlobalColorTable:B

    invoke-direct {p0, v4, v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;I)[B

    move-result-object v3

    :cond_0
    invoke-direct {p0, v2, v4, p2, p3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readBlocks(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Lorg/apache/commons/imaging/formats/gif/ImageContents;

    invoke-direct {v5, v2, v3, v0}, Lorg/apache/commons/imaging/formats/gif/ImageContents;-><init>(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;[BLjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    new-array v6, v7, [Ljava/io/Closeable;

    aput-object v4, v6, v8

    invoke-static {v1, v6}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v5

    :catchall_0
    move-exception v6

    new-array v7, v7, [Ljava/io/Closeable;

    aput-object v4, v7, v8

    invoke-static {v1, v7}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v6
.end method

.method private readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v0

    return-object v0
.end method

.method private readGenericGIFBlock(Ljava/io/InputStream;I[B)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readSubBlock(Ljava/io/InputStream;)[B

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    new-instance v2, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    invoke-direct {v2, p2, v1}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;-><init>(ILjava/util/List;)V

    return-object v2

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private readGraphicControlExtension(ILjava/io/InputStream;)Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "block_size"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    const-string v0, "packed fields"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit8 v0, v2, 0x1c

    shr-int/lit8 v3, v0, 0x2

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v0, "delay in milliseconds"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v0, p2, v1, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    const-string v0, "transparent color index"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v6, v0, 0xff

    const-string v0, "block terminator"

    const-string v1, "GIF: corrupt GraphicControlExt"

    invoke-static {v0, p2, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    new-instance v0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;-><init>(IIIZII)V

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readHeader(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "identifier1"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    const-string v3, "identifier2"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    const-string v3, "identifier3"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    const-string v3, "version1"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v7

    const-string v3, "version2"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    const-string v3, "version3"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v9

    if-eqz p2, :cond_0

    const-string v3, "Signature"

    sget-object v19, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->GIF_HEADER_SIGNATURE:[B

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-byte v4, v20, v21

    const/16 v21, 0x1

    aput-byte v5, v20, v21

    const/16 v21, 0x2

    aput-byte v6, v20, v21

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Lorg/apache/commons/imaging/FormatCompliance;->compareBytes(Ljava/lang/String;[B[B)Z

    const-string v3, "version"

    const/16 v19, 0x38

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1, v7}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;II)Z

    const-string v3, "version"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1, v8}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;[II)Z

    const-string v3, "version"

    const/16 v19, 0x61

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1, v9}, Lorg/apache/commons/imaging/FormatCompliance;->compare(Ljava/lang/String;II)Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "identifier: "

    shl-int/lit8 v19, v4, 0x10

    shl-int/lit8 v20, v5, 0x8

    or-int v19, v19, v20

    shl-int/lit8 v20, v6, 0x0

    or-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    const-string v3, "version: "

    shl-int/lit8 v19, v7, 0x10

    shl-int/lit8 v20, v8, 0x8

    or-int v19, v19, v20

    shl-int/lit8 v20, v9, 0x0

    or-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_1
    const-string v3, "Logical Screen Width"

    const-string v19, "Not a Valid GIF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v3, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    const-string v3, "Logical Screen Height"

    const-string v19, "Not a Valid GIF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v3, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    if-eqz p2, :cond_2

    const-string v3, "Width"

    const/16 v19, 0x1

    const v20, 0x7fffffff

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2, v10}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v3, "Height"

    const/16 v19, 0x1

    const v20, 0x7fffffff

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2, v11}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    :cond_2
    const-string v3, "Packed Fields"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v12

    const-string v3, "Background Color Index"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v13

    const-string v3, "Pixel Aspect Ratio"

    const-string v19, "Not a Valid GIF File"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PackedFields bits"

    invoke-static {v3, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printByteBits(Ljava/lang/String;B)V

    :cond_3
    and-int/lit16 v3, v12, 0x80

    if-lez v3, :cond_9

    const/4 v15, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GlobalColorTableFlag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    shr-int/lit8 v3, v12, 0x4

    and-int/lit8 v3, v3, 0x7

    int-to-byte v0, v3

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ColorResolution: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    and-int/lit8 v3, v12, 0x8

    if-lez v3, :cond_a

    const/16 v17, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SortFlag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    and-int/lit8 v3, v12, 0x7

    int-to-byte v0, v3

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SizeofGlobalColorTable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    if-eqz p2, :cond_8

    if-eqz v15, :cond_8

    const/4 v3, -0x1

    if-eq v13, v3, :cond_8

    const-string v3, "Background Color Index"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->convertColorTableSize(I)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2, v13}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    :cond_8
    new-instance v3, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    invoke-direct/range {v3 .. v18}, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;-><init>(BBBBBBIIBBBZBZB)V

    return-object v3

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x0

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x37
        0x39
    .end array-data
.end method

.method private readImageDescriptor(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;ILjava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "Image Left Position"

    const-string v4, "Not a Valid GIF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-static {v3, v0, v4, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    const-string v3, "Image Top Position"

    const-string v4, "Not a Valid GIF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-static {v3, v0, v4, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    const-string v3, "Image Width"

    const-string v4, "Not a Valid GIF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-static {v3, v0, v4, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string v3, "Image Height"

    const-string v4, "Not a Valid GIF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-static {v3, v0, v4, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    const-string v3, "Packed Fields"

    const-string v4, "Not a Valid GIF File"

    move-object/from16 v0, p3

    invoke-static {v3, v0, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v9

    if-eqz p5, :cond_0

    const-string v3, "Width"

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v3, v4, v1, v7}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v3, "Height"

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenHeight:I

    move/from16 v23, v0

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v3, v4, v1, v8}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v3, "Left Position"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v7

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v3, v4, v1, v5}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    const-string v3, "Top Position"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v8

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v3, v4, v1, v6}, Lorg/apache/commons/imaging/FormatCompliance;->checkBounds(Ljava/lang/String;III)Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PackedFields bits"

    invoke-static {v3, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printByteBits(Ljava/lang/String;B)V

    :cond_1
    shr-int/lit8 v3, v9, 0x7

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_7

    const/4 v10, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LocalColorTableFlag: "

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    shr-int/lit8 v3, v9, 0x6

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_8

    const/4 v11, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Interlace Flag: "

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    shr-int/lit8 v3, v9, 0x5

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_9

    const/4 v12, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Sort Flag: "

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v3, v9, 0x7

    int-to-byte v13, v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SizeofLocalColorTable: "

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    const/4 v14, 0x0

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;I)[B

    move-result-object v14

    :cond_6
    const/4 v15, 0x0

    if-nez p4, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v20

    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks()[B

    move-result-object v19

    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    mul-int v22, v7, v8

    new-instance v21, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object v15

    :goto_3
    new-instance v3, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    move/from16 v4, p2

    invoke-direct/range {v3 .. v15}, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;-><init>(IIIIIBZZZB[B[B)V

    return-object v3

    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/io/InputStream;->read()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "LZWMinimumCodeSize: "

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readGenericGIFBlock(Ljava/io/InputStream;I)Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    goto :goto_3
.end method

.method private readSubBlock(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "block_size"

    const-string v2, "GIF: corrupt block"

    invoke-static {v1, p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    const-string v1, "block"

    const-string v2, "GIF: corrupt block"

    invoke-static {v1, p1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private simplePow(II)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private writeAsSubBlocks(Ljava/io/OutputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    array-length v2, p2

    sub-int/2addr v2, v1

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string v5, "gif.dumpImageFile"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v4

    :cond_0
    const-string v5, ""

    invoke-virtual {v3, p1, v5}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-direct {p0, p2, v4}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gif.blocks: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    iget-object v4, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    const/4 v6, 0x4

    invoke-virtual {p0, p1, v4, v5, v6}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 27
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

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object v12

    if-nez v12, :cond_0

    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    const-string v26, "GIF: Couldn\'t read blocks"

    invoke-direct/range {v25 .. v26}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_0
    iget-object v7, v12, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    if-nez v7, :cond_1

    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    const-string v26, "GIF: Couldn\'t read Header"

    invoke-direct/range {v25 .. v26}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_1
    iget-object v0, v12, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    move-object/from16 v25, v0

    const/16 v26, 0x2c

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    if-nez v10, :cond_2

    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    const-string v26, "GIF: Couldn\'t read Image Descriptor"

    invoke-direct/range {v25 .. v26}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_2
    iget-object v0, v12, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    move-object/from16 v25, v0

    const/16 v26, 0x21f9

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    iget v0, v10, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    move/from16 v22, v0

    iget v9, v10, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    iget-boolean v0, v6, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparency:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    const/4 v8, 0x1

    :cond_3
    new-instance v11, Lorg/apache/commons/imaging/common/ImageBuilder;

    move/from16 v0, v22

    invoke-direct {v11, v0, v9, v8}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    iget-object v0, v10, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTable:[B

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    iget-object v0, v10, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTable:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v3

    :goto_0
    const/16 v21, -0x1

    if-eqz v6, :cond_4

    if-eqz v8, :cond_4

    iget v0, v6, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparentColorIndex:I

    move/from16 v21, v0

    :cond_4
    const/4 v4, 0x0

    add-int/lit8 v25, v9, 0x7

    div-int/lit8 v16, v25, 0x8

    add-int/lit8 v25, v9, 0x3

    div-int/lit8 v17, v25, 0x8

    add-int/lit8 v25, v9, 0x1

    div-int/lit8 v18, v25, 0x4

    div-int/lit8 v19, v9, 0x2

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v9, :cond_e

    iget-boolean v0, v10, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->interlaceFlag:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c

    move/from16 v20, v15

    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    mul-int/lit8 v24, v20, 0x8

    :goto_2
    const/16 v23, 0x0

    move v5, v4

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    iget-object v0, v10, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageData:[B

    move-object/from16 v25, v0

    add-int/lit8 v4, v5, 0x1

    aget-byte v25, v25, v5

    move/from16 v0, v25

    and-int/lit16 v13, v0, 0xff

    aget v14, v3, v13

    move/from16 v0, v21

    if-ne v0, v13, :cond_5

    const/4 v14, 0x0

    :cond_5
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1, v14}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v23, v23, 0x1

    move v5, v4

    goto :goto_3

    :cond_6
    iget-object v0, v12, Lorg/apache/commons/imaging/formats/gif/ImageContents;->globalColorTable:[B

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    iget-object v0, v12, Lorg/apache/commons/imaging/formats/gif/ImageContents;->globalColorTable:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getColorTable([B)[I

    move-result-object v3

    goto :goto_0

    :cond_7
    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    const-string v26, "Gif: No Color Table"

    invoke-direct/range {v25 .. v26}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_8
    sub-int v20, v20, v16

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    mul-int/lit8 v25, v20, 0x8

    add-int/lit8 v24, v25, 0x4

    goto :goto_2

    :cond_9
    sub-int v20, v20, v17

    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    mul-int/lit8 v25, v20, 0x4

    add-int/lit8 v24, v25, 0x2

    goto :goto_2

    :cond_a
    sub-int v20, v20, v18

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    mul-int/lit8 v25, v20, 0x2

    add-int/lit8 v24, v25, 0x1

    goto :goto_2

    :cond_b
    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    const-string v26, "Gif: Strange Row"

    invoke-direct/range {v25 .. v26}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_c
    move/from16 v24, v15

    goto :goto_2

    :cond_d
    add-int/lit8 v15, v15, 0x1

    move v4, v5

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v11}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v25

    return-object v25
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".gif"

    return-object v0
.end method

.method public getFormatCompliance(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/FormatCompliance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/FormatCompliance;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/FormatCompliance;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/ImageContents;

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
    .locals 34
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

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object v22

    if-nez v22, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "GIF: Couldn\'t read blocks"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "GIF: Couldn\'t read Header"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, v22

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v7, 0x2c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v25

    check-cast v25, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    if-nez v25, :cond_2

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "GIF: Couldn\'t read ImageDescriptor"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, v22

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v7, 0x21f9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v24

    check-cast v24, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;

    move-object/from16 v0, v25

    iget v8, v0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    move-object/from16 v0, v25

    iget v15, v0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    move-object/from16 v0, v22

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->getComments(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v21

    iget-byte v2, v0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->colorResolution:B

    add-int/lit8 v4, v2, 0x1

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->GIF:Lorg/apache/commons/imaging/ImageFormats;

    const-string v23, "GIF Graphics Interchange Format"

    const-string v26, "image/gif"

    const/16 v27, -0x1

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->interlaceFlag:Z

    move/from16 v16, v0

    const/16 v29, 0x48

    int-to-double v10, v15

    const-wide/high16 v32, 0x4052000000000000L    # 72.0

    div-double v10, v10, v32

    double-to-float v14, v10

    const/16 v28, 0x48

    int-to-double v10, v8

    const-wide/high16 v32, 0x4052000000000000L    # 72.0

    div-double v10, v10, v32

    double-to-float v12, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Gif "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    iget-byte v7, v7, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version1:B

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    iget-byte v7, v7, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version2:B

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    iget-byte v7, v7, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version3:B

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v17, 0x0

    if-eqz v24, :cond_3

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparency:Z

    if-eqz v2, :cond_3

    const/16 v17, 0x1

    :cond_3
    const/16 v30, 0x1

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v2, Lorg/apache/commons/imaging/ImageInfo;

    const-string v7, "GIF Graphics Interchange Format"

    const-string v9, "image/gif"

    const/4 v10, -0x1

    const/16 v11, 0x48

    const/16 v13, 0x48

    const/16 v18, 0x1

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v2
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

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Z)Lorg/apache/commons/imaging/formats/gif/ImageContents;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "GIF: Couldn\'t read blocks"

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v0, v1, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    if-nez v0, :cond_1

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "GIF: Couldn\'t read Header"

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    const/16 v4, 0x2c

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->findBlock(Ljava/util/List;I)Lorg/apache/commons/imaging/formats/gif/GifBlock;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;

    if-nez v2, :cond_2

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "GIF: Couldn\'t read ImageDescriptor"

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Ljava/awt/Dimension;

    iget v4, v2, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    iget v5, v2, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

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

    const-string v0, "Graphics Interchange Format"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 22
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

    const/4 v14, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readHeader(Ljava/io/InputStream;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    move-result-object v12

    iget-boolean v0, v12, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->globalColorTableFlag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    iget-byte v0, v12, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sizeOfGlobalColorTable:B

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readColorTable(Ljava/io/InputStream;I)[B

    :cond_0
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v12, v14, v1, v10}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->readBlocks(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;Ljava/io/InputStream;ZLorg/apache/commons/imaging/FormatCompliance;)Ljava/util/List;

    move-result-object v7

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/gif/GifBlock;

    iget v0, v5, Lorg/apache/commons/imaging/formats/gif/GifBlock;->blockCode:I

    move/from16 v18, v0

    const/16 v19, 0x21ff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object v0, v5

    check-cast v0, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;

    move-object v11, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks(Z)[B

    move-result-object v6

    array-length v0, v6

    move/from16 v18, v0

    sget-object v19, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    const/16 v18, 0x0

    sget-object v19, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    const/16 v20, 0x0

    sget-object v21, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v6, v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x100

    move/from16 v0, v18

    new-array v4, v0, [B

    const/4 v15, 0x0

    :goto_1
    const/16 v18, 0xff

    move/from16 v0, v18

    if-gt v15, v0, :cond_2

    rsub-int v0, v15, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v4, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    array-length v0, v6

    move/from16 v18, v0

    sget-object v19, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v4

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    array-length v0, v6

    move/from16 v18, v0

    array-length v0, v4

    move/from16 v19, v0

    sub-int v18, v18, v19

    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v6, v0, v4, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v18

    if-nez v18, :cond_3

    new-instance v18, Lorg/apache/commons/imaging/ImageReadException;

    const-string v19, "XMP block in GIF missing magic trailer."

    invoke-direct/range {v18 .. v19}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v18

    :cond_3
    :try_start_1
    new-instance v17, Ljava/lang/String;

    sget-object v18, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    array-length v0, v6

    move/from16 v19, v0

    sget-object v20, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    array-length v0, v4

    move/from16 v21, v0

    add-int v20, v20, v21

    sub-int v19, v19, v20

    const-string v20, "utf-8"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v6, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_2
    new-instance v18, Lorg/apache/commons/imaging/ImageReadException;

    const-string v19, "Invalid XMP Block in GIF."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    :goto_2
    return-object v18

    :cond_5
    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    new-instance v18, Lorg/apache/commons/imaging/ImageReadException;

    const-string v19, "More than one XMP Block in GIF."

    invoke-direct/range {v18 .. v19}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_6
    const/4 v8, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto :goto_2
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

    new-instance v29, Ljava/util/HashMap;

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sget-object v41, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v42, "VERBOSE"

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v35

    const-string v41, "FORMAT"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_0

    const-string v41, "FORMAT"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v41, "VERBOSE"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1

    const-string v41, "VERBOSE"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/16 v38, 0x0

    const-string v41, "XMP_XML"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    const-string v41, "XMP_XML"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    const-string v41, "XMP_XML"

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_3

    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    new-instance v41, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Unknown parameter: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v41

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v36

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v17

    new-instance v41, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct/range {v41 .. v41}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v25, 0xff

    :goto_0
    new-instance v41, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct/range {v41 .. v41}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v27

    if-nez v27, :cond_6

    new-instance v41, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct/range {v41 .. v41}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object v27

    if-eqz v35, :cond_4

    sget-object v41, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v42, "quantizing"

    invoke-virtual/range {v41 .. v42}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-nez v27, :cond_7

    new-instance v41, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v42, "Gif: can\'t write images with more than 256 colors"

    invoke-direct/range {v41 .. v42}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v41

    :cond_5
    const/16 v25, 0x100

    goto :goto_0

    :cond_6
    if-eqz v35, :cond_4

    sget-object v41, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v42, "exact palette"

    invoke-virtual/range {v41 .. v42}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-interface/range {v27 .. v27}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v42

    if-eqz v16, :cond_8

    const/16 v41, 0x1

    :goto_2
    add-int v28, v42, v41

    new-instance v8, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v41, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-direct {v8, v0, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const/16 v41, 0x47

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v41, 0x49

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v41, 0x46

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v41, 0x38

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v41, 0x39

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v41, 0x61

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v41, 0x80

    move/from16 v0, v28

    move/from16 v1, v41

    if-le v0, v1, :cond_9

    const/4 v10, 0x7

    :goto_3
    const/16 v41, 0x1

    add-int/lit8 v42, v10, 0x1

    shl-int v11, v41, v42

    int-to-byte v9, v10

    and-int/lit8 v41, v9, 0x7

    mul-int/lit8 v26, v41, 0x10

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v6, 0x0

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v30, 0x0

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, 0x21

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, -0x7

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, 0x4

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-eqz v16, :cond_10

    const/16 v26, 0x1

    :goto_4
    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-eqz v16, :cond_11

    invoke-interface/range {v27 .. v27}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v41

    :goto_5
    move/from16 v0, v41

    int-to-byte v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    if-eqz v38, :cond_13

    const/16 v41, 0x21

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, 0xff

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    sget-object v41, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    sget-object v41, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->XMP_APPLICATION_ID_AND_AUTH_CODE:[B

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    const-string v41, "utf-8"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    const/16 v24, 0x0

    :goto_6
    const/16 v41, 0xff

    move/from16 v0, v24

    move/from16 v1, v41

    if-gt v0, v1, :cond_12

    move/from16 v0, v24

    rsub-int v0, v0, 0xff

    move/from16 v41, v0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    :cond_8
    const/16 v41, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v41, 0x40

    move/from16 v0, v28

    move/from16 v1, v41

    if-le v0, v1, :cond_a

    const/4 v10, 0x6

    goto/16 :goto_3

    :cond_a
    const/16 v41, 0x20

    move/from16 v0, v28

    move/from16 v1, v41

    if-le v0, v1, :cond_b

    const/4 v10, 0x5

    goto/16 :goto_3

    :cond_b
    const/16 v41, 0x10

    move/from16 v0, v28

    move/from16 v1, v41

    if-le v0, v1, :cond_c

    const/4 v10, 0x4

    goto/16 :goto_3

    :cond_c
    const/16 v41, 0x8

    move/from16 v0, v28

    move/from16 v1, v41

    if-le v0, v1, :cond_d

    const/4 v10, 0x3

    goto/16 :goto_3

    :cond_d
    const/16 v41, 0x4

    move/from16 v0, v28

    move/from16 v1, v41

    if-le v0, v1, :cond_e

    const/4 v10, 0x2

    goto/16 :goto_3

    :cond_e
    const/16 v41, 0x2

    move/from16 v0, v28

    move/from16 v1, v41

    if-le v0, v1, :cond_f

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_4

    :cond_11
    const/16 v41, 0x0

    goto/16 :goto_5

    :cond_12
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_13
    const/16 v41, 0x2c

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v22, 0x1

    const/16 v21, 0x0

    const/16 v34, 0x0

    move/from16 v33, v10

    and-int/lit8 v41, v33, 0x7

    move/from16 v0, v41

    or-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v18, 0x0

    :goto_7
    move/from16 v0, v18

    if-ge v0, v11, :cond_15

    invoke-interface/range {v27 .. v27}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v41

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_14

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v32

    shr-int/lit8 v41, v32, 0x10

    move/from16 v0, v41

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    shr-int/lit8 v41, v32, 0x8

    move/from16 v0, v41

    and-int/lit16 v15, v0, 0xff

    shr-int/lit8 v41, v32, 0x0

    move/from16 v0, v41

    and-int/lit16 v7, v0, 0xff

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {v8, v15}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {v8, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    :cond_14
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_8

    :cond_15
    add-int/lit8 v23, v10, 0x1

    const/16 v41, 0x2

    move/from16 v0, v23

    move/from16 v1, v41

    if-ge v0, v1, :cond_16

    const/16 v23, 0x2

    :cond_16
    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    new-instance v13, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;

    sget-object v41, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v42, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-direct {v13, v0, v1, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;-><init>(ILjava/nio/ByteOrder;Z)V

    mul-int v41, v36, v17

    move/from16 v0, v41

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/16 v40, 0x0

    :goto_9
    move/from16 v0, v40

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a

    const/16 v37, 0x0

    :goto_a
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    const v41, 0xffffff

    and-int v32, v41, v5

    if-eqz v16, :cond_18

    shr-int/lit8 v41, v5, 0x18

    move/from16 v0, v41

    and-int/lit16 v3, v0, 0xff

    const/16 v4, 0xff

    const/16 v41, 0xff

    move/from16 v0, v41

    if-ge v3, v0, :cond_17

    invoke-interface/range {v27 .. v27}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v20

    :goto_b
    mul-int v41, v40, v36

    add-int v41, v41, v37

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v42, v0

    aput-byte v42, v19, v41

    add-int/lit8 v37, v37, 0x1

    goto :goto_a

    :cond_17
    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v20

    goto :goto_b

    :cond_18
    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v20

    goto :goto_b

    :cond_19
    add-int/lit8 v40, v40, 0x1

    goto :goto_9

    :cond_1a
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->compress([B)[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Lorg/apache/commons/imaging/formats/gif/GifImageParser;->writeAsSubBlocks(Ljava/io/OutputStream;[B)V

    const/16 v41, 0x3b

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    return-void
.end method
