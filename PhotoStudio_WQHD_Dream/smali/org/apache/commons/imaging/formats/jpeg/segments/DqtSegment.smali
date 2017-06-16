.class public Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "DqtSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;
    }
.end annotation


# instance fields
.field public final quantizationTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x40

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    :goto_0
    if-lez p2, :cond_3

    const-string v5, "QuantizationTablePrecisionAndDestination"

    const-string v6, "Not a Valid JPEG File"

    invoke-static {v5, p3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    add-int/lit8 p2, p2, -0x1

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v3, v5, 0xf

    and-int/lit8 v0, v4, 0xf

    new-array v1, v8, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_2

    if-nez v3, :cond_0

    const-string v5, "QuantizationTableElement"

    const-string v6, "Not a Valid JPEG File"

    invoke-static {v5, p3, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v1, v2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    const-string v5, "QuantizationTableElement"

    const-string v6, "Not a Valid JPEG File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-static {v5, p3, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    aput v5, v1, v2

    add-int/lit8 p2, p2, -0x2

    goto :goto_2

    :cond_1
    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Quantization table precision \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->quantizationTables:Ljava/util/List;

    new-instance v6, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;

    invoke-direct {v6, v3, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment$QuantizationTable;-><init>(II[I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
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

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DQT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;->getSegmentType()Ljava/lang/String;

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
