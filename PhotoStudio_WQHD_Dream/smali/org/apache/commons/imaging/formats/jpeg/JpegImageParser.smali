.class public Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "JpegImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".jpg"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".jpeg"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;I[I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->keepMarker(I[I)Z

    move-result v0

    return v0
.end method

.method private assembleSegments(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/List;Z)[B
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/List;Z)[B

    move-result-object v1

    goto :goto_0
.end method

.method private assembleSegments(Ljava/util/List;Z)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;",
            ">;Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    const-string v9, "No App2 Segments Found."

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    iget v2, v8, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v2, :cond_1

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App2 Segments Missing.  Found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Expected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz p2, :cond_2

    move v3, v9

    :goto_0
    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    add-int v8, v0, v3

    iget v10, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    if-eq v8, v10, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->dumpSegments(Ljava/util/List;)V

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incoherent App2 Segment Ordering.  i: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", segment["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "].curMarker: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget v8, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    if-eq v2, v8, :cond_4

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->dumpSegments(Ljava/util/List;)V

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inconsistent App2 Segment Count info.  markerCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", segment["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "].numMarkers: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    new-array v5, v7, [B

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v8, v9, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v4, v8

    goto :goto_2

    :cond_6
    return-object v5
.end method

.method private dumpSegments(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpSegments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    return-void
.end method

.method private filterAPP1Segments(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    move-object v3, v2

    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->isExifAPP1Segment(Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static isExifAPP1Segment(Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->getSegmentData()[B

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result v0

    return v0
.end method

.method private keepMarker(I[I)Z
    .locals 5

    const/4 v4, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    if-eq v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v6, "jpeg.dumpImageFile"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v5

    :cond_0
    const-string v6, ""

    invoke-virtual {v1, p1, v6}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {p0, p2, v6, v5}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    const-string v6, "No Segments Found."

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": marker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->length:I

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
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

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegDecoder;->decode(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".jpg"

    return-object v0
.end method

.method public getExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getExifRawData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v1, "READ_THUMBNAILS"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "READ_THUMBNAILS"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;-><init>()V

    invoke-virtual {v1, v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageParser;->getMetadata([BLjava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    goto :goto_0
.end method

.method public getExifRawData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v5, v9, [I

    const v6, 0xffe1

    aput v6, v5, v8

    invoke-virtual {p0, p1, v5, v8}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->filterAPP1Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exif_segments.size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v9, :cond_3

    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    const-string v5, "Imaging currently can\'t parse EXIF metadata split across multiple APP1 segments.  Please send this image to the Imaging project."

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;->getSegmentData()[B

    move-result-object v0

    const-string v4, "trimmed exif bytes"

    const/4 v5, 0x6

    invoke-static {v4, v0, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->remainingBytes(Ljava/lang/String;[BI)[B

    move-result-object v4

    goto :goto_0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 9
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

    const/4 v8, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    const v7, 0xffe2

    aput v7, v6, v8

    invoke-virtual {p0, p1, v6, v8}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    move-object v4, v3

    check-cast v4, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getIccBytes()[B

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/List;)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 74
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

    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v7}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v21

    if-nez v21, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "No SOFN Data Found."

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    const v9, 0xffe0

    aput v9, v2, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v7}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v52

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    if-nez v33, :cond_1

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "No SOFN Data Found."

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, v33

    iget v15, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    move-object/from16 v0, v33

    iget v8, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    const/16 v51, 0x0

    if-eqz v52, :cond_2

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v52

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;

    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    const v9, 0xffee

    aput v9, v2, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v7}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v23

    const/16 v22, 0x0

    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;

    :cond_3
    const-wide/high16 v66, -0x4010000000000000L    # -1.0

    const-wide/high16 v68, -0x4010000000000000L    # -1.0

    const-wide/high16 v64, -0x4010000000000000L    # -1.0

    if-eqz v51, :cond_5

    move-object/from16 v0, v51

    iget v2, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->xDensity:I

    int-to-double v0, v2

    move-wide/from16 v66, v0

    move-object/from16 v0, v51

    iget v2, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->yDensity:I

    int-to-double v0, v2

    move-wide/from16 v68, v0

    move-object/from16 v0, v51

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->densityUnits:I

    move/from16 v32, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Jpeg/JFIF v."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v51

    iget v7, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->jfifMajorVersion:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v51

    iget v7, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->jfifMinorVersion:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    packed-switch v32, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const-wide/16 v70, 0x0

    cmpl-double v2, v64, v70

    if-lez v2, :cond_4

    mul-double v70, v66, v64

    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->round(D)J

    move-result-wide v70

    move-wide/from16 v0, v70

    long-to-int v13, v0

    int-to-double v0, v15

    move-wide/from16 v70, v0

    mul-double v72, v66, v64

    div-double v70, v70, v72

    move-wide/from16 v0, v70

    double-to-float v14, v0

    mul-double v70, v68, v64

    invoke-static/range {v70 .. v71}, Ljava/lang/Math;->round(D)J

    move-result-wide v70

    move-wide/from16 v0, v70

    long-to-int v11, v0

    int-to-double v0, v8

    move-wide/from16 v70, v0

    mul-double v72, v68, v64

    div-double v70, v70, v72

    move-wide/from16 v0, v70

    double-to-float v12, v0

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v7, 0x0

    const v9, 0xfffe

    aput v9, v2, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v7}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v48

    :goto_1
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    move-object/from16 v26, v29

    check-cast v26, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;

    const-string v27, ""

    :try_start_0
    new-instance v28, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;->getComment()[B

    move-result-object v2

    const-string v7, "UTF-8"

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v27, v28

    :goto_2
    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :pswitch_2
    const-wide v64, 0x400451eb851eb852L    # 2.54

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;

    move-result-object v56

    check-cast v56, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;

    if-eqz v56, :cond_8

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_XRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v34

    if-eqz v34, :cond_6

    invoke-virtual/range {v34 .. v34}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v66

    :cond_6
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_YRESOLUTION:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v34

    if-eqz v34, :cond_7

    invoke-virtual/range {v34 .. v34}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v68

    :cond_7
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v34

    if-eqz v34, :cond_8

    invoke-virtual/range {v34 .. v34}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v32

    packed-switch v32, :pswitch_data_1

    :cond_8
    :goto_3
    :pswitch_3
    const-string v3, "Jpeg/DCM"

    goto/16 :goto_0

    :pswitch_4
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :pswitch_5
    const-wide v64, 0x400451eb851eb852L    # 2.54

    goto :goto_3

    :cond_9
    move-object/from16 v0, v33

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    move/from16 v60, v0

    move-object/from16 v0, v33

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    move/from16 v62, v0

    mul-int v4, v60, v62

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->JPEG:Lorg/apache/commons/imaging/ImageFormats;

    const-string v35, "JPEG (Joint Photographic Experts Group) Format"

    const-string v57, "image/jpeg"

    const/16 v61, 0x1

    move-object/from16 v0, v33

    iget v2, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->marker:I

    const v7, 0xffc2

    if-ne v2, v7, :cond_b

    const/16 v16, 0x1

    :goto_4
    const/16 v17, 0x0

    const/16 v63, 0x0

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    if-eqz v22, :cond_f

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->isAdobeJpegSegment()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;->getAdobeColorTransform()I

    move-result v25

    if-nez v25, :cond_d

    const/4 v2, 0x3

    move/from16 v0, v60

    if-ne v0, v2, :cond_c

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    :cond_a
    :goto_5
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v2, Lorg/apache/commons/imaging/ImageInfo;

    const-string v7, "JPEG (Joint Photographic Experts Group) Format"

    const-string v9, "image/jpeg"

    const/4 v10, 0x1

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v2

    :cond_b
    const/16 v16, 0x0

    goto :goto_4

    :cond_c
    const/4 v2, 0x4

    move/from16 v0, v60

    if-ne v0, v2, :cond_a

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_5

    :cond_d
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_e

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_5

    :cond_e
    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_a

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_5

    :cond_f
    if-eqz v51, :cond_11

    const/4 v2, 0x1

    move/from16 v0, v60

    if-ne v0, v2, :cond_10

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_5

    :cond_10
    const/4 v2, 0x3

    move/from16 v0, v60

    if-ne v0, v2, :cond_a

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_5

    :cond_11
    const/4 v2, 0x1

    move/from16 v0, v60

    if-ne v0, v2, :cond_12

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_5

    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v60

    if-ne v0, v2, :cond_13

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/16 v17, 0x1

    goto :goto_5

    :cond_13
    const/4 v2, 0x3

    move/from16 v0, v60

    if-eq v0, v2, :cond_14

    const/4 v2, 0x4

    move/from16 v0, v60

    if-ne v0, v2, :cond_a

    :cond_14
    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v33 .. v33}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v53, v0

    const/16 v48, 0x0

    :goto_6
    move/from16 v0, v48

    move/from16 v1, v53

    if-ge v0, v1, :cond_19

    aget-object v31, v24, v48

    move-object/from16 v0, v31

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    move/from16 v49, v0

    const/4 v2, 0x1

    move/from16 v0, v49

    if-ne v0, v2, :cond_15

    const/16 v36, 0x1

    :goto_7
    add-int/lit8 v48, v48, 0x1

    goto :goto_6

    :cond_15
    const/4 v2, 0x2

    move/from16 v0, v49

    if-ne v0, v2, :cond_16

    const/16 v37, 0x1

    goto :goto_7

    :cond_16
    const/4 v2, 0x3

    move/from16 v0, v49

    if-ne v0, v2, :cond_17

    const/16 v38, 0x1

    goto :goto_7

    :cond_17
    const/4 v2, 0x4

    move/from16 v0, v49

    if-ne v0, v2, :cond_18

    const/16 v39, 0x1

    goto :goto_7

    :cond_18
    const/16 v44, 0x1

    goto :goto_7

    :cond_19
    const/4 v2, 0x3

    move/from16 v0, v60

    if-ne v0, v2, :cond_1a

    if-eqz v36, :cond_1a

    if-eqz v37, :cond_1a

    if-eqz v38, :cond_1a

    if-nez v39, :cond_1a

    if-nez v44, :cond_1a

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_5

    :cond_1a
    const/4 v2, 0x4

    move/from16 v0, v60

    if-ne v0, v2, :cond_1b

    if-eqz v36, :cond_1b

    if-eqz v37, :cond_1b

    if-eqz v38, :cond_1b

    if-eqz v39, :cond_1b

    if-nez v44, :cond_1b

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_1b
    const/16 v45, 0x0

    const/16 v43, 0x0

    const/16 v41, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v47, 0x0

    const/16 v46, 0x0

    invoke-virtual/range {v33 .. v33}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v53, v0

    const/16 v48, 0x0

    :goto_8
    move/from16 v0, v48

    move/from16 v1, v53

    if-ge v0, v1, :cond_23

    aget-object v31, v24, v48

    move-object/from16 v0, v31

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->componentIdentifier:I

    move/from16 v49, v0

    const/16 v2, 0x52

    move/from16 v0, v49

    if-ne v0, v2, :cond_1d

    const/16 v45, 0x1

    :cond_1c
    :goto_9
    add-int/lit8 v48, v48, 0x1

    goto :goto_8

    :cond_1d
    const/16 v2, 0x47

    move/from16 v0, v49

    if-ne v0, v2, :cond_1e

    const/16 v43, 0x1

    goto :goto_9

    :cond_1e
    const/16 v2, 0x42

    move/from16 v0, v49

    if-ne v0, v2, :cond_1f

    const/16 v41, 0x1

    goto :goto_9

    :cond_1f
    const/16 v2, 0x41

    move/from16 v0, v49

    if-ne v0, v2, :cond_20

    const/16 v40, 0x1

    goto :goto_9

    :cond_20
    const/16 v2, 0x43

    move/from16 v0, v49

    if-ne v0, v2, :cond_21

    const/16 v42, 0x1

    goto :goto_9

    :cond_21
    const/16 v2, 0x63

    move/from16 v0, v49

    if-ne v0, v2, :cond_22

    const/16 v47, 0x1

    goto :goto_9

    :cond_22
    const/16 v2, 0x59

    move/from16 v0, v49

    if-ne v0, v2, :cond_1c

    const/16 v46, 0x1

    goto :goto_9

    :cond_23
    if-eqz v45, :cond_24

    if-eqz v43, :cond_24

    if-eqz v41, :cond_24

    if-nez v40, :cond_24

    if-nez v42, :cond_24

    if-nez v47, :cond_24

    if-nez v46, :cond_24

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_5

    :cond_24
    if-eqz v45, :cond_25

    if-eqz v43, :cond_25

    if-eqz v41, :cond_25

    if-eqz v40, :cond_25

    if-nez v42, :cond_25

    if-nez v47, :cond_25

    if-nez v46, :cond_25

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_25
    if-eqz v46, :cond_26

    if-eqz v42, :cond_26

    if-eqz v47, :cond_26

    if-nez v45, :cond_26

    if-nez v43, :cond_26

    if-nez v41, :cond_26

    if-nez v40, :cond_26

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_5

    :cond_26
    if-eqz v46, :cond_27

    if-eqz v42, :cond_27

    if-eqz v47, :cond_27

    if-eqz v40, :cond_27

    if-nez v45, :cond_27

    if-nez v43, :cond_27

    if-nez v41, :cond_27

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_27
    const v58, 0x7fffffff

    const/high16 v54, -0x80000000

    const v59, 0x7fffffff

    const/high16 v55, -0x80000000

    invoke-virtual/range {v33 .. v33}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v53, v0

    const/16 v48, 0x0

    :goto_a
    move/from16 v0, v48

    move/from16 v1, v53

    if-ge v0, v1, :cond_2c

    aget-object v31, v24, v48

    move-object/from16 v0, v31

    iget v2, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move/from16 v0, v58

    if-le v0, v2, :cond_28

    move-object/from16 v0, v31

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move/from16 v58, v0

    :cond_28
    move-object/from16 v0, v31

    iget v2, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move/from16 v0, v54

    if-ge v0, v2, :cond_29

    move-object/from16 v0, v31

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->horizontalSamplingFactor:I

    move/from16 v54, v0

    :cond_29
    move-object/from16 v0, v31

    iget v2, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    move/from16 v0, v59

    if-le v0, v2, :cond_2a

    move-object/from16 v0, v31

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    move/from16 v59, v0

    :cond_2a
    move-object/from16 v0, v31

    iget v2, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    move/from16 v0, v55

    if-ge v0, v2, :cond_2b

    move-object/from16 v0, v31

    iget v0, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->verticalSamplingFactor:I

    move/from16 v55, v0

    :cond_2b
    add-int/lit8 v48, v48, 0x1

    goto :goto_a

    :cond_2c
    move/from16 v0, v58

    move/from16 v1, v54

    if-ne v0, v1, :cond_2d

    move/from16 v0, v59

    move/from16 v1, v55

    if-eq v0, v1, :cond_2e

    :cond_2d
    const/16 v50, 0x1

    :goto_b
    const/4 v2, 0x3

    move/from16 v0, v60

    if-ne v0, v2, :cond_30

    if-eqz v50, :cond_2f

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_5

    :cond_2e
    const/16 v50, 0x0

    goto :goto_b

    :cond_2f
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_5

    :cond_30
    const/4 v2, 0x4

    move/from16 v0, v60

    if-ne v0, v2, :cond_a

    if-eqz v50, :cond_31

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_5

    :cond_31
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto/16 :goto_5

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 5
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

    const/4 v3, 0x1

    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "No JFIF Data Found."

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Redundant JFIF Data Found."

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    new-instance v2, Ljava/awt/Dimension;

    iget v3, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    iget v4, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 3
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

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getExifMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->getPhotoshopMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Jpeg-Custom"

    return-object v0
.end method

.method public getPhotoshopMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;
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
            "Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const v8, 0xffed

    aput v8, v7, v9

    invoke-virtual {p0, p1, v7, v9}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;

    move-object v4, v3

    check-cast v4, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;

    invoke-virtual {v4, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;->parsePhotoshopSegment(Ljava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "Jpeg contains more than one Photoshop App13 segment."

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_0

    new-instance v6, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    invoke-direct {v6, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;-><init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V

    goto :goto_0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
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
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$5;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$5;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;Ljava/util/List;)V

    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v2, p1, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Jpeg file contains more than one XMP segment."

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasExifSegment(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Z

    aput-boolean v3, v0, v3

    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$2;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[Z)V

    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v2, p1, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    aget-boolean v2, v0, v3

    return v2
.end method

.method public hasIptcSegment(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Z

    aput-boolean v3, v0, v3

    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$3;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$3;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[Z)V

    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v2, p1, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    aget-boolean v2, v0, v3

    return v2
.end method

.method public hasXmpSegment(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Z

    aput-boolean v3, v0, v3

    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$4;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$4;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[Z)V

    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v2, p1, v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    aget-boolean v2, v0, v3

    return v2
.end method

.method public readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "[IZ)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "[IZZ)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, p0

    const/16 v1, 0xd

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;

    move-object v1, p0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[ILjava/util/List;Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[IZ)V

    new-instance v1, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;

    invoke-direct {v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;)V

    return-object v3

    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data
.end method
