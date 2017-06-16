.class final Lorg/apache/commons/imaging/formats/icns/Rle24Compression;
.super Ljava/lang/Object;
.source "Rle24Compression.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompress(II[B)[B
    .locals 12

    const/16 v11, 0x80

    mul-int v5, p0, p1

    mul-int/lit8 v10, v5, 0x4

    new-array v7, v10, [B

    const/4 v2, 0x0

    if-lt p0, v11, :cond_0

    if-lt p1, v11, :cond_0

    const/4 v2, 0x4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v10, 0x3

    if-gt v0, v10, :cond_5

    move v6, v5

    const/4 v8, 0x0

    :goto_1
    if-lez v6, :cond_4

    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_2

    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v1, v10, -0x7d

    const/4 v4, 0x0

    move v9, v8

    :goto_2
    if-ge v4, v1, :cond_1

    add-int/lit8 v8, v9, 0x1

    mul-int/lit8 v10, v9, 0x4

    add-int/2addr v10, v0

    add-int/lit8 v11, v2, 0x1

    aget-byte v11, p2, v11

    aput-byte v11, v7, v10

    add-int/lit8 v4, v4, 0x1

    move v9, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v6, v1

    move v8, v9

    goto :goto_1

    :cond_2
    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v1, v10, 0x1

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    move v9, v8

    move v3, v2

    :goto_3
    if-ge v4, v1, :cond_3

    add-int/lit8 v8, v9, 0x1

    mul-int/lit8 v10, v9, 0x4

    add-int/2addr v10, v0

    add-int/lit8 v2, v3, 0x1

    aget-byte v11, p2, v3

    aput-byte v11, v7, v10

    add-int/lit8 v4, v4, 0x1

    move v9, v8

    move v3, v2

    goto :goto_3

    :cond_3
    sub-int/2addr v6, v1

    move v8, v9

    move v2, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v7
.end method
