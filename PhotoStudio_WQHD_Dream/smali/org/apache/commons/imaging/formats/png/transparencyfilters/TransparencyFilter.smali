.class public abstract Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "TransparencyFilter.java"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->bytes:[B

    return-void
.end method


# virtual methods
.method public abstract filter(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getByte(I)B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;->bytes:[B

    array-length v0, v0

    return v0
.end method
