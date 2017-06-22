.class public Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "SofnSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
    }
.end annotation


# instance fields
.field private final components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

.field public final height:I

.field public final numberOfComponents:I

.field public final precision:I

.field public final width:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SOF0Segment marker_length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string v6, "Data_precision"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    iput v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->precision:I

    const-string v6, "Image_height"

    const-string v7, "Not a Valid JPEG File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, p3, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    iput v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->height:I

    const-string v6, "Image_Width"

    const-string v7, "Not a Valid JPEG File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, p3, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    iput v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->width:I

    const-string v6, "Number_of_components"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    iput v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    iget v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    new-array v6, v6, [Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->numberOfComponents:I

    if-ge v3, v6, :cond_1

    const-string v6, "ComponentIdentifier"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    const-string v6, "SamplingFactors"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    shr-int/lit8 v6, v2, 0x4

    and-int/lit8 v1, v6, 0xf

    and-int/lit8 v5, v2, 0xf

    const-string v6, "QuantTabDestSel"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    new-instance v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    invoke-direct {v7, v0, v1, v5, v4}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;-><init>(IIII)V

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment$Component;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOFN (SOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->marker:I

    const v2, 0xffc0

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;->getSegmentType()Ljava/lang/String;

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
