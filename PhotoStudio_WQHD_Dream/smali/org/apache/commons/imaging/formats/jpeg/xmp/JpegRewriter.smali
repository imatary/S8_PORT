.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JpegSegmentOverflowException;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;,
        Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    }
.end annotation


# static fields
.field private static final EXIF_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

.field private static final JPEG_BYTE_ORDER:Ljava/nio/ByteOrder;

.field private static final PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

.field private static final XMP_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->JPEG_BYTE_ORDER:Ljava/nio/ByteOrder;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->EXIF_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$2;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$2;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->XMP_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$3;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$3;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->JPEG_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method static synthetic access$000()Ljava/nio/ByteOrder;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->JPEG_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-object v0
.end method


# virtual methods
.method protected analyzeJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$4;-><init>(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;Ljava/util/List;Ljava/util/List;)V

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    new-instance v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    invoke-direct {v3, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieces;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;",
            "Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    instance-of v3, v1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-interface {p2, v3}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;->filter(Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;)Z

    move-result v4

    if-nez p3, :cond_1

    const/4 v3, 0x1

    :goto_1
    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-nez p3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method protected findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            "U:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TU;>;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    instance-of v5, v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v2

    check-cast v4, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, -0x1

    if-ne v1, v5, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_3

    new-instance v5, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v6, "JPEG file has no APP segments."

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-interface {v3, v6, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_2
    return-object v3

    :cond_4
    add-int/lit8 v5, v1, 0x1

    invoke-interface {v3, v5, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2
.end method

.method protected insertBeforeFirstAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            "U:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TU;>;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    instance-of v5, v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v2

    check-cast v4, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v0, v6, :cond_0

    move v0, v1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-ne v0, v6, :cond_3

    new-instance v5, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v6, "JPEG file has no APP segments."

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-interface {v3, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-object v3
.end method

.method protected removeExifSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->EXIF_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected removeXmpSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->XMP_SEGMENT_FILTER:Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JFIFPiece;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object p1, v4, v5

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3

    :cond_0
    const/4 v0, 0x1

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object p1, v3, v5

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void
.end method
