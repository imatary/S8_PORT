.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "PngChunk.java"


# instance fields
.field public final ancillary:Z

.field private final bytes:[B

.field public final chunkType:I

.field public final crc:I

.field public final isPrivate:Z

.field public final length:I

.field private final propertyBits:[Z

.field public final reserved:Z

.field public final safeToCopy:Z


# direct methods
.method public constructor <init>(III[B)V
    .locals 9

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->length:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->chunkType:I

    iput p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->crc:I

    iput-object p4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->bytes:[B

    new-array v4, v8, [Z

    iput-object v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    const/16 v1, 0x18

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_1

    shr-int v4, p2, v1

    and-int/lit16 v2, v4, 0xff

    add-int/lit8 v1, v1, -0x8

    const/16 v3, 0x20

    iget-object v7, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    and-int/lit8 v4, v2, 0x20

    if-lez v4, :cond_0

    move v4, v5

    :goto_1
    aput-boolean v4, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    aget-boolean v4, v4, v6

    iput-boolean v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->ancillary:Z

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    aget-boolean v4, v4, v5

    iput-boolean v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->isPrivate:Z

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    const/4 v5, 0x2

    aget-boolean v4, v4, v5

    iput-boolean v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->reserved:Z

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    iput-boolean v4, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->safeToCopy:Z

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->bytes:[B

    return-object v0
.end method

.method protected getDataStream()Ljava/io/ByteArrayInputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getPropertyBits()[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;->propertyBits:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method
