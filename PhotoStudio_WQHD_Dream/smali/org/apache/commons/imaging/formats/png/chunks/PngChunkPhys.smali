.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkPhys.java"


# instance fields
.field public final pixelsPerUnitXAxis:I

.field public final pixelsPerUnitYAxis:I

.field public final unitSpecifier:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "PixelsPerUnitXAxis"

    const-string v2, "Not a Valid Png File: pHYs Corrupt"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitXAxis:I

    const-string v1, "PixelsPerUnitYAxis"

    const-string v2, "Not a Valid Png File: pHYs Corrupt"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->pixelsPerUnitYAxis:I

    const-string v1, "Unit specifier"

    const-string v2, "Not a Valid Png File: pHYs Corrupt"

    invoke-static {v1, v0, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkPhys;->unitSpecifier:I

    return-void
.end method
