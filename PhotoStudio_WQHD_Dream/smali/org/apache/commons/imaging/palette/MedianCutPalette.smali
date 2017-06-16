.class Lorg/apache/commons/imaging/palette/MedianCutPalette;
.super Lorg/apache/commons/imaging/palette/SimplePalette;
.source "MedianCutPalette.java"


# instance fields
.field private final root:Lorg/apache/commons/imaging/palette/ColorGroup;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/palette/ColorGroup;[I)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    iput-object p1, p0, Lorg/apache/commons/imaging/palette/MedianCutPalette;->root:Lorg/apache/commons/imaging/palette/ColorGroup;

    return-void
.end method


# virtual methods
.method public getPaletteIndex(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/imaging/palette/MedianCutPalette;->root:Lorg/apache/commons/imaging/palette/ColorGroup;

    :goto_0
    iget-object v1, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/palette/ColorGroupCut;->getColorGroup(I)Lorg/apache/commons/imaging/palette/ColorGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorGroup;->paletteIndex:I

    return v1
.end method
