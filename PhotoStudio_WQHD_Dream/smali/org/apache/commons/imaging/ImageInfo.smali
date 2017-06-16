.class public Lorg/apache/commons/imaging/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;,
        Lorg/apache/commons/imaging/ImageInfo$ColorType;
    }
.end annotation


# instance fields
.field private final bitsPerPixel:I

.field private final colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field private final comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final compressionAlgorithm:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field private final format:Lorg/apache/commons/imaging/ImageFormat;

.field private final formatDetails:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;

.field private final height:I

.field private final mimeType:Ljava/lang/String;

.field private final numberOfImages:I

.field private final physicalHeightDpi:I

.field private final physicalHeightInch:F

.field private final physicalWidthDpi:I

.field private final physicalWidthInch:F

.field private final progressive:Z

.field private final transparent:Z

.field private final usesPalette:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/imaging/ImageFormat;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIFIFIZZZ",
            "Lorg/apache/commons/imaging/ImageInfo$ColorType;",
            "Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/ImageInfo;->formatDetails:Ljava/lang/String;

    iput p2, p0, Lorg/apache/commons/imaging/ImageInfo;->bitsPerPixel:I

    iput-object p3, p0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/commons/imaging/ImageInfo;->format:Lorg/apache/commons/imaging/ImageFormat;

    iput-object p5, p0, Lorg/apache/commons/imaging/ImageInfo;->formatName:Ljava/lang/String;

    iput p6, p0, Lorg/apache/commons/imaging/ImageInfo;->height:I

    iput-object p7, p0, Lorg/apache/commons/imaging/ImageInfo;->mimeType:Ljava/lang/String;

    iput p8, p0, Lorg/apache/commons/imaging/ImageInfo;->numberOfImages:I

    iput p9, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightDpi:I

    iput p10, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightInch:F

    iput p11, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthDpi:I

    iput p12, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthInch:F

    iput p13, p0, Lorg/apache/commons/imaging/ImageInfo;->width:I

    iput-boolean p14, p0, Lorg/apache/commons/imaging/ImageInfo;->progressive:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/commons/imaging/ImageInfo;->transparent:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lorg/apache/commons/imaging/ImageInfo;->usesPalette:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-object/from16 v0, p18

    iput-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->compressionAlgorithm:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getBitsPerPixel()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->bitsPerPixel:I

    return v0
.end method

.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCompressionAlgorithm()Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->compressionAlgorithm:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-object v0
.end method

.method public getFormat()Lorg/apache/commons/imaging/ImageFormat;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->format:Lorg/apache/commons/imaging/ImageFormat;

    return-object v0
.end method

.method public getFormatDetails()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->formatDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->formatName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->height:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/ImageInfo;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfImages()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->numberOfImages:I

    return v0
.end method

.method public getPhysicalHeightDpi()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightDpi:I

    return v0
.end method

.method public getPhysicalHeightInch()F
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightInch:F

    return v0
.end method

.method public getPhysicalWidthDpi()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthDpi:I

    return v0
.end method

.method public getPhysicalWidthInch()F
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthInch:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/ImageInfo;->width:I

    return v0
.end method

.method public isProgressive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/ImageInfo;->progressive:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/ImageInfo;->transparent:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "Image Data: Error"

    goto :goto_0
.end method

.method public toString(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Format Details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/ImageInfo;->formatDetails:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bits Per Pixel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/ImageInfo;->bitsPerPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/imaging/ImageInfo;->comments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/ImageInfo;->format:Lorg/apache/commons/imaging/ImageFormat;

    invoke-interface {v3}, Lorg/apache/commons/imaging/ImageFormat;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Format Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/ImageInfo;->formatName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compression Algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/ImageInfo;->compressionAlgorithm:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/ImageInfo;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/ImageInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number Of Images: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/ImageInfo;->numberOfImages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Physical Height Dpi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Physical Height Inch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalHeightInch:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Physical Width Dpi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Physical Width Inch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/ImageInfo;->physicalWidthInch:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/ImageInfo;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Progressive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/commons/imaging/ImageInfo;->progressive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Transparent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/commons/imaging/ImageInfo;->transparent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/ImageInfo;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/ImageInfo$ColorType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uses Palette: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/commons/imaging/ImageInfo;->usesPalette:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public usesPalette()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/ImageInfo;->usesPalette:Z

    return v0
.end method
