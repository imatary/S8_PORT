.class Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;
.super Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PNGIconData"
.end annotation


# instance fields
.field public final bufferedImage:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;Ljava/awt/image/BufferedImage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;->bufferedImage:Ljava/awt/image/BufferedImage;

    return-void
.end method


# virtual methods
.method protected dumpSubclass(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "PNGIconData"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public readBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$PNGIconData;->bufferedImage:Ljava/awt/image/BufferedImage;

    return-object v0
.end method
