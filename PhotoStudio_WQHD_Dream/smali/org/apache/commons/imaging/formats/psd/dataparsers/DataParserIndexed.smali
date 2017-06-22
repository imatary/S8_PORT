.class public Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;
.super Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.source "DataParserIndexed.java"


# instance fields
.field private final colorTable:[I


# direct methods
.method public constructor <init>([B)V
    .locals 9

    const/16 v8, 0x100

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;-><init>()V

    new-array v6, v8, [I

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_0

    add-int/lit8 v6, v3, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    add-int/lit16 v6, v3, 0x100

    aget-byte v6, p1, v6

    and-int/lit16 v2, v6, 0xff

    add-int/lit16 v6, v3, 0x200

    aget-byte v6, p1, v6

    and-int/lit16 v1, v6, 0xff

    const/16 v0, 0xff

    const/high16 v6, -0x1000000

    and-int/lit16 v7, v4, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    and-int/lit16 v7, v2, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    and-int/lit16 v7, v1, 0xff

    shl-int/lit8 v7, v7, 0x0

    or-int v5, v6, v7

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    aput v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
    .locals 2

    const/4 v1, 0x0

    aget-object v1, p1, v1

    aget-object v1, v1, p3

    aget v1, v1, p2

    and-int/lit16 v0, v1, 0xff

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParserIndexed;->colorTable:[I

    aget v1, v1, v0

    return v1
.end method
