.class Lorg/apache/commons/imaging/formats/pnm/PamWriter;
.super Ljava/lang/Object;
.source "PamWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/pnm/PnmWriter;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 12
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

    const/16 v11, 0xa

    const/16 v9, 0x50

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    const/16 v9, 0x37

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WIDTH "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HEIGHT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const-string v9, "DEPTH 4"

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const-string v9, "MAXVAL 255"

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const-string v9, "TUPLTYPE RGB_ALPHA"

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const-string v9, "ENDHDR"

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    invoke-virtual {p1, v7, v8}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v1

    shr-int/lit8 v9, v1, 0x18

    and-int/lit16 v0, v9, 0xff

    shr-int/lit8 v9, v1, 0x10

    and-int/lit16 v5, v9, 0xff

    shr-int/lit8 v9, v1, 0x8

    and-int/lit16 v3, v9, 0xff

    shr-int/lit8 v9, v1, 0x0

    and-int/lit16 v2, v9, 0xff

    int-to-byte v9, v5

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v9, v3

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v9, v2

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v9, v0

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
