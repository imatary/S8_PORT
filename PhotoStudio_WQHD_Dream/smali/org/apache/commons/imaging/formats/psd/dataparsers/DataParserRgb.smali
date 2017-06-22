.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserRgb;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserRgb.java"


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
    .locals 6

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v3, v4, 0xff

    const/4 v4, 0x1

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v2, v4, 0xff

    const/4 v4, 0x2

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v1, v4, 0xff

    const/16 v0, 0xff

    const/high16 v4, -0x1000000

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v4, v5

    return v4
.end method
