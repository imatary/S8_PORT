.class abstract Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
.super Ljava/lang/Object;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IconData"
.end annotation


# instance fields
.field public final iconInfo:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->iconInfo:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->iconInfo:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;->dumpSubclass(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected abstract dumpSubclass(Ljava/io/PrintWriter;)V
.end method

.method public abstract readBufferedImage()Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation
.end method
