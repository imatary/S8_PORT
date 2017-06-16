.class Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;
.super Ljava/lang/Object;
.source "ImageDataOffsets.java"


# instance fields
.field final imageDataOffsets:[I

.field final imageDataOffsetsField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

.field final outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;


# direct methods
.method constructor <init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;[ILorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsets:[I

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsetsField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    array-length v2, p1

    new-array v2, v2, [Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    iput-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    const-string v2, "TIFF image data"

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
