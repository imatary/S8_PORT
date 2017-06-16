.class public final Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
.super Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;
.source "TiffOutputDirectory.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
            ">;"
        }
    .end annotation
.end field

.field private jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

.field private nextDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

.field private tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->encodeValue(Ljava/nio/ByteOrder;[Ljava/lang/String;)[B

    move-result-object v5

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->length:I

    array-length v2, v5

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    array-length v4, v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v5

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->length:I

    array-length v2, v5

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrByte;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    array-length v4, v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v5

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    array-length v2, v5

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    array-length v4, v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAsciiOrRational;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v4, v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->encodeValue(Ljava/nio/ByteOrder;[B)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->encodeValue(Ljava/nio/ByteOrder;[B)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;[S)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByteOrShort;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->encodeValue(Ljava/nio/ByteOrder;[D)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;[F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->encodeValue(Ljava/nio/ByteOrder;[F)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->tag:I

    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->dataTypes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    array-length v4, v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->encodeValue(Ljava/nio/ByteOrder;[B)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;[S)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;[S)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;[S)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->encodeValue(Ljava/nio/ByteOrder;[I)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;[S)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLongOrRational;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->encodeValue(Ljava/nio/ByteOrder;[Lorg/apache/commons/imaging/common/RationalNumber;)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public varargs add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;[S)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    if-lez v1, :cond_0

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    array-length v2, p2

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag expects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value(s), not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->encodeValue(Ljava/nio/ByteOrder;[S)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrRational;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    array-length v4, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1, p2, v2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;->encodeValue(Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v5

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;->tag:I

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v4, v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    return-void
.end method

.method public add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->description(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 3

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getItemDescription()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->getExifDirectoryType(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItemLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    new-instance v18, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v24, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v25, 0x1

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->length:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v19

    new-instance v17, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v24, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_0
    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeFieldIfPresent(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->stripsNotTiles()Z

    move-result v22

    if-eqz v22, :cond_1

    sget-object v20, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;->getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v11

    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v15, v0, [I

    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v12, v0, [I

    const/4 v9, 0x0

    :goto_1
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_2

    aget-object v23, v11, v9

    move-object/from16 v0, v23

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->length:I

    move/from16 v23, v0

    aput v23, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    sget-object v20, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    goto :goto_0

    :cond_2
    new-instance v14, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v0, v15

    move/from16 v24, v0

    sget-object v25, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v15, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v7

    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v23, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    array-length v0, v12

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v6, v0, v1, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    new-instance v13, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;

    invoke-direct {v13, v11, v15, v14}, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;[ILorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_3
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->sortFields()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v23

    if-nez v23, :cond_4

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-result-object v16

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v13, :cond_6

    iget-object v0, v13, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->addTiffImageData(Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    new-instance v16, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    const-string v23, "JPEG image data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    :cond_7
    return-object v21
.end method

.method public getRawJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    return-object v0
.end method

.method public getRawTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    return-object v0
.end method

.method public removeField(I)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    iget v3, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    if-ne v3, p1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V
    .locals 1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(I)V

    return-void
.end method

.method public setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->jpegImageData:Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    return-void
.end method

.method public setNextDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->nextDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    return-void
.end method

.method public setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->tiffImageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    return-void
.end method

.method public sortFields()V
    .locals 2

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory$2;-><init>(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public writeItem(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->writeField(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->nextDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->nextDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getOffset()J

    move-result-wide v2

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    :goto_1
    return-void

    :cond_2
    long-to-int v4, v2

    invoke-virtual {p1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    goto :goto_1
.end method
