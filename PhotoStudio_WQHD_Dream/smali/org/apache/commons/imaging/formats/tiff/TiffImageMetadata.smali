.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
.super Lorg/apache/commons/imaging/common/GenericImageMetadata;
.source "TiffImageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$TiffMetadataItem;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;
    }
.end annotation


# instance fields
.field public final contents:Lorg/apache/commons/imaging/formats/tiff/TiffContents;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffContents;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->contents:Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    return-void
.end method


# virtual methods
.method public findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v1, v2

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    iget v4, v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    if-ne v4, p1, :cond_0

    # getter for: Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;
    invoke-static {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->access$000(Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;)Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    return-object v0
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v7, 0x0

    iget v8, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-static {v8}, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->getTagCount(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v0

    if-nez p2, :cond_0

    iget-object v8, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    sget-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    if-eq v8, v9, :cond_8

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v1, v2

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    iget v8, v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    iget-object v9, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    iget v9, v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    if-ne v8, v9, :cond_1

    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_1

    :goto_1
    return-object v3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const/4 v8, 0x1

    if-le v6, v8, :cond_5

    :cond_4
    move-object v3, v7

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v1, v2

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    iget-object v8, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory()Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    if-ltz v8, :cond_7

    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_7
    iget-object v8, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->directoryType:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory()Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    if-gez v8, :cond_6

    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v1, v2

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_a
    move-object v3, v7

    goto :goto_1
.end method

.method public getAllFields()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffField;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v1, v2

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getAllFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public getDirectories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoXpString;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;->dataTypes:Ljava/util/List;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSByte;->dataTypes:Ljava/util/List;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->dataTypes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDouble;->getValue(Ljava/nio/ByteOrder;[B)[D

    move-result-object v2

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->dataTypes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoFloat;->getValue(Ljava/nio/ByteOrder;[B)[F

    move-result-object v2

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->dataTypes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;->getValue(Ljava/nio/ByteOrder;[B)[I

    move-result-object v2

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->dataTypes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSLong;->getValue(Ljava/nio/ByteOrder;[B)[I

    move-result-object v2

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->dataTypes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;->getValue(Ljava/nio/ByteOrder;[B)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->dataTypes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;->getValue(Ljava/nio/ByteOrder;[B)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->dataTypes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSRational;->getValue(Ljava/nio/ByteOrder;[B)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;)[S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->dataTypes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoSShort;->getValue(Ljava/nio/ByteOrder;[B)[S

    move-result-object v2

    goto :goto_0
.end method

.method public getFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;)[S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->dataTypes:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;->getValue(Ljava/nio/ByteOrder;[B)[S

    move-result-object v2

    goto :goto_0
.end method

.method public getGPS()Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v1, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    move-result-object v10

    if-nez v10, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    invoke-virtual {v10, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v13

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v10, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v12

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    invoke-virtual {v10, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v16

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v10, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v15

    if-eqz v13, :cond_1

    if-eqz v12, :cond_1

    if-eqz v16, :cond_1

    if-nez v15, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object v11, v1

    check-cast v11, [Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object v14, v1

    check-cast v14, [Lorg/apache/commons/imaging/common/RationalNumber;

    array-length v1, v11

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v1, v0, :cond_3

    array-length v1, v14

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v1, v0, :cond_4

    :cond_3
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v17, "Expected three values for latitude and longitude."

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v1, 0x0

    aget-object v4, v11, v1

    const/4 v1, 0x1

    aget-object v5, v11, v1

    const/4 v1, 0x2

    aget-object v6, v11, v1

    const/4 v1, 0x0

    aget-object v7, v14, v1

    const/4 v1, 0x1

    aget-object v8, v14, v1

    const/4 v1, 0x2

    aget-object v9, v14, v1

    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;)V

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public getOutputSet()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget-object v7, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->contents:Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    iget-object v7, v7, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->header:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    iget-object v0, v7, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->byteOrder:Ljava/nio/ByteOrder;

    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;

    invoke-direct {v3, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v4, v5

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    iget v7, v4, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->type:I

    invoke-virtual {v3, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v4, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getOutputDirectory(Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    goto :goto_0

    :cond_1
    return-object v3
.end method
