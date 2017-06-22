.class Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;
.super Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapIconData"
.end annotation


# instance fields
.field public final bufferedImage:Ljava/awt/image/BufferedImage;

.field public final header:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;Ljava/awt/image/BufferedImage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;->header:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;->bufferedImage:Ljava/awt/image/BufferedImage;

    return-void
.end method


# virtual methods
.method protected dumpSubclass(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "BitmapIconData"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;->header:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public readBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;->bufferedImage:Ljava/awt/image/BufferedImage;

    return-object v0
.end method
