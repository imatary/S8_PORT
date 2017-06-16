.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;
.source "PngChunkItxt.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final languageTag:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final translatedKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;-><init>(III[B)V

    invoke-static {p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([B)I

    move-result v7

    if-gez v7, :cond_0

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    const-string v9, "PNG iTXt chunk keyword is not terminated."

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ISO-8859-1"

    invoke-direct {v8, p4, v9, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->keyword:Ljava/lang/String;

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v6, v5, 0x1

    aget-byte v3, p4, v5

    if-eqz v3, :cond_1

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PNG iTXt chunk has invalid compression flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v5, v6, 0x1

    aget-byte v4, p4, v6

    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PNG iTXt chunk has unexpected compression method: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([BI)I

    move-result v7

    if-gez v7, :cond_4

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    const-string v9, "PNG iTXt chunk language tag is not terminated."

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v5

    const-string v10, "ISO-8859-1"

    invoke-direct {v8, p4, v5, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->languageTag:Ljava/lang/String;

    add-int/lit8 v5, v7, 0x1

    invoke-static {p4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([BI)I

    move-result v7

    if-gez v7, :cond_5

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    const-string v9, "PNG iTXt chunk translated keyword is not terminated."

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v5

    const-string v10, "utf-8"

    invoke-direct {v8, p4, v5, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->translatedKeyword:Ljava/lang/String;

    add-int/lit8 v5, v7, 0x1

    if-eqz v0, :cond_6

    array-length v8, p4

    sub-int v2, v8, v5

    new-array v1, v2, [B

    const/4 v8, 0x0

    invoke-static {p4, v5, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/util/zip/InflaterInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v10}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object v9

    const-string v10, "utf-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    :goto_1
    return-void

    :cond_6
    new-instance v8, Ljava/lang/String;

    array-length v9, p4

    sub-int/2addr v9, v5

    const-string v10, "utf-8"

    invoke-direct {v8, p4, v5, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getContents()Lorg/apache/commons/imaging/formats/png/PngText;
    .locals 5

    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->languageTag:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->translatedKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkItxt;->text:Ljava/lang/String;

    return-object v0
.end method
