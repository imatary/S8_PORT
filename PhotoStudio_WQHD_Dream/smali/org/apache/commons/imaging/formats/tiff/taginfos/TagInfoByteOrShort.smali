.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoByteOrShort.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE_OR_SHORT:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILjava/util/List;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[B)[B
    .locals 0

    return-object p2
.end method

.method public varargs encodeValue(Ljava/nio/ByteOrder;[S)[B
    .locals 1

    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([SLjava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method
