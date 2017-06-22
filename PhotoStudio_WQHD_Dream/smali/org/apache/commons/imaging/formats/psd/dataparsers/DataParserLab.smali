.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserLab;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserLab.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
    .locals 4

    const/4 v3, 0x0

    aget-object v3, p1, v3

    aget-object v3, v3, p3

    aget v3, v3, p2

    and-int/lit16 v2, v3, 0xff

    const/4 v3, 0x1

    aget-object v3, p1, v3

    aget-object v3, v3, p3

    aget v3, v3, p2

    and-int/lit16 v0, v3, 0xff

    const/4 v3, 0x2

    aget-object v3, p1, v3

    aget-object v3, v3, p3

    aget v3, v3, p2

    and-int/lit16 v1, v3, 0xff

    add-int/lit8 v0, v0, -0x80

    add-int/lit8 v1, v1, -0x80

    invoke-static {v2, v0, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELabtoARGBTest(III)I

    move-result v3

    return v3
.end method
