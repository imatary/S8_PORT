.class Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;
.super Ljava/lang/Object;
.source "PngWriter.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/Palette;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/png/PngWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransparentPalette"
.end annotation


# instance fields
.field private final palette:Lorg/apache/commons/imaging/palette/Palette;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    return-void
.end method


# virtual methods
.method public getEntry(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPaletteIndex(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    invoke-interface {v1, p1}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;->palette:Lorg/apache/commons/imaging/palette/Palette;

    invoke-interface {v0}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
