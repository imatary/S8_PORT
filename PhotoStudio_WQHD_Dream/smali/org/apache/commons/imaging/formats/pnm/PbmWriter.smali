.class Lorg/apache/commons/imaging/formats/pnm/PbmWriter;
.super Ljava/lang/Object;
.source "PbmWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/pnm/PnmWriter;


# instance fields
.field private rawbits:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;->rawbits:Z

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x50

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v11, p0, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;->rawbits:Z

    if-eqz v11, :cond_1

    const/16 v11, 0x34

    :goto_0
    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const/16 v11, 0x20

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write([B)V

    const/16 v11, 0x20

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write([B)V

    const/16 v11, 0xa

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_4

    invoke-virtual {p1, v9, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v6, v11, 0xff

    shr-int/lit8 v11, v0, 0x8

    and-int/lit16 v4, v11, 0xff

    shr-int/lit8 v11, v0, 0x0

    and-int/lit16 v3, v11, 0xff

    add-int v11, v6, v4

    add-int/2addr v11, v3

    div-int/lit8 v7, v11, 0x3

    const/16 v11, 0x7f

    if-le v7, v11, :cond_2

    const/4 v7, 0x0

    :goto_3
    iget-boolean v11, p0, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;->rawbits:Z

    if-eqz v11, :cond_3

    shl-int/lit8 v11, v1, 0x1

    and-int/lit8 v12, v7, 0x1

    or-int v1, v11, v12

    add-int/lit8 v2, v2, 0x1

    const/16 v11, 0x8

    if-lt v2, v11, :cond_0

    int-to-byte v11, v1

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    const/16 v11, 0x31

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write([B)V

    const/16 v11, 0x20

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    :cond_4
    iget-boolean v11, p0, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;->rawbits:Z

    if-eqz v11, :cond_5

    if-lez v2, :cond_5

    rsub-int/lit8 v11, v2, 0x8

    shl-int/2addr v1, v11

    int-to-byte v11, v1

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method
