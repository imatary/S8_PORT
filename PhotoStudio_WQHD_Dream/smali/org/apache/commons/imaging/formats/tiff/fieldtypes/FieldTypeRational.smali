.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeRational.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

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

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRational([BLjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRationals([BLjava/nio/ByteOrder;)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v1

    goto :goto_0
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    instance-of v6, p1, Lorg/apache/commons/imaging/common/RationalNumber;

    if-eqz v6, :cond_0

    check-cast p1, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    instance-of v6, p1, [Lorg/apache/commons/imaging/common/RationalNumber;

    if-eqz v6, :cond_1

    check-cast p1, [Lorg/apache/commons/imaging/common/RationalNumber;

    check-cast p1, [Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object v6

    goto :goto_0

    :cond_1
    instance-of v6, p1, Ljava/lang/Number;

    if-eqz v6, :cond_2

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object v6

    goto :goto_0

    :cond_2
    instance-of v6, p1, [Ljava/lang/Number;

    if-eqz v6, :cond_4

    check-cast p1, [Ljava/lang/Number;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Number;

    array-length v6, v1

    new-array v5, v6, [Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v0, 0x0

    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_3

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v5, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object v6

    goto :goto_0

    :cond_4
    instance-of v6, p1, [D

    if-eqz v6, :cond_6

    check-cast p1, [D

    move-object v1, p1

    check-cast v1, [D

    array-length v6, v1

    new-array v5, v6, [Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v0, 0x0

    :goto_2
    array-length v6, v1

    if-ge v0, v6, :cond_5

    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v5, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B

    move-result-object v6

    goto :goto_0

    :cond_6
    new-instance v6, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v7, "Invalid data"

    invoke-direct {v6, v7, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v6
.end method
