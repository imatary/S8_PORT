.class public Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;
.super Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.source "JpegIptcRewriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;-><init>()V

    return-void
.end method


# virtual methods
.method public removeIPTC(Ljava/io/File;Ljava/io/OutputStream;)V
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

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeIPTC(Ljava/io/InputStream;Ljava/io/OutputStream;)V
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

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object v1

    iget-object v8, v1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    invoke-virtual {p0, v8}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_0

    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Image contains more than one Photoshop App13 segment."

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    invoke-virtual {p0, v8}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    iget-object v14, v9, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {v13, v14, v10}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getNonIptcBlocks()Ljava/util/List;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-direct {v3, v5, v2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance v13, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual {v13, v3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->writePhotoshopApp13Segment(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)[B

    move-result-object v12

    new-instance v6, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    iget v13, v9, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    invoke-direct {v6, v13, v12}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v4, v13, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v4}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public removeIPTC([BLjava/io/OutputStream;)V
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

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeIPTC(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
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

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-void
.end method

.method public writeIPTC(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
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

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-void
.end method

.method public writeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object v3

    iget-object v10, v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    invoke-virtual {p0, v10}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_0

    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Image contains more than one Photoshop App13 segment."

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    invoke-virtual {p0, v10}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getNonIptcBlocks()Ljava/util/List;

    move-result-object v6

    new-instance v13, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->writeIPTCBlock(Ljava/util/List;)[B

    move-result-object v5

    const/16 v2, 0x404

    const/4 v13, 0x0

    new-array v1, v13, [B

    new-instance v4, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    const/16 v13, 0x404

    invoke-direct {v4, v13, v1, v5}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;-><init>(I[B[B)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object v13

    invoke-direct {v7, v13, v6}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance v13, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {v13}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;-><init>()V

    invoke-virtual {v13, v7}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->writePhotoshopApp13Segment(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)[B

    move-result-object v12

    new-instance v9, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const v13, 0xffed

    invoke-direct {v9, v13, v12}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    const/4 v13, 0x1

    new-array v13, v13, [Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {p0, v8, v13}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v8}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void
.end method

.method public writeIPTC([BLjava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
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

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-void
.end method
