.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;
.super Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.source "JpegXmpRewriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;-><init>()V

    return-void
.end method

.method private writeXmpSegment([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public removeXmpXml(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeXmpXml(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public removeXmpXml([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public updateXmpXml(Ljava/io/File;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public updateXmpXml(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public updateXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object v1

    iget-object v3, v1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "utf-8"

    invoke-virtual {p3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v0, 0x0

    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    array-length v7, v6

    const v8, 0xffff

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, v6, v0, v5}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->writeXmpSegment([BII)[B

    move-result-object v4

    new-instance v7, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const v8, 0xffe1

    invoke-direct {v7, v8, v4}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public updateXmpXml([BLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method
