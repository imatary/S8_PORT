.class public Lorg/apache/commons/imaging/palette/SimplePalette;
.super Ljava/lang/Object;
.source "SimplePalette.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/Palette;


# instance fields
.field private final palette:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/palette/SimplePalette;->palette:[I

    return-void
.end method


# virtual methods
.method public getEntry(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/palette/SimplePalette;->palette:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPaletteIndex(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/palette/SimplePalette;->palette:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/SimplePalette;->palette:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/palette/SimplePalette;->palette:[I

    array-length v0, v0

    return v0
.end method
