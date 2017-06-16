.class Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;
.super Ljava/lang/Object;
.source "TiffOutputSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;
    }
.end annotation


# instance fields
.field public final byteOrder:Ljava/nio/ByteOrder;

.field public final directoryTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private final imageDataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;",
            ">;"
        }
    .end annotation
.end field

.field private final offsetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;",
            ">;"
        }
    .end annotation
.end field

.field public final rootDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;


# direct methods
.method public constructor <init>(Ljava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->byteOrder:Ljava/nio/ByteOrder;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->rootDirectory:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->directoryTypeMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;-><init>(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTiffImageData(Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateOffsets(Ljava/nio/ByteOrder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v7, v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;->item:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v5

    iget-object v6, v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary$OffsetItem;->itemOffsetField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-virtual {v6, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->setData([B)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;

    const/4 v3, 0x0

    :goto_2
    iget-object v6, v1, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    iget-object v6, v1, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;

    aget-object v2, v6, v3

    iget-object v6, v1, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsets:[I

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;->getOffset()J

    move-result-wide v8

    long-to-int v7, v8

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, v1, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsetsField:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v7, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v8, v1, Lorg/apache/commons/imaging/formats/tiff/write/ImageDataOffsets;->imageDataOffsets:[I

    invoke-virtual {v7, v8, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->setData([B)V

    goto :goto_1

    :cond_2
    return-void
.end method
