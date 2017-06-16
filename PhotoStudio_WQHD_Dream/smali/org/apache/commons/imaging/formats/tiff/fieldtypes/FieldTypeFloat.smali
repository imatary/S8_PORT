.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeFloat.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toFloat([BLjava/nio/ByteOrder;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toFloats([BLjava/nio/ByteOrder;)[F

    move-result-object v1

    goto :goto_0
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(FLjava/nio/ByteOrder;)[B

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    instance-of v3, p1, [F

    if-eqz v3, :cond_1

    check-cast p1, [F

    move-object v1, p1

    check-cast v1, [F

    invoke-static {v1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([FLjava/nio/ByteOrder;)[B

    move-result-object v3

    goto :goto_0

    :cond_1
    instance-of v3, p1, [Ljava/lang/Float;

    if-eqz v3, :cond_3

    check-cast p1, [Ljava/lang/Float;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Float;

    array-length v3, v1

    new-array v2, v3, [F

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([FLjava/nio/ByteOrder;)[B

    move-result-object v3

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v4, "Invalid data"

    invoke-direct {v3, v4, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v3
.end method
