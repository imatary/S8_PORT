.class public final Landroid/icu/text/UnicodeCompressor;
.super Ljava/lang/Object;
.source "UnicodeCompressor.java"

# interfaces
.implements Landroid/icu/text/SCSU;


# static fields
.field private static sSingleTagTable:[Z

.field private static sUnicodeTagTable:[Z


# instance fields
.field private fCurrentWindow:I

.field private fIndexCount:[I

.field private fMode:I

.field private fOffsets:[I

.field private fTimeStamp:I

.field private fTimeStamps:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    iput v1, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iput v1, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    invoke-virtual {p0}, Landroid/icu/text/UnicodeCompressor;->reset()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/icu/text/UnicodeCompressor;->compress([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static compress([CII)[B
    .locals 10

    const/4 v6, 0x0

    new-instance v0, Landroid/icu/text/UnicodeCompressor;

    invoke-direct {v0}, Landroid/icu/text/UnicodeCompressor;-><init>()V

    sub-int v1, p2, p1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v5, v7, [B

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/UnicodeCompressor;->compress([CII[I[BII)I

    move-result v8

    new-array v9, v8, [B

    invoke-static {v5, v6, v9, v6, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v9
.end method

.method private findDynamicWindow(I)I
    .locals 3

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static findStaticWindow(I)I
    .locals 2

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    invoke-static {p0, v0}, Landroid/icu/text/UnicodeCompressor;->inStaticWindow(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getLRDefinedWindow()I
    .locals 4

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aget v3, v3, v0

    if-ge v3, v1, :cond_0

    iget-object v3, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aget v1, v3, v0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private inDynamicWindow(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v1, v1, p2

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v1, v1, p2

    add-int/lit16 v1, v1, 0x80

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static inStaticWindow(II)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Landroid/icu/text/UnicodeCompressor;->sOffsets:[I

    aget v1, v1, p1

    if-lt p0, v1, :cond_0

    sget-object v1, Landroid/icu/text/UnicodeCompressor;->sOffsets:[I

    aget v1, v1, p1

    add-int/lit16 v1, v1, 0x80

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isCompressible(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3400

    if-lt p0, v1, :cond_0

    const v1, 0xe000

    if-lt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeIndex(I)I
    .locals 2

    const/16 v1, 0x30a0

    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x140

    if-ge p0, v0, :cond_0

    const/16 v0, 0xf9

    return v0

    :cond_0
    const/16 v0, 0x250

    if-lt p0, v0, :cond_1

    const/16 v0, 0x2d0

    if-ge p0, v0, :cond_1

    const/16 v0, 0xfa

    return v0

    :cond_1
    const/16 v0, 0x370

    if-lt p0, v0, :cond_2

    const/16 v0, 0x3f0

    if-ge p0, v0, :cond_2

    const/16 v0, 0xfb

    return v0

    :cond_2
    const/16 v0, 0x530

    if-lt p0, v0, :cond_3

    const/16 v0, 0x590

    if-ge p0, v0, :cond_3

    const/16 v0, 0xfc

    return v0

    :cond_3
    const/16 v0, 0x3040

    if-lt p0, v0, :cond_4

    if-ge p0, v1, :cond_4

    const/16 v0, 0xfd

    return v0

    :cond_4
    if-lt p0, v1, :cond_5

    const/16 v0, 0x3120

    if-ge p0, v0, :cond_5

    const/16 v0, 0xfe

    return v0

    :cond_5
    const v0, 0xff60

    if-lt p0, v0, :cond_6

    const v0, 0xff9f

    if-ge p0, v0, :cond_6

    const/16 v0, 0xff

    return v0

    :cond_6
    const/16 v0, 0x80

    if-lt p0, v0, :cond_7

    const/16 v0, 0x3400

    if-ge p0, v0, :cond_7

    div-int/lit16 v0, p0, 0x80

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_7
    const v0, 0xe000

    if-lt p0, v0, :cond_8

    const v0, 0xffff

    if-gt p0, v0, :cond_8

    const v0, 0xac00

    sub-int v0, p0, v0

    div-int/lit16 v0, v0, 0x80

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public compress([CII[I[BII)I
    .locals 14

    move/from16 v1, p6

    move/from16 v9, p2

    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v8, -0x1

    const/4 v5, -0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p5

    array-length v12, v0

    const/4 v13, 0x4

    if-lt v12, v13, :cond_0

    sub-int v12, p7, p6

    const/4 v13, 0x4

    if-ge v12, v13, :cond_1

    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "byteBuffer.length < 4"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    :goto_0
    move/from16 v0, p3

    if-ge v9, v0, :cond_2

    move/from16 v0, p7

    if-ge v1, v0, :cond_2

    iget v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    packed-switch v12, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v10, v9

    move v2, v1

    :goto_1
    move/from16 v0, p3

    if-ge v10, v0, :cond_4

    move/from16 v0, p7

    if-ge v2, v0, :cond_4

    add-int/lit8 v9, v10, 0x1

    aget-char v4, p1, v10

    move/from16 v0, p3

    if-ge v9, v0, :cond_5

    aget-char v8, p1, v9

    :goto_2
    const/16 v12, 0x80

    if-ge v4, v12, :cond_7

    and-int/lit16 v7, v4, 0xff

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    aget-boolean v12, v12, v7

    if-eqz v12, :cond_32

    add-int/lit8 v12, v2, 0x1

    move/from16 v0, p7

    if-lt v12, v0, :cond_6

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    :cond_2
    :goto_3
    if-eqz p4, :cond_3

    sub-int v12, v9, p2

    const/4 v13, 0x0

    aput v12, p4, v13

    :cond_3
    sub-int v12, v1, p6

    return v12

    :cond_4
    move v9, v10

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v8, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v2, 0x1

    const/4 v12, 0x1

    aput-byte v12, p5, v2

    :goto_4
    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v7

    aput-byte v12, p5, v1

    move v1, v2

    :goto_5
    move v10, v9

    move v2, v1

    goto :goto_1

    :cond_7
    iget v12, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    invoke-direct {p0, v4, v12}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v12

    if-eqz v12, :cond_8

    add-int/lit8 v1, v2, 0x1

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    aget v12, v12, v13

    sub-int v12, v4, v12

    add-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    goto :goto_5

    :cond_8
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v12

    if-nez v12, :cond_d

    const/4 v12, -0x1

    if-eq v8, v12, :cond_a

    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v12

    if-eqz v12, :cond_a

    add-int/lit8 v12, v2, 0x2

    move/from16 v0, p7

    if-lt v12, v0, :cond_9

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0xe

    aput-byte v12, p5, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, p5, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit16 v12, v4, 0xff

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    goto :goto_5

    :cond_a
    add-int/lit8 v12, v2, 0x3

    move/from16 v0, p7

    if-lt v12, v0, :cond_b

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto :goto_3

    :cond_b
    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0xf

    aput-byte v12, p5, v2

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit16 v7, v4, 0xff

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v12, v12, v6

    if-eqz v12, :cond_c

    add-int/lit8 v2, v1, 0x1

    const/16 v12, -0x10

    aput-byte v12, p5, v1

    move v1, v2

    :cond_c
    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v6

    aput-byte v12, p5, v1

    add-int/lit8 v1, v2, 0x1

    int-to-byte v12, v7

    aput-byte v12, p5, v2

    const/4 v12, 0x1

    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v4}, Landroid/icu/text/UnicodeCompressor;->findDynamicWindow(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_12

    add-int/lit8 v12, v9, 0x1

    move/from16 v0, p3

    if-ge v12, v0, :cond_e

    add-int/lit8 v12, v9, 0x1

    aget-char v5, p1, v12

    :goto_6
    invoke-direct {p0, v8, v11}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-direct {p0, v5, v11}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v12

    if-eqz v12, :cond_10

    add-int/lit8 v12, v2, 0x1

    move/from16 v0, p7

    if-lt v12, v0, :cond_f

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_e
    const/4 v5, -0x1

    goto :goto_6

    :cond_f
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    add-int/lit8 v2, v1, 0x1

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v12, v12, v11

    sub-int v12, v4, v12

    add-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, p5, v1

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v12, v11

    iput v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    move v1, v2

    goto/16 :goto_5

    :cond_10
    add-int/lit8 v12, v2, 0x1

    move/from16 v0, p7

    if-lt v12, v0, :cond_11

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_11
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v12, v11, 0x1

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    add-int/lit8 v2, v1, 0x1

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v12, v12, v11

    sub-int v12, v4, v12

    add-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, p5, v1

    move v1, v2

    goto/16 :goto_5

    :cond_12
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->findStaticWindow(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_13

    invoke-static {v8, v11}, Landroid/icu/text/UnicodeCompressor;->inStaticWindow(II)Z

    move-result v12

    if-eqz v12, :cond_15

    :cond_13
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v3

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v13, v12, v3

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v3

    add-int/lit8 v12, v9, 0x1

    move/from16 v0, p3

    if-ge v12, v0, :cond_17

    add-int/lit8 v12, v9, 0x1

    aget-char v5, p1, v12

    :goto_7
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v12, v12, v3

    const/4 v13, 0x1

    if-gt v12, v13, :cond_14

    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v12

    if-ne v3, v12, :cond_19

    invoke-static {v5}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v12

    if-ne v3, v12, :cond_19

    :cond_14
    add-int/lit8 v12, v2, 0x2

    move/from16 v0, p7

    if-lt v12, v0, :cond_18

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_15
    add-int/lit8 v12, v2, 0x1

    move/from16 v0, p7

    if-lt v12, v0, :cond_16

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_16
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v12, v11, 0x1

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    add-int/lit8 v2, v1, 0x1

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sOffsets:[I

    aget v12, v12, v11

    sub-int v12, v4, v12

    int-to-byte v12, v12

    aput-byte v12, p5, v1

    move v1, v2

    goto/16 :goto_5

    :cond_17
    const/4 v5, -0x1

    goto :goto_7

    :cond_18
    invoke-direct {p0}, Landroid/icu/text/UnicodeCompressor;->getLRDefinedWindow()I

    move-result v11

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v12, v11, 0x18

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v3

    aput-byte v12, p5, v1

    add-int/lit8 v1, v2, 0x1

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v12, v12, v3

    sub-int v12, v4, v12

    add-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    sget-object v13, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v13, v13, v3

    aput v13, v12, v11

    iput v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v12, v11

    goto/16 :goto_5

    :cond_19
    add-int/lit8 v12, v2, 0x3

    move/from16 v0, p7

    if-lt v12, v0, :cond_1a

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_1a
    add-int/lit8 v1, v2, 0x1

    const/16 v12, 0xf

    aput-byte v12, p5, v2

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit16 v7, v4, 0xff

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v12, v12, v6

    if-eqz v12, :cond_1b

    add-int/lit8 v2, v1, 0x1

    const/16 v12, -0x10

    aput-byte v12, p5, v1

    move v1, v2

    :cond_1b
    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v6

    aput-byte v12, p5, v1

    add-int/lit8 v1, v2, 0x1

    int-to-byte v12, v7

    aput-byte v12, p5, v2

    const/4 v12, 0x1

    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    goto/16 :goto_0

    :pswitch_1
    move v10, v9

    move v2, v1

    :goto_8
    move/from16 v0, p3

    if-ge v10, v0, :cond_1e

    move/from16 v0, p7

    if-ge v2, v0, :cond_1e

    add-int/lit8 v9, v10, 0x1

    aget-char v4, p1, v10

    move/from16 v0, p3

    if-ge v9, v0, :cond_1f

    aget-char v8, p1, v9

    :goto_9
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v12

    if-eqz v12, :cond_20

    const/4 v12, -0x1

    if-eq v8, v12, :cond_1c

    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->isCompressible(I)Z

    move-result v12

    if-eqz v12, :cond_20

    :cond_1c
    const/16 v12, 0x80

    if-ge v4, v12, :cond_25

    and-int/lit16 v7, v4, 0xff

    const/4 v12, -0x1

    if-eq v8, v12, :cond_1d

    const/16 v12, 0x80

    if-ge v8, v12, :cond_1d

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sSingleTagTable:[Z

    aget-boolean v12, v12, v7

    if-eqz v12, :cond_22

    :cond_1d
    add-int/lit8 v12, v2, 0x1

    move/from16 v0, p7

    if-lt v12, v0, :cond_24

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_1e
    move v9, v10

    move v1, v2

    goto/16 :goto_0

    :cond_1f
    const/4 v8, -0x1

    goto :goto_9

    :cond_20
    add-int/lit8 v12, v2, 0x2

    move/from16 v0, p7

    if-lt v12, v0, :cond_21

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_21
    ushr-int/lit8 v6, v4, 0x8

    and-int/lit16 v7, v4, 0xff

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v12, v12, v6

    if-eqz v12, :cond_31

    add-int/lit8 v1, v2, 0x1

    const/16 v12, -0x10

    aput-byte v12, p5, v2

    :goto_a
    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v6

    aput-byte v12, p5, v1

    add-int/lit8 v1, v2, 0x1

    int-to-byte v12, v7

    aput-byte v12, p5, v2

    :goto_b
    move v10, v9

    move v2, v1

    goto :goto_8

    :cond_22
    add-int/lit8 v12, v2, 0x1

    move/from16 v0, p7

    if-lt v12, v0, :cond_23

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_23
    iget v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    add-int/lit8 v1, v2, 0x1

    add-int/lit16 v12, v11, 0xe0

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v7

    aput-byte v12, p5, v1

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v12, v11

    const/4 v12, 0x0

    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    move v1, v2

    goto/16 :goto_0

    :cond_24
    add-int/lit8 v1, v2, 0x1

    const/4 v12, 0x0

    aput-byte v12, p5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v7

    aput-byte v12, p5, v1

    move v1, v2

    goto :goto_b

    :cond_25
    invoke-direct {p0, v4}, Landroid/icu/text/UnicodeCompressor;->findDynamicWindow(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_29

    invoke-direct {p0, v8, v11}, Landroid/icu/text/UnicodeCompressor;->inDynamicWindow(II)Z

    move-result v12

    if-eqz v12, :cond_27

    add-int/lit8 v12, v2, 0x1

    move/from16 v0, p7

    if-lt v12, v0, :cond_26

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_26
    add-int/lit8 v1, v2, 0x1

    add-int/lit16 v12, v11, 0xe0

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    add-int/lit8 v2, v1, 0x1

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    aget v12, v12, v11

    sub-int v12, v4, v12

    add-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, p5, v1

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v12, v11

    iput v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    const/4 v12, 0x0

    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    move v1, v2

    goto/16 :goto_0

    :cond_27
    add-int/lit8 v12, v2, 0x2

    move/from16 v0, p7

    if-lt v12, v0, :cond_28

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_28
    ushr-int/lit8 v6, v4, 0x8

    and-int/lit16 v7, v4, 0xff

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v12, v12, v6

    if-eqz v12, :cond_30

    add-int/lit8 v1, v2, 0x1

    const/16 v12, -0x10

    aput-byte v12, p5, v2

    :goto_c
    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v6

    aput-byte v12, p5, v1

    add-int/lit8 v1, v2, 0x1

    int-to-byte v12, v7

    aput-byte v12, p5, v2

    goto/16 :goto_b

    :cond_29
    invoke-static {v4}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v3

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v13, v12, v3

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v3

    add-int/lit8 v12, v9, 0x1

    move/from16 v0, p3

    if-ge v12, v0, :cond_2b

    add-int/lit8 v12, v9, 0x1

    aget-char v5, p1, v12

    :goto_d
    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aget v12, v12, v3

    const/4 v13, 0x1

    if-gt v12, v13, :cond_2a

    invoke-static {v8}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v12

    if-ne v3, v12, :cond_2d

    invoke-static {v5}, Landroid/icu/text/UnicodeCompressor;->makeIndex(I)I

    move-result v12

    if-ne v3, v12, :cond_2d

    :cond_2a
    add-int/lit8 v12, v2, 0x2

    move/from16 v0, p7

    if-lt v12, v0, :cond_2c

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_2b
    const/4 v5, -0x1

    goto :goto_d

    :cond_2c
    invoke-direct {p0}, Landroid/icu/text/UnicodeCompressor;->getLRDefinedWindow()I

    move-result v11

    add-int/lit8 v1, v2, 0x1

    add-int/lit16 v12, v11, 0xe8

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v3

    aput-byte v12, p5, v1

    add-int/lit8 v1, v2, 0x1

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v12, v12, v3

    sub-int v12, v4, v12

    add-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, p5, v2

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    sget-object v13, Landroid/icu/text/UnicodeCompressor;->sOffsetTable:[I

    aget v13, v13, v3

    aput v13, v12, v11

    iput v11, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    iget-object v12, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    iget v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    aput v13, v12, v11

    const/4 v12, 0x0

    iput v12, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    goto/16 :goto_0

    :cond_2d
    add-int/lit8 v12, v2, 0x2

    move/from16 v0, p7

    if-lt v12, v0, :cond_2e

    add-int/lit8 v9, v9, -0x1

    move v1, v2

    goto/16 :goto_3

    :cond_2e
    ushr-int/lit8 v6, v4, 0x8

    and-int/lit16 v7, v4, 0xff

    sget-object v12, Landroid/icu/text/UnicodeCompressor;->sUnicodeTagTable:[Z

    aget-boolean v12, v12, v6

    if-eqz v12, :cond_2f

    add-int/lit8 v1, v2, 0x1

    const/16 v12, -0x10

    aput-byte v12, p5, v2

    :goto_e
    add-int/lit8 v2, v1, 0x1

    int-to-byte v12, v6

    aput-byte v12, p5, v1

    add-int/lit8 v1, v2, 0x1

    int-to-byte v12, v7

    aput-byte v12, p5, v2

    goto/16 :goto_b

    :cond_2f
    move v1, v2

    goto :goto_e

    :cond_30
    move v1, v2

    goto/16 :goto_c

    :cond_31
    move v1, v2

    goto/16 :goto_a

    :cond_32
    move v1, v2

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/16 v2, 0x80

    aput v2, v1, v4

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/16 v2, 0xc0

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/16 v2, 0x400

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/16 v2, 0x600

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/16 v2, 0x900

    const/4 v3, 0x4

    aput v2, v1, v3

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/16 v2, 0x3040

    const/4 v3, 0x5

    aput v2, v1, v3

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const/16 v2, 0x30a0

    const/4 v3, 0x6

    aput v2, v1, v3

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fOffsets:[I

    const v2, 0xff00

    const/4 v3, 0x7

    aput v2, v1, v3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamps:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/UnicodeCompressor;->fIndexCount:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v4, p0, Landroid/icu/text/UnicodeCompressor;->fTimeStamp:I

    iput v4, p0, Landroid/icu/text/UnicodeCompressor;->fCurrentWindow:I

    iput v4, p0, Landroid/icu/text/UnicodeCompressor;->fMode:I

    return-void
.end method
