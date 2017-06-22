.class public Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;
.source "App2Segment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final curMarker:I

.field private final iccBytes:[B

.field public final numMarkers:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/segments/AppnSegment;-><init>(IILjava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getSegmentData()[B

    move-result-object v1

    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->getSegmentData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

    const-string v2, "Not a Valid App2 Segment: missing ICC Profile label"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readAndVerifyBytes(Ljava/io/InputStream;Lorg/apache/commons/imaging/common/BinaryConstant;Ljava/lang/String;)V

    const-string v1, "curMarker"

    const-string v2, "Not a valid App2 Marker"

    invoke-static {v1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    const-string v1, "numMarkers"

    const-string v2, "Not a valid App2 Marker"

    invoke-static {v1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x2

    const-string v1, "App2 Data"

    const-string v2, "Invalid App2 Segment: insufficient data"

    invoke-static {v1, v0, p2, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->iccBytes:[B

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    iput v3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->numMarkers:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->iccBytes:[B

    goto :goto_0
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->compareTo(Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;)I
    .locals 2

    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    iget v1, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    iget v3, v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getIccBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->iccBytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;->curMarker:I

    return v0
.end method
