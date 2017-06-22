.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkPlte.java"


# instance fields
.field private final rgb:[I


# direct methods
.method public constructor <init>(III[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    rem-int/lit8 v6, p1, 0x3

    if-eqz v6, :cond_0

    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PLTE: wrong length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    div-int/lit8 v1, p1, 0x3

    new-array v6, v1, [I

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "red["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Not a Valid Png File: PLTE Corrupt"

    invoke-static {v6, v4, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "green["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Not a Valid Png File: PLTE Corrupt"

    invoke-static {v6, v4, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blue["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Not a Valid Png File: PLTE Corrupt"

    invoke-static {v6, v4, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    const/high16 v7, -0x1000000

    and-int/lit16 v8, v5, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    and-int/lit16 v8, v2, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    and-int/lit16 v8, v0, 0xff

    shl-int/lit8 v8, v8, 0x0

    or-int/2addr v7, v8

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public correct(Lorg/apache/commons/imaging/formats/png/GammaCorrection;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/formats/png/GammaCorrection;->correctARGB(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getRGB(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PNG: unknown Palette reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRgb()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;->rgb:[I

    return-object v0
.end method
