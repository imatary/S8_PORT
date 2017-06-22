.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;
.super Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteSourceData"
.end annotation


# instance fields
.field byteSourceFile:Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;


# direct methods
.method public constructor <init>(JILorg/apache/commons/imaging/common/bytesource/ByteSourceFile;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    iput-object p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->byteSourceFile:Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 5

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->byteSourceFile:Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->offset:J

    iget v4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->length:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;->getBlock(JI)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method

.method public getElementDescription(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tiff image data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->getDataLength()I

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
