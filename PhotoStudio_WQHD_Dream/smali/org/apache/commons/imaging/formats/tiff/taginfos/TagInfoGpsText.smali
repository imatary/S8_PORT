.class public final Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;
.super Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
.source "TagInfoGpsText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;
    }
.end annotation


# static fields
.field private static final TEXT_ENCODINGS:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_JIS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

.field private static final TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x8

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "JIS"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_JIS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    const-string v2, "UTF-16BE"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_JIS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODINGS:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V
    .locals 6

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;-><init>(Ljava/lang/String;ILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;ILorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;)V

    return-void
.end method


# virtual methods
.method public encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    instance-of v7, p2, Ljava/lang/String;

    if-nez v7, :cond_0

    new-instance v7, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v8, "GPS text value not String"

    invoke-direct {v7, v8, p2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v7

    :cond_0
    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    :try_start_0
    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object v7, v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object v7, v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-direct {v1, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    array-length v7, v0

    sget-object v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object v8, v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v8, v8

    add-int/2addr v7, v8

    new-array v4, v7, [B

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object v7, v7, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object v10, v10, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v10, v10

    invoke-static {v7, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    sget-object v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_ASCII:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    iget-object v8, v8, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v8, v8

    array-length v9, v0

    invoke-static {v0, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v4

    :cond_1
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v7, :cond_2

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_BE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    :goto_1
    iget-object v7, v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v7, v6

    iget-object v8, v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v8, v8

    add-int/2addr v7, v8

    new-array v4, v7, [B

    iget-object v7, v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v10, v10

    invoke-static {v7, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    iget-object v8, v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v8, v8

    array-length v9, v6

    invoke-static {v6, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v7, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_2
    :try_start_1
    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODING_UNICODE_LE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v12, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v9

    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    if-ne v9, v10, :cond_2

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    invoke-virtual {v9, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_0

    check-cast v7, Ljava/lang/String;

    :goto_0
    return-object v7

    :cond_0
    instance-of v9, v7, [Ljava/lang/String;

    if-eqz v9, :cond_1

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    aget-object v7, v7, v12

    goto :goto_0

    :cond_1
    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Unexpected ASCII type decoded"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v9

    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    if-ne v9, v10, :cond_4

    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v1

    array-length v9, v1

    const/16 v10, 0x8

    if-ge v9, v10, :cond_5

    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v9, "US-ASCII"

    invoke-direct {v7, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "GPS text field missing encoding prefix."

    invoke-direct {v9, v10, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v9

    sget-object v10, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    if-eq v9, v10, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "entry.type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "entry.directoryType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDirectoryType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "entry.type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getDescriptionWithoutValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "entry.type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "GPS text field not encoded as bytes."

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->TEXT_ENCODINGS:[Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_7

    aget-object v4, v0, v5

    iget-object v9, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    iget-object v10, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v10, v10

    invoke-static {v1, v12, v9, v12, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z

    move-result v9

    if-eqz v9, :cond_6

    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v9, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v9, v9

    array-length v10, v1

    iget-object v11, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v11, v11

    sub-int/2addr v10, v11

    iget-object v11, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-direct {v2, v1, v9, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v9, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    iget-object v9, v4, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    array-length v9, v9

    const/4 v10, 0x0

    array-length v11, v8

    invoke-static {v1, v9, v8, v10, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->compareBytes([BI[BII)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-eqz v9, :cond_6

    move-object v7, v2

    goto/16 :goto_0

    :catch_1
    move-exception v3

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    :try_start_2
    new-instance v7, Ljava/lang/String;

    const-string v9, "US-ASCII"

    invoke-direct {v7, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Unknown GPS text encoding prefix."

    invoke-direct {v9, v10, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public isText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
