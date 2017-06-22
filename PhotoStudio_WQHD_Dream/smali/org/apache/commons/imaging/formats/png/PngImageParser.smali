.class public Lorg/apache/commons/imaging/formats/png/PngImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PngImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/png/PngImageParser$1;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".png"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".png"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
            ">;",
            "Lorg/apache/commons/imaging/formats/png/ChunkType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    iget v3, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    iget v4, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v3, v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static getChunkTypeName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTransparencyFilter(Lorg/apache/commons/imaging/formats/png/PngColorType;Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;)Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Simple Transparency not compatible with ColorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;-><init>([B)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterTrueColor;-><init>([B)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterIndexedColor;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterIndexedColor;-><init>([B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private keepChunk(I[Lorg/apache/commons/imaging/formats/png/ChunkType;)Z
    .locals 6

    const/4 v4, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    iget v5, v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-eq v5, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private readChunks(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "[",
            "Lorg/apache/commons/imaging/formats/png/ChunkType;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const-string v6, "Length"

    const-string v7, "Not a Valid PNG File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, p1, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    const-string v6, "ChunkType"

    const-string v7, "Not a Valid PNG File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, p1, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "ChunkType"

    invoke-static {v6, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    const-string v6, "Length"

    invoke-virtual {p0, v6, v4, v9}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_2
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->keepChunk(I[Lorg/apache/commons/imaging/formats/png/ChunkType;)Z

    move-result v3

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    const-string v6, "Chunk Data"

    const-string v7, "Not a Valid PNG File: Couldn\'t read Chunk Data."

    invoke-static {v6, p1, v4, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    const-string v6, "bytes"

    array-length v7, v0

    invoke-virtual {p0, v6, v7, v9}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->debugNumber(Ljava/lang/String;II)V

    :cond_3
    const-string v6, "CRC"

    const-string v7, "Not a Valid PNG File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, p1, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    if-eqz v3, :cond_e

    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_5

    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p3, :cond_e

    :goto_2
    return-object v5

    :cond_4
    int-to-long v6, v4

    const-string v8, "Not a Valid PNG File"

    invoke-static {p1, v6, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_6

    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_7

    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_8

    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_9

    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_a

    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_b

    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_c

    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_d

    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    new-instance v6, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    invoke-direct {v6, v4, v1, v2, v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    iget v6, v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    if-ne v1, v6, :cond_0

    goto/16 :goto_2
.end method

.method private readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "[",
            "Lorg/apache/commons/imaging/formats/png/ChunkType;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;",
            ">;"
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

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readSignature(Ljava/io/InputStream;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;
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


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v8, ""

    invoke-virtual {v4, p1, v8}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-direct {p0, p2, v8, v6}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v2

    sget-object v8, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, v2, v8}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v7, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "PNG contains more than one Header"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Color: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v9}, Lorg/apache/commons/imaging/formats/png/PngColorType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chunks: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v8, v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    invoke-static {p1, v6, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    move v6, v7

    goto/16 :goto_0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 49
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

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct/range {p2 .. p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v46, "VERBOSE"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_0

    const-string v46, "VERBOSE"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    sget-object v48, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v48, v46, v47

    const/16 v47, 0x1

    sget-object v48, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v48, v46, v47

    const/16 v47, 0x2

    sget-object v48, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v48, v46, v47

    const/16 v47, 0x3

    sget-object v48, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v48, v46, v47

    const/16 v47, 0x4

    sget-object v48, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v48, v46, v47

    const/16 v47, 0x5

    sget-object v48, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v48, v46, v47

    const/16 v47, 0x6

    sget-object v48, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v48, v46, v47

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v22

    if-eqz v22, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v46

    if-eqz v46, :cond_3

    :cond_1
    new-instance v46, Lorg/apache/commons/imaging/ImageReadException;

    const-string v47, "PNG: no chunks"

    invoke-direct/range {v46 .. v47}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_2
    new-instance v46, Ljava/util/HashMap;

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 p2, v46

    goto :goto_0

    :cond_3
    sget-object v46, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_4

    new-instance v46, Lorg/apache/commons/imaging/ImageReadException;

    const-string v47, "PNG contains more than one Header"

    invoke-direct/range {v46 .. v47}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_4
    const/16 v46, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    sget-object v46, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_5

    new-instance v46, Lorg/apache/commons/imaging/ImageReadException;

    const-string v47, "PNG contains more than one Palette"

    invoke-direct/range {v46 .. v47}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_5
    const/4 v12, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_6

    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;

    :cond_6
    sget-object v46, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v46

    if-eqz v46, :cond_7

    new-instance v46, Lorg/apache/commons/imaging/ImageReadException;

    const-string v47, "PNG missing image data"

    invoke-direct/range {v46 .. v47}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_7
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_8

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    move-object/from16 v36, v15

    check-cast v36, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIdat;->getBytes()[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    const/16 v20, 0x0

    const/4 v14, 0x0

    sget-object v46, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->isEmpty()Z

    move-result v46

    if-nez v46, :cond_9

    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getTransparencyFilter(Lorg/apache/commons/imaging/formats/png/PngColorType;Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;)Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;

    move-result-object v14

    :cond_9
    const/16 v34, 0x0

    const/4 v13, 0x0

    sget-object v46, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v41

    sget-object v46, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v28

    sget-object v46, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v33

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_a

    new-instance v46, Lorg/apache/commons/imaging/ImageReadException;

    const-string v47, "PNG: unexpected sRGB chunk"

    invoke-direct/range {v46 .. v47}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_a
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_b

    new-instance v46, Lorg/apache/commons/imaging/ImageReadException;

    const-string v47, "PNG: unexpected gAMA chunk"

    invoke-direct/range {v46 .. v47}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_b
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_c

    new-instance v46, Lorg/apache/commons/imaging/ImageReadException;

    const-string v47, "PNG: unexpected iCCP chunk"

    invoke-direct/range {v46 .. v47}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_c
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v46

    if-eqz v46, :cond_d

    sget-object v46, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v47, "sRGB, no color management neccesary."

    invoke-virtual/range {v46 .. v47}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    :goto_2
    move-object/from16 v0, v37

    iget v5, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    move-object/from16 v0, v37

    iget v6, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    move-object/from16 v0, v37

    iget-object v9, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    move-object/from16 v0, v37

    iget v10, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->bitDepth:I

    move-object/from16 v0, v37

    iget v0, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->filterMethod:I

    move/from16 v46, v0

    if-eqz v46, :cond_12

    new-instance v46, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "PNG: unknown FilterMethod: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v37

    iget v0, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->filterMethod:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_e
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getDebug()Z

    move-result v46

    if-eqz v46, :cond_f

    sget-object v46, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v47, "iCCP."

    invoke-virtual/range {v46 .. v47}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    const/16 v46, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;

    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->getUncompressedProfile()[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v34

    goto :goto_2

    :cond_10
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_d

    const/16 v46, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;

    invoke-virtual/range {v38 .. v38}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;->getGamma()D

    move-result-wide v30

    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    sub-double v46, v46, v30

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    cmpl-double v46, v26, v46

    if-ltz v46, :cond_11

    new-instance v13, Lorg/apache/commons/imaging/formats/png/GammaCorrection;

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v30

    move-wide/from16 v2, v46

    invoke-direct {v13, v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;-><init>(DD)V

    :cond_11
    if-eqz v13, :cond_d

    if-eqz v12, :cond_d

    invoke-virtual {v12, v13}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->correct(Lorg/apache/commons/imaging/formats/png/GammaCorrection;)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v9}, Lorg/apache/commons/imaging/formats/png/PngColorType;->getSamplesPerPixel()I

    move-result v46

    mul-int v11, v10, v46

    invoke-virtual {v9}, Lorg/apache/commons/imaging/formats/png/PngColorType;->hasAlpha()Z

    move-result v46

    if-nez v46, :cond_13

    if-eqz v14, :cond_14

    :cond_13
    const/16 v29, 0x1

    :goto_3
    invoke-virtual {v9}, Lorg/apache/commons/imaging/formats/png/PngColorType;->isGreyscale()Z

    move-result v46

    if-eqz v46, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/commons/imaging/common/BufferedImageFactory;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v29

    invoke-interface {v0, v5, v6, v1}, Lorg/apache/commons/imaging/common/BufferedImageFactory;->getGrayscaleBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v8

    :goto_4
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v7, Ljava/util/zip/InflaterInputStream;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v46, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$InterlaceMethod:[I

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->ordinal()I

    move-result v47

    aget v46, v46, v47

    packed-switch v46, :pswitch_data_0

    new-instance v46, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Unknown InterlaceMethod: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v46

    :cond_14
    const/16 v29, 0x0

    goto :goto_3

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/commons/imaging/common/BufferedImageFactory;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v29

    invoke-interface {v0, v5, v6, v1}, Lorg/apache/commons/imaging/common/BufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v8

    goto :goto_4

    :pswitch_0
    new-instance v4, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;

    invoke-direct/range {v4 .. v14}, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    :goto_5
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;->drive()V

    if-eqz v34, :cond_17

    new-instance v46, Lorg/apache/commons/imaging/icc/IccProfileParser;

    invoke-direct/range {v46 .. v46}, Lorg/apache/commons/imaging/icc/IccProfileParser;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/icc/IccProfileParser;->issRGB(Ljava/awt/color/ICC_Profile;)Z

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    if-eqz v35, :cond_16

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    if-nez v46, :cond_17

    :cond_16
    new-instance v24, Ljava/awt/color/ICC_ColorSpace;

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v25

    new-instance v46, Lorg/apache/commons/imaging/ColorTools;

    invoke-direct/range {v46 .. v46}, Lorg/apache/commons/imaging/ColorTools;-><init>()V

    move-object/from16 v0, v46

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v8, v1, v2}, Lorg/apache/commons/imaging/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v8

    :cond_17
    return-object v8

    :pswitch_1
    new-instance v4, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;

    invoke-direct/range {v4 .. v14}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getChuckTypes(Ljava/io/InputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    iget v4, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    invoke-static {v4}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->getChunkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".png"

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 7
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

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-array v3, v5, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v4, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v4, v3, v6

    invoke-direct {p0, p1, v3, v5}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "PNG contains more than one ICC Profile "

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIccp;->getUncompressedProfile()[B

    move-result-object v0

    goto :goto_0
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

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v3, 0x0

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v7, v2, v3

    const/4 v3, 0x1

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v7, v2, v3

    const/4 v3, 0x2

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v7, v2, v3

    const/4 v3, 0x3

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v7, v2, v3

    const/4 v3, 0x4

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v7, v2, v3

    const/4 v3, 0x5

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v7, v2, v3

    const/4 v3, 0x6

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v7, v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "PNG: no chunks"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "PNG contains more than one Header"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    const/16 v17, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v42

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v17, 0x1

    :goto_0
    const/16 v37, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PNG contains more than one pHYs: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, v35

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/PngColorType;->hasAlpha()Z

    move-result v17

    goto :goto_0

    :cond_4
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;

    :cond_5
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v41

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v44

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v29

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    move-object/from16 v38, v40

    check-cast v38, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v38

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v38 .. v38}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->getContents()Lorg/apache/commons/imaging/formats/png/PngText;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    move-object/from16 v39, v43

    check-cast v39, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v39

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v39 .. v39}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->getContents()Lorg/apache/commons/imaging/formats/png/PngText;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    move-object/from16 v36, v28

    check-cast v36, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v36 .. v36}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->getContents()Lorg/apache/commons/imaging/formats/png/PngText;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object/from16 v0, v35

    iget v2, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->bitDepth:I

    move-object/from16 v0, v35

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/png/PngColorType;->getSamplesPerPixel()I

    move-result v3

    mul-int v4, v2, v3

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->PNG:Lorg/apache/commons/imaging/ImageFormats;

    const-string v26, "PNG Portable Network Graphics"

    move-object/from16 v0, v35

    iget v8, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    const-string v32, "image/png"

    const/16 v33, 0x1

    move-object/from16 v0, v35

    iget v15, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    move-object/from16 v0, v35

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->isProgressive()Z

    move-result v16

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    if-eqz v37, :cond_9

    move-object/from16 v0, v37

    iget v2, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->unitSpecifier:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const-wide v30, 0x3f9a027525460aa6L    # 0.0254

    move-object/from16 v0, v37

    iget v2, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitXAxis:I

    int-to-double v2, v2

    const-wide v46, 0x3f9a027525460aa6L    # 0.0254

    mul-double v2, v2, v46

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v13, v2

    int-to-double v2, v15

    move-object/from16 v0, v37

    iget v7, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitXAxis:I

    int-to-double v0, v7

    move-wide/from16 v46, v0

    const-wide v48, 0x3f9a027525460aa6L    # 0.0254

    mul-double v46, v46, v48

    div-double v2, v2, v46

    double-to-float v14, v2

    move-object/from16 v0, v37

    iget v2, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitYAxis:I

    int-to-double v2, v2

    const-wide v46, 0x3f9a027525460aa6L    # 0.0254

    mul-double v2, v2, v46

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v11, v2

    int-to-double v2, v8

    move-object/from16 v0, v37

    iget v7, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitYAxis:I

    int-to-double v0, v7

    move-wide/from16 v46, v0

    const-wide v48, 0x3f9a027525460aa6L    # 0.0254

    mul-double v46, v46, v48

    div-double v2, v2, v46

    double-to-float v12, v2

    :cond_9
    const-string v25, "Png"

    const/16 v18, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->filterChunks(Ljava/util/List;Lorg/apache/commons/imaging/formats/png/ChunkType;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    const/16 v18, 0x1

    :cond_a
    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    move-object/from16 v0, v35

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Png: Unknown ColorType: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    :goto_4
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v2, Lorg/apache/commons/imaging/formats/png/PngImageInfo;

    const-string v3, "Png"

    const-string v7, "PNG Portable Network Graphics"

    const-string v9, "image/png"

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v21}, Lorg/apache/commons/imaging/formats/png/PngImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;Ljava/util/List;)V

    return-object v2

    :pswitch_1
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-array v2, v4, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v3, v2, v5

    invoke-direct {p0, p1, v2, v4}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Png: No chunks"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "PNG contains more than one Header"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;

    new-instance v2, Ljava/awt/Dimension;

    iget v3, v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->width:I

    iget v4, v1, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkIhdr;->height:I

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    return-object v2
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
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
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v6, 0x0

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v7, v5, v6

    sget-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v6, v5, v8

    invoke-direct {p0, p1, v5, v8}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3

    :cond_2
    new-instance v3, Lorg/apache/commons/imaging/common/GenericImageMetadata;

    invoke-direct {v3}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    move-object v4, v0

    check-cast v4, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;->getKeyword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Png-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
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

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v6, v9, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    sget-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    aput-object v7, v6, v8

    invoke-direct {p0, p1, v6, v8}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;

    move-object v3, v0

    check-cast v3, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->getKeyword()Ljava/lang/String;

    move-result-object v6

    const-string v7, "XML:com.adobe.xmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_4

    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    const-string v6, "PNG contains more than one XMP chunk."

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public hasChuckType(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/png/ChunkType;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readSignature(Ljava/io/InputStream;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    const/4 v6, 0x1

    invoke-direct {p0, v2, v3, v6}, Lorg/apache/commons/imaging/formats/png/PngImageParser;->readChunks(Ljava/io/InputStream;[Lorg/apache/commons/imaging/formats/png/ChunkType;Z)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v3

    :cond_0
    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v3

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3
.end method

.method public readSignature(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngConstants;->PNG_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    const-string v1, "Not a Valid PNG Segment: Incorrect Signature"

    invoke-static {p1, v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    return-void
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

    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngWriter;

    invoke-direct {v0, p3}, Lorg/apache/commons/imaging/formats/png/PngWriter;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method
