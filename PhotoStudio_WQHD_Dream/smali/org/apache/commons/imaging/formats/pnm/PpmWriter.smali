.class Lorg/apache/commons/imaging/formats/pnm/PpmWriter;
.super Ljava/lang/Object;
.source "PpmWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/pnm/PnmWriter;


# instance fields
.field private rawbits:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;->rawbits:Z

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 11
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

    const/16 v10, 0x20

    const/16 v8, 0x50

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v8, p0, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;->rawbits:Z

    if-eqz v8, :cond_0

    const/16 v8, 0x36

    :goto_0
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    const/16 v8, 0xa

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_2

    invoke-virtual {p1, v6, v7}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v4, v8, 0xff

    shr-int/lit8 v8, v0, 0x8

    and-int/lit16 v2, v8, 0xff

    shr-int/lit8 v8, v0, 0x0

    and-int/lit16 v1, v8, 0xff

    iget-boolean v8, p0, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;->rawbits:Z

    if-eqz v8, :cond_1

    int-to-byte v8, v4

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v8, v2

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v8, v1

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    const/16 v8, 0x33

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
