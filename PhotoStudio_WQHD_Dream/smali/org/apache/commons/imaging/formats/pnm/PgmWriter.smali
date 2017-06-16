.class Lorg/apache/commons/imaging/formats/pnm/PgmWriter;
.super Ljava/lang/Object;
.source "PgmWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/pnm/PnmWriter;


# instance fields
.field private rawbits:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/pnm/PgmWriter;->rawbits:Z

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

    const/16 v11, 0x20

    const/16 v9, 0x50

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    iget-boolean v9, p0, Lorg/apache/commons/imaging/formats/pnm/PgmWriter;->rawbits:Z

    if-eqz v9, :cond_0

    const/16 v9, 0x35

    :goto_0
    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    const/16 v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    const/16 v9, 0xa

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    invoke-virtual {p1, v7, v8}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    shr-int/lit8 v9, v0, 0x10

    and-int/lit16 v4, v9, 0xff

    shr-int/lit8 v9, v0, 0x8

    and-int/lit16 v2, v9, 0xff

    shr-int/lit8 v9, v0, 0x0

    and-int/lit16 v1, v9, 0xff

    add-int v9, v4, v2

    add-int/2addr v9, v1

    div-int/lit8 v5, v9, 0x3

    iget-boolean v9, p0, Lorg/apache/commons/imaging/formats/pnm/PgmWriter;->rawbits:Z

    if-eqz v9, :cond_1

    int-to-byte v9, v5

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    const/16 v9, 0x32

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "US-ASCII"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
