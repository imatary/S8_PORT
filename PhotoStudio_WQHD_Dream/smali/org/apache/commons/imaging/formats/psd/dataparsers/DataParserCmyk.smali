.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserCmyk;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserCmyk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
    .locals 5

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v0, v4, 0xff

    const/4 v4, 0x1

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v2, v4, 0xff

    const/4 v4, 0x2

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v3, v4, 0xff

    const/4 v4, 0x3

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v1, v4, 0xff

    rsub-int v0, v0, 0xff

    rsub-int v2, v2, 0xff

    rsub-int v3, v3, 0xff

    rsub-int v1, v1, 0xff

    invoke-static {v0, v2, v3, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result v4

    return v4
.end method
