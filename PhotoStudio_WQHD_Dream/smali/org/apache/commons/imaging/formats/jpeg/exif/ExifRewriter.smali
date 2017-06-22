.class public Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceImageData;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;,
        Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;Ljava/util/List;Ljava/util/List;)V

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;

    invoke-direct {v3, v1, v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method private writeExifSegment(Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Z)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_0

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;->write(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v11, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v11, p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;

    instance-of v11, v10, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;

    if-eqz v11, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_4

    if-eqz p3, :cond_4

    const/16 v11, -0x1f

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v7

    move-object/from16 v0, p3

    array-length v11, v0

    const v12, 0xffff

    if-le v11, v12, :cond_2

    new-instance v11, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APP1 Segment is too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/io/Closeable;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v2, v12}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v11

    :cond_2
    :try_start_1
    move-object/from16 v0, p3

    array-length v11, v0

    add-int/lit8 v8, v11, 0x2

    int-to-short v11, v8

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v9

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;

    iget v11, v3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->marker:I

    const v12, 0xffe0

    if-ne v11, v12, :cond_3

    const/4 v6, 0x1

    :cond_3
    new-instance v11, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;

    const v12, 0xffe1

    move-object/from16 v0, p3

    invoke-direct {v11, v12, v7, v9, v0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;-><init>(I[B[B[B)V

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    const/4 v1, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;

    instance-of v11, v10, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegmentExif;

    if-eqz v11, :cond_7

    if-nez v1, :cond_5

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    const/16 v11, -0x1f

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v7

    move-object/from16 v0, p3

    array-length v11, v0

    const v12, 0xffff

    if-le v11, v12, :cond_6

    new-instance v11, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APP1 Segment is too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_6
    move-object/from16 v0, p3

    array-length v11, v0

    add-int/lit8 v8, v11, 0x2

    int-to-short v11, v8

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;)[B

    move-result-object v9

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v9}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_7
    invoke-virtual {v10, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_8
    const/4 v2, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/io/Closeable;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v2, v11}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public removeExifMetadata(Ljava/io/File;Ljava/io/OutputStream;)V
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

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->removeExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeExifMetadata(Ljava/io/InputStream;Ljava/io/OutputStream;)V
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

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->removeExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    return-void
.end method

.method public removeExifMetadata([BLjava/io/OutputStream;)V
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

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->removeExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public updateExifMetadataLossless(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
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

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossless(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
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

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossless(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;

    move-result-object v3

    iget-object v5, v3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    iget-object v7, v3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->exifPieces:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v1, 0x0

    iget-object v7, v3, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->exifPieces:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;

    iget-object v0, v1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieceSegment;->segmentData:[B

    const-string v7, "trimmed exif bytes"

    const/4 v8, 0x6

    invoke-static {v7, v0, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->remainingBytes(Ljava/lang/String;[BI)[B

    move-result-object v0

    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;

    iget-object v7, p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v6, v7, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossless;-><init>(Ljava/nio/ByteOrder;[B)V

    :goto_0
    const/4 v2, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v6, p3, v7}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeExifSegment(Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Z)[B

    move-result-object v4

    invoke-direct {p0, p2, v5, v4}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    return-void

    :cond_0
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    iget-object v7, p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>(Ljava/nio/ByteOrder;)V

    goto :goto_0
.end method

.method public updateExifMetadataLossless([BLjava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
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

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossy(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
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

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossy(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
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

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method

.method public updateExifMetadataLossy(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;

    move-result-object v1

    iget-object v3, v1, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;

    iget-object v5, p3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterLossy;-><init>(Ljava/nio/ByteOrder;)V

    const/4 v0, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v4, p3, v5}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeExifSegment(Lorg/apache/commons/imaging/formats/tiff/write/TiffImageWriterBase;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;Z)[B

    move-result-object v2

    invoke-direct {p0, p2, v3, v2}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    return-void
.end method

.method public updateExifMetadataLossy([BLjava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V
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

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;)V

    return-void
.end method
