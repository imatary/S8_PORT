.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLongOrIFD;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoLongOrIFD.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG_OR_IFD:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V
    .locals 7

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG_OR_IFD:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;Z)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[I)[B
    .locals 1

    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([ILjava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/nio/ByteOrder;[B)[I
    .locals 1

    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toInts([BLjava/nio/ByteOrder;)[I

    move-result-object v0

    return-object v0
.end method
