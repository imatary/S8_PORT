.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngChunkGama.java"


# instance fields
.field public final gamma:I


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

    const-string v1, "Gamma"

    const-string v2, "Not a Valid Png File: gAMA Corrupt"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;->gamma:I

    return-void
.end method


# virtual methods
.method public getGamma()D
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget v2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkGama;->gamma:I

    int-to-double v2, v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method
