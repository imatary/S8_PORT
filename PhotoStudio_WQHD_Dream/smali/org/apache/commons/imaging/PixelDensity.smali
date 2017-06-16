.class public final Lorg/apache/commons/imaging/PixelDensity;
.super Ljava/lang/Object;
.source "PixelDensity.java"


# static fields
.field private static final PIXEL_NO_UNIT:I = 0x0

.field private static final PIXEL_PER_CENTIMETRE:I = 0x64

.field private static final PIXEL_PER_INCH:I = 0xfe

.field private static final PIXEL_PER_METRE:I = 0x2710


# instance fields
.field private final horizontalDensity:D

.field private final unitLength:I

.field private final verticalDensity:D


# direct methods
.method private constructor <init>(DDI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    iput-wide p3, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    iput p5, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    return-void
.end method

.method public static createFromPixelsPerCentimetre(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 8

    new-instance v1, Lorg/apache/commons/imaging/PixelDensity;

    const/16 v6, 0x64

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v1
.end method

.method public static createFromPixelsPerInch(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 8

    new-instance v1, Lorg/apache/commons/imaging/PixelDensity;

    const/16 v6, 0xfe

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v1
.end method

.method public static createFromPixelsPerMetre(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 8

    new-instance v1, Lorg/apache/commons/imaging/PixelDensity;

    const/16 v6, 0x2710

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v1
.end method

.method public static createUnitless(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 8

    new-instance v1, Lorg/apache/commons/imaging/PixelDensity;

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v1
.end method


# virtual methods
.method public getRawHorizontalDensity()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    return-wide v0
.end method

.method public getRawVerticalDensity()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    return-wide v0
.end method

.method public horizontalDensityCentimetres()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInCentimetres()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public horizontalDensityInches()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInInches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    const-wide v2, 0x406fc00000000000L    # 254.0

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public horizontalDensityMetres()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInMetres()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public isInCentimetres()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInInches()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMetres()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnitless()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verticalDensityCentimetres()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInCentimetres()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public verticalDensityInches()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInInches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    const-wide v2, 0x406fc00000000000L    # 254.0

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public verticalDensityMetres()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInMetres()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method
