.class final Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;
.super Ljava/lang/Object;
.source "YCbCrConverter.java"


# static fields
.field private static final BLUES:[I

.field private static final GREENS1:[I

.field private static final GREENS2:[I

.field private static final REDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/high16 v8, 0x10000

    const/16 v11, 0xff

    const/16 v10, 0x100

    new-array v7, v8, [I

    sput-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->REDS:[I

    new-array v7, v8, [I

    sput-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->BLUES:[I

    new-array v7, v8, [I

    sput-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS1:[I

    const/high16 v7, 0x20000

    new-array v7, v7, [I

    sput-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS2:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v10, :cond_2

    const v7, 0x3fb374bc    # 1.402f

    add-int/lit8 v8, v1, -0x80

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->fastRound(F)I

    move-result v7

    add-int v5, v2, v7

    if-gez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    if-le v5, v11, :cond_1

    const/16 v5, 0xff

    :cond_1
    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->REDS:[I

    shl-int/lit8 v8, v1, 0x8

    or-int/2addr v8, v2

    shl-int/lit8 v9, v5, 0x10

    aput v9, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_7

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v10, :cond_6

    const v7, 0x3fe2d0e5    # 1.772f

    add-int/lit8 v8, v0, -0x80

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->fastRound(F)I

    move-result v7

    add-int v3, v2, v7

    if-gez v3, :cond_4

    const/4 v3, 0x0

    :cond_4
    if-le v3, v11, :cond_5

    const/16 v3, 0xff

    :cond_5
    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->BLUES:[I

    shl-int/lit8 v8, v0, 0x8

    or-int/2addr v8, v2

    aput v3, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_9

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v10, :cond_8

    const v7, 0x3eb0331e    # 0.34414f

    add-int/lit8 v8, v0, -0x80

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const v8, 0x3f36d1e1    # 0.71414f

    add-int/lit8 v9, v1, -0x80

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-static {v7}, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->fastRound(F)I

    move-result v6

    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS1:[I

    shl-int/lit8 v8, v0, 0x8

    or-int/2addr v8, v1

    add-int/lit16 v9, v6, 0x87

    aput v9, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v10, :cond_d

    const/4 v6, 0x0

    :goto_7
    const/16 v7, 0x10e

    if-ge v6, v7, :cond_c

    add-int/lit16 v7, v6, -0x87

    sub-int v4, v2, v7

    if-gez v4, :cond_b

    const/4 v4, 0x0

    :cond_a
    :goto_8
    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS2:[I

    shl-int/lit8 v8, v6, 0x8

    or-int/2addr v8, v2

    shl-int/lit8 v9, v4, 0x8

    aput v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    if-le v4, v11, :cond_a

    const/16 v4, 0xff

    goto :goto_8

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertYCbCrToRGB(III)I
    .locals 6

    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->REDS:[I

    shl-int/lit8 v5, p2, 0x8

    or-int/2addr v5, p0

    aget v3, v4, v5

    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS1:[I

    shl-int/lit8 v5, p1, 0x8

    or-int/2addr v5, p2

    aget v2, v4, v5

    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->GREENS2:[I

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v5, p0

    aget v1, v4, v5

    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/decoder/YCbCrConverter;->BLUES:[I

    shl-int/lit8 v5, p1, 0x8

    or-int/2addr v5, p0

    aget v0, v4, v5

    or-int v4, v3, v1

    or-int/2addr v4, v0

    return v4
.end method

.method private static fastRound(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method
