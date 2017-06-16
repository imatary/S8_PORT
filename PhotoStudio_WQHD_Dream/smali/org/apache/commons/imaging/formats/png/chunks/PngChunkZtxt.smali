.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;
.source "PngChunkZtxt.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;-><init>(III[B)V

    invoke-static {p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([B)I

    move-result v3

    if-gez v3, :cond_0

    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    const-string v6, "PNG zTXt chunk keyword is unterminated."

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, p4, v7, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->keyword:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, p4, v3

    if-eqz v2, :cond_1

    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PNG zTXt chunk has unexpected compression method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    array-length v5, p4

    sub-int v1, v5, v4

    new-array v0, v1, [B

    invoke-static {p4, v4, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContents()Lorg/apache/commons/imaging/formats/png/PngText;
    .locals 3

    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->text:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkZtxt;->text:Ljava/lang/String;

    return-object v0
.end method
