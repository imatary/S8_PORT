.class public Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;
.super Ljava/lang/Object;
.source "JpegImageMetadata.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/ImageMetadata;


# static fields
.field private static final NEWLINE:Ljava/lang/String;


# instance fields
.field private final exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

.field private final photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public findEXIFValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {v2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public findEXIFValueWithExactMatch(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Z)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getEXIFThumbnail()Ljava/awt/image/BufferedImage;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-nez v9, :cond_1

    move-object v4, v8

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v9, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {v9}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v1, v0

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getThumbnail()Ljava/awt/image/BufferedImage;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/Imaging;->getBufferedImage([B)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    const/4 v5, 0x1

    if-nez v5, :cond_3

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v4

    :cond_3
    :goto_1
    if-eqz v4, :cond_2

    goto :goto_0

    :catch_0
    move-exception v9

    if-nez v5, :cond_3

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v4

    goto :goto_1

    :catch_1
    move-exception v9

    if-nez v5, :cond_3

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v8

    if-nez v5, :cond_4

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v4

    :cond_4
    throw v8

    :cond_5
    move-object v4, v8

    goto :goto_0
.end method

.method public getEXIFThumbnailData()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-nez v6, :cond_0

    move-object v1, v5

    :goto_0
    return-object v1

    :cond_0
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v2, v0

    check-cast v2, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    const/4 v1, 0x0

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getData()[B

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_3
    move-object v1, v5

    goto :goto_0
.end method

.method public getEXIFThumbnailSize()Ljava/awt/Dimension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->getEXIFThumbnailData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/commons/imaging/Imaging;->getImageSize([B)Ljava/awt/Dimension;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExif()Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getPhotoshop()Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    return-object v0
.end method

.method public getRawImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 7

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-nez v6, :cond_0

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;

    move-object v1, v0

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$Directory;->getTiffImageData()Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v5

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    if-nez v1, :cond_1

    const-string v1, "No Exif metadata."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    if-nez v1, :cond_2

    const-string v1, "No Photoshop (IPTC) metadata."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v1, "Exif metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "Photoshop (IPTC) metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
