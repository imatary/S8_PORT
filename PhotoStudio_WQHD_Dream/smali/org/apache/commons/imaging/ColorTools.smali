.class public Lorg/apache/commons/imaging/ColorTools;
.super Ljava/lang/Object;
.source "ColorTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private countBitsInMask(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    and-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 5

    new-instance v0, Ljava/awt/RenderingHints;

    sget-object v3, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v4, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v3, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v4, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v4, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/awt/image/ColorConvertOp;

    invoke-direct {v1, p2, p3, v0}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    return-object v2
.end method

.method public convertBetweenColorSpacesX2(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/awt/RenderingHints;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v2, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    new-instance v1, Ljava/awt/image/ColorConvertOp;

    invoke-direct {v1, p2, p3, v0}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    invoke-virtual {v1, p1, v4}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public convertBetweenICCProfiles(Ljava/awt/image/BufferedImage;Ljava/awt/color/ICC_Profile;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 3

    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    new-instance v1, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v1, p3}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/imaging/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    return-object v2
.end method

.method protected convertFromColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 2

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/imaging/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public convertToColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 6

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    new-instance v1, Ljava/awt/RenderingHints;

    sget-object v4, Ljava/awt/RenderingHints;->KEY_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-direct {v1, v4, v5}, Ljava/awt/RenderingHints;-><init>(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v4, Ljava/awt/RenderingHints;->KEY_COLOR_RENDERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/awt/RenderingHints;->KEY_DITHERING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/awt/image/ColorConvertOp;

    invoke-direct {v2, v0, p2, v1}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Ljava/awt/image/ColorConvertOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    return-object v3
.end method

.method public convertToICCProfile(Ljava/awt/image/BufferedImage;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 2

    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ColorTools;->convertToColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public convertTosRGB(Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/imaging/ColorTools;->convertToColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public correctImage(Ljava/awt/image/BufferedImage;Ljava/io/File;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/commons/imaging/Imaging;->getICCProfile(Ljava/io/File;)Ljava/awt/color/ICC_Profile;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, v1}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ColorTools;->convertFromColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    goto :goto_0
.end method

.method public deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/ColorModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/imaging/ColorTools;->deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;

    move-result-object v0

    return-object v0
.end method

.method public deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/imaging/ColorTools;->deriveColorModel(Ljava/awt/image/ColorModel;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;

    move-result-object v0

    return-object v0
.end method

.method public deriveColorModel(Ljava/awt/image/ColorModel;Ljava/awt/color/ColorSpace;Z)Ljava/awt/image/ColorModel;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    const/4 v2, 0x0

    instance-of v0, p1, Ljava/awt/image/ComponentColorModel;

    if-eqz v0, :cond_1

    move-object v9, p1

    check-cast v9, Ljava/awt/image/ComponentColorModel;

    if-eqz p3, :cond_0

    new-instance v0, Ljava/awt/image/ComponentColorModel;

    const/4 v4, 0x1

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->getTransferType()I

    move-result v5

    move-object v1, p2

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/awt/image/ComponentColorModel;

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->hasAlpha()Z

    move-result v2

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->isAlphaPremultiplied()Z

    move-result v3

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->getTransparency()I

    move-result v4

    invoke-virtual {v9}, Ljava/awt/image/ComponentColorModel;->getTransferType()I

    move-result v5

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/awt/image/DirectColorModel;

    if-eqz v0, :cond_2

    move-object v10, p1

    check-cast v10, Ljava/awt/image/DirectColorModel;

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result v0

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v1

    or-int v11, v0, v1

    invoke-direct {p0, v11}, Lorg/apache/commons/imaging/ColorTools;->countBitsInMask(I)I

    move-result v2

    new-instance v0, Ljava/awt/image/DirectColorModel;

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getRedMask()I

    move-result v3

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getGreenMask()I

    move-result v4

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getBlueMask()I

    move-result v5

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getAlphaMask()I

    move-result v6

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->isAlphaPremultiplied()Z

    move-result v7

    invoke-virtual {v10}, Ljava/awt/image/DirectColorModel;->getTransferType()I

    move-result v8

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/awt/image/ImagingOpException;

    const-string v1, "Could not clone unknown ColorModel Type."

    invoke-direct {v0, v1}, Ljava/awt/image/ImagingOpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ColorTools;->deriveColorModel(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    new-instance v0, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v0, p2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ColorTools;->relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public relabelColorSpace(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/image/ImagingOpException;
        }
    .end annotation

    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p2, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method
