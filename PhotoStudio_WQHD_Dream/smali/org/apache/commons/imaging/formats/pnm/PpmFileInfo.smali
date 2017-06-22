.class Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PpmFileInfo.java"


# instance fields
.field private final bytesPerSample:I

.field private final max:I

.field private final scale:F


# direct methods
.method public constructor <init>(IIZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;-><init>(IIZ)V

    if-gtz p4, :cond_0

    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PPM maxVal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range [1;65535]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0xff

    if-gt p4, v0, :cond_1

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    :goto_0
    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    return-void

    :cond_1
    const v0, 0xffff

    if-gt p4, v0, :cond_2

    const v0, 0x477fff00    # 65535.0f

    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PPM maxVal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range [1;65535]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    return v0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "PPM: portable pixmap file format"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    const-string v0, "image/x-portable-pixmap"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    invoke-static {p1, v4}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v3

    iget v4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    invoke-static {p1, v4}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v2

    iget v4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->bytesPerSample:I

    invoke-static {p1, v4}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v1

    iget v4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v5, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v3, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v3

    iget v4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v5, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v2, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v2

    iget v4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v5, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v1

    const/16 v0, 0xff

    const/high16 v4, -0x1000000

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v4, v5

    return v4
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v5, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v3, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v3

    iget v4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v5, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v2, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v2

    iget v4, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scale:F

    iget v5, p0, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->max:I

    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;->scaleSample(IFI)I

    move-result v1

    const/16 v0, 0xff

    const/high16 v4, -0x1000000

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v4, v5

    return v4
.end method

.method public hasAlpha()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
