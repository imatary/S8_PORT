.class Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;
.super Lorg/apache/commons/imaging/formats/gif/GifBlock;
.source "GenericGifBlock.java"


# instance fields
.field final subblocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifBlock;-><init>(I)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->subblocks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public appendSubBlocks()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->appendSubBlocks(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public appendSubBlocks(Z)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->subblocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/gif/GenericGifBlock;->subblocks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz p1, :cond_0

    if-lez v0, :cond_0

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
