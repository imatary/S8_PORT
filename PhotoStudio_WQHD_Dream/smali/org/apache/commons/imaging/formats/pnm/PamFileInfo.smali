.class Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;
.super Lorg/apache/commons/imaging/formats/pnm/FileInfo;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;,
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;,
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;,
        Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;
    }
.end annotation


# instance fields
.field private final bytesPerSample:I

.field private final depth:I

.field private final hasAlpha:Z

.field private final maxval:I

.field private final scale:F

.field private final tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;-><init>(IIZ)V

    iput p3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->depth:I

    iput p4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I

    if-gtz p4, :cond_0

    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAM maxVal "

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

    if-gt p4, v0, :cond_2

    const/high16 v0, 0x437f0000    # 255.0f

    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F

    iput v1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I

    :goto_0
    const-string v0, "_ALPHA"

    invoke-virtual {p5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z

    const-string v0, "BLACKANDWHITE"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BLACKANDWHITE_ALPHA"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    :goto_1
    return-void

    :cond_2
    const v0, 0xffff

    if-gt p4, v0, :cond_3

    const v0, 0x477fff00    # 65535.0f

    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAM maxVal "

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

    :cond_4
    const-string v0, "GRAYSCALE"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "GRAYSCALE_ALPHA"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    goto :goto_1

    :cond_6
    const-string v0, "RGB"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "RGB_ALPHA"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    goto :goto_1

    :cond_8
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown PAM tupletype \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F

    return v0
.end method

.method static synthetic access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z

    return v0
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I

    return v0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;->getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-result-object v0

    return-object v0
.end method

.method public getImageType()Lorg/apache/commons/imaging/ImageFormat;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "PAM: portable arbitrary map file format"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    const-string v0, "image/x-portable-arbitrary-map"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->depth:I

    return v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->tupleReader:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;->getRGB(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public getRGB(Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PAM files are only ever binary"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAlpha()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z

    return v0
.end method
