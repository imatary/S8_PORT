.class public Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "JfifSegment.java"


# instance fields
.field public final densityUnits:I

.field public final jfifMajorVersion:I

.field public final jfifMinorVersion:I

.field public final thumbnailSize:I

.field public final xDensity:I

.field public final xThumbnail:I

.field public final yDensity:I

.field public final yThumbnail:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result v1

    invoke-static {p3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE_ALTERNATIVE:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Not a Valid JPEG File: missing JFIF string"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "JFIF_major_version"

    const-string v2, "Not a Valid JPEG File"

    invoke-static {v1, p3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->jfifMajorVersion:I

    const-string v1, "JFIF_minor_version"

    const-string v2, "Not a Valid JPEG File"

    invoke-static {v1, p3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->jfifMinorVersion:I

    const-string v1, "density_units"

    const-string v2, "Not a Valid JPEG File"

    invoke-static {v1, p3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->densityUnits:I

    const-string v1, "x_density"

    const-string v2, "Not a Valid JPEG File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, p3, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->xDensity:I

    const-string v1, "y_density"

    const-string v2, "Not a Valid JPEG File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, p3, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->yDensity:I

    const-string v1, "x_thumbnail"

    const-string v2, "Not a Valid JPEG File"

    invoke-static {v1, p3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->xThumbnail:I

    const-string v1, "y_thumbnail"

    const-string v2, "Not a Valid JPEG File"

    invoke-static {v1, p3, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->yThumbnail:I

    iget v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->xThumbnail:I

    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->yThumbnail:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->thumbnailSize:I

    iget v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->thumbnailSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->thumbnailSize:I

    int-to-long v2, v1

    const-string v1, "Not a Valid JPEG File: missing thumbnail"

    invoke-static {p3, v2, v3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
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

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JFIF ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;->getSegmentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
