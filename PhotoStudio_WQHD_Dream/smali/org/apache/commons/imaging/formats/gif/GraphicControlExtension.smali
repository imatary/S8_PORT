.class Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;
.super Lorg/apache/commons/imaging/formats/gif/GifBlock;
.source "GraphicControlExtension.java"


# instance fields
.field public final delay:I

.field public final dispose:I

.field public final packed:I

.field public final transparency:Z

.field public final transparentColorIndex:I


# direct methods
.method public constructor <init>(IIIZII)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifBlock;-><init>(I)V

    iput p2, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->packed:I

    iput p3, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->dispose:I

    iput-boolean p4, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparency:Z

    iput p5, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->delay:I

    iput p6, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparentColorIndex:I

    return-void
.end method
