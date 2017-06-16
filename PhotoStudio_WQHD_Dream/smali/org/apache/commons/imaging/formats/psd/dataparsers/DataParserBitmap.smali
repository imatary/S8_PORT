.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserBitmap;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserBitmap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
    .locals 4

    const/4 v2, 0x0

    aget-object v2, p1, v2

    aget-object v2, v2, p3

    aget v2, v2, p2

    and-int/lit16 v1, v2, 0xff

    if-nez v1, :cond_0

    const/16 v1, 0xff

    :goto_0
    const/16 v0, 0xff

    const/high16 v2, -0x1000000

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x0

    or-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
