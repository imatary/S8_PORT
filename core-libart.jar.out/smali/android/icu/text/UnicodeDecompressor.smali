.class public final Landroid/icu/text/UnicodeDecompressor;
.super Ljava/lang/Object;
.source "UnicodeDecompressor.java"

# interfaces
.implements Landroid/icu/text/SCSU;


# static fields
.field private static final BUFSIZE:I = 0x3


# instance fields
.field private fBuffer:[B

.field private fBufferLength:I

.field private fCurrentWindow:I

.field private fMode:I

.field private fOffsets:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    invoke-virtual {p0}, Landroid/icu/text/UnicodeDecompressor;->reset()V

    return-void
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 3

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII)[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static decompress([BII)[C
    .locals 10

    const/4 v2, 0x2

    const/4 v6, 0x0

    new-instance v0, Landroid/icu/text/UnicodeDecompressor;

    invoke-direct {v0}, Landroid/icu/text/UnicodeDecompressor;-><init>()V

    sub-int v1, p2, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v5, v7, [C

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    move-result v8

    new-array v9, v8, [C

    invoke-static {v5, v6, v9, v6, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    return-object v9
.end method


# virtual methods
.method public decompress([BII[I[CII)I
    .locals 19

    move/from16 v11, p2

    move/from16 v17, p6

    const/4 v10, 0x0

    move-object/from16 v0, p5

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    sub-int v2, p7, p6

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "charBuffer.length < 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    if-lez v2, :cond_4

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    array-length v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    sub-int v15, v2, v3

    sub-int v2, p3, p2

    if-ge v2, v15, :cond_2

    sub-int v15, p3, p2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    array-length v5, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    move-result v13

    add-int v17, p6, v13

    add-int v11, p2, v15

    :cond_4
    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_7

    move/from16 v0, v17

    move/from16 v1, p7

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move/from16 v18, v17

    move v12, v11

    :goto_1
    move/from16 v0, p3

    if-ge v12, v0, :cond_5

    move/from16 v0, v18

    move/from16 v1, p7

    if-ge v0, v1, :cond_5

    add-int/lit8 v11, v12, 0x1

    aget-byte v2, p1, v12

    and-int/lit16 v10, v2, 0xff

    packed-switch v10, :pswitch_data_1

    move/from16 v17, v18

    :goto_2
    move/from16 v18, v17

    move v12, v11

    goto :goto_1

    :cond_5
    move v11, v12

    :goto_3
    move/from16 v17, v18

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    aget v2, v2, v3

    const v3, 0xffff

    if-gt v2, v3, :cond_6

    add-int/lit8 v17, v18, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    aget v2, v2, v3

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x80

    int-to-char v2, v2

    aput-char v2, p5, v18

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v18, 0x1

    move/from16 v0, p7

    if-lt v2, v0, :cond_9

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, p3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int v2, p3, v11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int/2addr v11, v2

    move/from16 v17, v18

    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    sub-int v2, v11, p2

    const/4 v3, 0x0

    aput v2, p4, v3

    :cond_8
    sub-int v2, v17, p6

    return v2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    aget v2, v2, v3

    const/high16 v3, 0x10000

    sub-int v16, v2, v3

    add-int/lit8 v17, v18, 0x1

    shr-int/lit8 v2, v16, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p5, v18

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v16

    and-int/lit16 v2, v0, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    and-int/lit8 v3, v10, 0x7f

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p5, v17

    move/from16 v17, v18

    goto :goto_2

    :pswitch_2
    add-int/lit8 v17, v18, 0x1

    int-to-char v2, v10

    aput-char v2, p5, v18

    goto/16 :goto_2

    :pswitch_3
    add-int/lit8 v2, v11, 0x1

    move/from16 v0, p3

    if-lt v2, v0, :cond_a

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, p3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int v2, p3, v11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int/2addr v11, v2

    move/from16 v17, v18

    goto :goto_4

    :cond_a
    add-int/lit8 v12, v11, 0x1

    aget-byte v10, p1, v11

    add-int/lit8 v17, v18, 0x1

    shl-int/lit8 v2, v10, 0x8

    add-int/lit8 v11, v12, 0x1

    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p5, v18

    goto/16 :goto_2

    :pswitch_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    goto/16 :goto_3

    :pswitch_5
    move/from16 v0, p3

    if-lt v11, v0, :cond_b

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, p3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int v2, p3, v11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int/2addr v11, v2

    move/from16 v17, v18

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v12, v11, 0x1

    aget-byte v2, p1, v11

    and-int/lit16 v14, v2, 0xff

    add-int/lit8 v17, v18, 0x1

    if-ltz v14, :cond_c

    const/16 v2, 0x80

    if-ge v14, v2, :cond_c

    sget-object v2, Landroid/icu/text/UnicodeDecompressor;->sOffsets:[I

    add-int/lit8 v3, v10, -0x1

    aget v2, v2, v3

    :goto_5
    add-int/2addr v2, v14

    int-to-char v2, v2

    aput-char v2, p5, v18

    move v11, v12

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    add-int/lit8 v3, v10, -0x1

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x80

    goto :goto_5

    :pswitch_6
    add-int/lit8 v2, v10, -0x10

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    move/from16 v17, v18

    goto/16 :goto_2

    :pswitch_7
    move/from16 v0, p3

    if-lt v11, v0, :cond_d

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, p3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int v2, p3, v11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int/2addr v11, v2

    move/from16 v17, v18

    goto/16 :goto_4

    :cond_d
    add-int/lit8 v2, v10, -0x18

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    sget-object v4, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    add-int/lit8 v12, v11, 0x1

    aget-byte v5, p1, v11

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    aput v4, v2, v3

    move/from16 v17, v18

    move v11, v12

    goto/16 :goto_2

    :pswitch_8
    add-int/lit8 v2, v11, 0x1

    move/from16 v0, p3

    if-lt v2, v0, :cond_e

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, p3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int v2, p3, v11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int/2addr v11, v2

    move/from16 v17, v18

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v12, v11, 0x1

    aget-byte v2, p1, v11

    and-int/lit16 v10, v2, 0xff

    and-int/lit16 v2, v10, 0xe0

    shr-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    and-int/lit8 v4, v10, 0x1f

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v11, v12, 0x1

    aget-byte v5, p1, v12

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x80

    const/high16 v5, 0x10000

    add-int/2addr v4, v5

    aput v4, v2, v3

    move/from16 v17, v18

    goto/16 :goto_2

    :pswitch_9
    move/from16 v17, v18

    goto/16 :goto_2

    :pswitch_a
    move/from16 v18, v17

    move v12, v11

    :goto_6
    move/from16 v0, p3

    if-ge v12, v0, :cond_f

    move/from16 v0, v18

    move/from16 v1, p7

    if-ge v0, v1, :cond_f

    add-int/lit8 v11, v12, 0x1

    aget-byte v2, p1, v12

    and-int/lit16 v10, v2, 0xff

    packed-switch v10, :pswitch_data_2

    move/from16 v0, p3

    if-lt v11, v0, :cond_13

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, p3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int v2, p3, v11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int/2addr v11, v2

    move/from16 v17, v18

    goto/16 :goto_4

    :cond_f
    move v11, v12

    :goto_7
    move/from16 v17, v18

    goto/16 :goto_0

    :pswitch_b
    move/from16 v0, p3

    if-lt v11, v0, :cond_10

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, p3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int v2, p3, v11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int/2addr v11, v2

    move/from16 v17, v18

    goto/16 :goto_4

    :cond_10
    add-int/lit16 v2, v10, -0xe8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    sget-object v4, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    add-int/lit8 v12, v11, 0x1

    aget-byte v5, p1, v11

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    aput v4, v2, v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    move v11, v12

    goto :goto_7

    :pswitch_c
    add-int/lit8 v2, v11, 0x1

    move/from16 v0, p3

    if-lt v2, v0, :cond_11

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, p3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int v2, p3, v11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int/2addr v11, v2

    move/from16 v17, v18

    goto/16 :goto_4

    :cond_11
    add-int/lit8 v12, v11, 0x1

    aget-byte v2, p1, v11

    and-int/lit16 v10, v2, 0xff

    and-int/lit16 v2, v10, 0xe0

    shr-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    and-int/lit8 v4, v10, 0x1f

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v11, v12, 0x1

    aget-byte v5, p1, v12

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x80

    const/high16 v5, 0x10000

    add-int/2addr v4, v5

    aput v4, v2, v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    goto/16 :goto_7

    :pswitch_d
    add-int/lit16 v2, v10, -0xe0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    goto/16 :goto_7

    :pswitch_e
    add-int/lit8 v2, p3, -0x1

    if-lt v11, v2, :cond_12

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, p3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int v2, p3, v11

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    add-int/2addr v11, v2

    move/from16 v17, v18

    goto/16 :goto_4

    :cond_12
    add-int/lit8 v12, v11, 0x1

    aget-byte v10, p1, v11

    add-int/lit8 v17, v18, 0x1

    shl-int/lit8 v2, v10, 0x8

    add-int/lit8 v11, v12, 0x1

    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p5, v18

    :goto_8
    move/from16 v18, v17

    move v12, v11

    goto/16 :goto_6

    :cond_13
    add-int/lit8 v17, v18, 0x1

    shl-int/lit8 v2, v10, 0x8

    add-int/lit8 v12, v11, 0x1

    aget-byte v3, p1, v11

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p5, v18

    move v11, v12

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_c
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/16 v1, 0x80

    aput v1, v0, v3

    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/16 v1, 0xc0

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/16 v1, 0x400

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/16 v1, 0x600

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/16 v1, 0x900

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/16 v1, 0x3040

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/16 v1, 0x30a0

    const/4 v2, 0x6

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const v1, 0xff00

    const/4 v2, 0x7

    aput v1, v0, v2

    iput v3, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    iput v3, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    iput v3, p0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    return-void
.end method
