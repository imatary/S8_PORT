.class public Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
.super Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
.source "JpegImageData.java"


# direct methods
.method public constructor <init>(JI[B)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;-><init>(JI[B)V

    return-void
.end method


# virtual methods
.method public getElementDescription(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Jpeg image data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;->getDataLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
