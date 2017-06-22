.class public Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoAscii.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public varargs encodeValue(Ljava/nio/ByteOrder;[Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/nio/ByteOrder;[B)[Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v7, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_1

    aget-byte v7, p2, v0

    if-nez v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v2, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v4, v7

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v7, p2

    if-ge v0, v7, :cond_3

    aget-byte v7, p2, v0

    if-nez v7, :cond_2

    :try_start_0
    new-instance v3, Ljava/lang/String;

    sub-int v7, v0, v1

    const-string v8, "UTF-8"

    invoke-direct {v3, p2, v1, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v6, v5, 0x1

    :try_start_1
    aput-object v3, v4, v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move v5, v6

    :goto_2
    add-int/lit8 v1, v0, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    array-length v7, p2

    if-ge v1, v7, :cond_4

    :try_start_2
    new-instance v3, Ljava/lang/String;

    array-length v7, p2

    sub-int/2addr v7, v1

    const-string v8, "UTF-8"

    invoke-direct {v3, p2, v1, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v6, v5, 0x1

    :try_start_3
    aput-object v3, v4, v5
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move v5, v6

    :cond_4
    :goto_3
    return-object v4

    :catch_0
    move-exception v7

    goto :goto_3

    :catch_1
    move-exception v7

    move v5, v6

    goto :goto_3

    :catch_2
    move-exception v7

    goto :goto_2

    :catch_3
    move-exception v7

    move v5, v6

    goto :goto_2
.end method
