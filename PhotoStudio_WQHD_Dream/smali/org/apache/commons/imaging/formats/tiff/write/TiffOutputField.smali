.class public Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
.super Ljava/lang/Object;
.source "TiffOutputField.java"


# static fields
.field private static final NEWLINE:Ljava/lang/String;


# instance fields
.field private bytes:[B

.field public final count:I

.field public final fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

.field private final separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

.field private sortHint:I

.field public final tag:I

.field public final tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->sortHint:I

    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->count:I

    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field Seperate value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    invoke-direct {v1, v0, p5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V
    .locals 6

    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    return-void
.end method

.method protected static createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    return-object v0
.end method


# virtual methods
.method public bytesEqual([B)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method protected getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    return-object v0
.end method

.method public getSortHint()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->sortHint:I

    return v0
.end method

.method protected final isLocalValue()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setData([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Cannot change size of value."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->updateValue([B)V

    :cond_1
    return-void
.end method

.method public setSortHint(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->sortHint:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected writeField(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->count:I

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v3, "Unexpected separate value item."

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v2, v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    new-instance v2, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local value has invalid length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v2, v2

    rsub-int/lit8 v1, v2, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v3, "Missing separate value item."

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->getOffset()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    :cond_4
    return-void
.end method
