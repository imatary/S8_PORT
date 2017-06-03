.class Ljava/math/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final bigRadices:[I

.field static final digitFitInInt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/math/Conversion;->digitFitInInt:[I

    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/math/Conversion;->bigRadices:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x1f
        0x13
        0xf
        0xd
        0xb
        0xb
        0xa
        0x9
        0x9
        0x8
        0x8
        0x8
        0x8
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x5
    .end array-data

    :array_1
    .array-data 4
        -0x80000000
        0x4546b3db
        0x40000000    # 2.0f
        0x48c27395
        0x159fd800
        0x75db9c97
        0x40000000    # 2.0f
        0x17179149
        0x3b9aca00
        0xcc6db61
        0x19a10000
        0x309f1021
        0x57f6c100
        0xa2f1b6f
        0x10000000
        0x18754571
        0x247dbc80
        0x3547667b
        0x4c4b4000
        0x6b5a6e1d
        0x6c20a40
        0x8d2d931
        0xb640000
        0xe8d4a51
        0x1269ae40
        0x17179149
        0x1cb91000
        0x23744899
        0x2b73a840
        0x34e63b41
        0x40000000    # 2.0f
        0x4cfa3cc1    # 1.31196424E8f
        0x5c13d840
        0x6d91b519
        0x39aa400
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigInteger2Double(Ljava/math/BigInteger;)D
    .locals 18

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    const/4 v15, 0x2

    if-lt v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/math/BigInteger;->digits:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    if-lez v14, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    return-wide v14

    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    const/16 v15, 0x20

    if-le v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->sign:I

    if-lez v14, :cond_2

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide v14

    :cond_2
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    int-to-long v4, v14

    add-int/lit8 v3, v2, -0x36

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    const-wide v14, 0x1fffffffffffffL

    and-long v8, v6, v14

    const-wide/16 v14, 0x3ff

    cmp-long v14, v4, v14

    if-nez v14, :cond_7

    const-wide v14, 0x1fffffffffffffL

    cmp-long v14, v8, v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->sign:I

    if-lez v14, :cond_4

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1
    return-wide v14

    :cond_4
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1

    :cond_5
    const-wide v14, 0x1ffffffffffffeL

    cmp-long v14, v8, v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->sign:I

    if-lez v14, :cond_6

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_2
    return-wide v14

    :cond_6
    const-wide v14, -0x10000000000001L

    goto :goto_2

    :cond_7
    const-wide/16 v14, 0x1

    and-long/2addr v14, v8

    const-wide/16 v16, 0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_9

    const-wide/16 v14, 0x2

    and-long/2addr v14, v8

    const-wide/16 v16, 0x2

    cmp-long v14, v14, v16

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v3, v14}, Ljava/math/BitLevel;->nonZeroDroppedBits(I[I)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_8
    const-wide/16 v14, 0x2

    add-long/2addr v8, v14

    :cond_9
    const/4 v14, 0x1

    shr-long/2addr v8, v14

    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->sign:I

    if-gez v14, :cond_a

    const-wide/high16 v10, -0x8000000000000000L

    :goto_3
    const-wide/16 v14, 0x3ff

    add-long/2addr v14, v4

    const/16 v16, 0x34

    shl-long v14, v14, v16

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v4, v14, v16

    or-long v14, v10, v4

    or-long v12, v14, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    return-wide v14

    :cond_a
    const-wide/16 v10, 0x0

    goto :goto_3
.end method

.method static bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 28

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigInteger;->sign:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/math/BigInteger;->digits:[I

    if-nez v19, :cond_0

    const-string/jumbo v24, "0"

    return-object v24

    :cond_0
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_2

    add-int/lit8 v24, v14, -0x1

    aget v11, v10, v24

    int-to-long v0, v11

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v22, v24, v26

    if-gez v19, :cond_1

    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    :cond_1
    move-wide/from16 v0, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v24

    return-object v24

    :cond_2
    const/16 v24, 0xa

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    const/16 v24, 0x2

    move/from16 v0, p1

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v24

    return-object v24

    :cond_4
    const/16 v24, 0x24

    move/from16 v0, p1

    move/from16 v1, v24

    if-gt v0, v1, :cond_3

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->log(D)D

    move-result-wide v24

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->log(D)D

    move-result-wide v26

    div-double v6, v24, v26

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->bitLength()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v26, v24, v6

    if-gez v19, :cond_8

    const/16 v24, 0x1

    :goto_0
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int/lit8 v17, v24, 0x1

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v18, v0

    move/from16 v8, v17

    const/16 v24, 0x10

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    new-array v0, v14, [I

    move-object/from16 v20, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-static {v10, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy([II[III)V

    move/from16 v21, v14

    sget-object v24, Ljava/math/Conversion;->digitFitInInt:[I

    aget v5, v24, p1

    sget-object v24, Ljava/math/Conversion;->bigRadices:[I

    add-int/lit8 v25, p1, -0x2

    aget v4, v24, v25

    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Ljava/math/Division;->divideArrayByInt([I[III)I

    move-result v16

    move v15, v8

    :cond_6
    add-int/lit8 v8, v8, -0x1

    rem-int v24, v16, p1

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v24

    aput-char v24, v18, v8

    div-int v16, v16, p1

    if-eqz v16, :cond_7

    if-nez v8, :cond_6

    :cond_7
    sub-int v24, v5, v15

    add-int v9, v24, v8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v9, :cond_9

    if-lez v8, :cond_9

    add-int/lit8 v8, v8, -0x1

    const/16 v24, 0x30

    aput-char v24, v18, v8

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_8
    const/16 v24, 0x0

    goto :goto_0

    :cond_9
    add-int/lit8 v12, v21, -0x1

    :goto_2
    if-lez v12, :cond_a

    aget v24, v20, v12

    if-nez v24, :cond_a

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_a
    add-int/lit8 v21, v12, 0x1

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v24, 0x0

    aget v24, v20, v24

    if-nez v24, :cond_5

    :cond_b
    :goto_3
    aget-char v24, v18, v8

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_c
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v14, :cond_b

    const/4 v13, 0x0

    :goto_5
    const/16 v24, 0x8

    move/from16 v0, v24

    if-ge v13, v0, :cond_d

    if-lez v8, :cond_d

    aget v24, v10, v12

    shl-int/lit8 v25, v13, 0x2

    shr-int v24, v24, v25

    and-int/lit8 v16, v24, 0xf

    add-int/lit8 v8, v8, -0x1

    const/16 v24, 0x10

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v24

    aput-char v24, v18, v8

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_e
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    add-int/lit8 v8, v8, -0x1

    const/16 v24, 0x2d

    aput-char v24, v18, v8

    :cond_f
    new-instance v24, Ljava/lang/String;

    sub-int v25, v17, v8

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v8, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v24
.end method

.method static divideLongByBillion(J)J
    .locals 14

    const-wide/32 v12, 0x3b9aca00

    const-wide/32 v10, 0x1dcd6500

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-ltz v6, :cond_0

    div-long v2, p0, v12

    rem-long v4, p0, v12

    :goto_0
    const/16 v6, 0x20

    shl-long v6, v4, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v2

    or-long/2addr v6, v8

    return-wide v6

    :cond_0
    ushr-long v0, p0, v8

    div-long v2, v0, v10

    rem-long v4, v0, v10

    shl-long v6, v4, v8

    const-wide/16 v8, 0x1

    and-long/2addr v8, p0

    add-long v4, v6, v8

    goto :goto_0
.end method

.method static toDecimalScaledString(JI)Ljava/lang/String;
    .locals 22

    const-wide/16 v16, 0x0

    cmp-long v13, p0, v16

    if-gez v13, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-eqz v7, :cond_0

    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    :cond_0
    const-wide/16 v16, 0x0

    cmp-long v13, p0, v16

    if-nez v13, :cond_4

    packed-switch p2, :pswitch_data_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p2, :cond_2

    const-string/jumbo v13, "0E+"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/high16 v13, -0x80000000

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    const-string/jumbo v13, "2147483648"

    :goto_2
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v13, "0"

    return-object v13

    :pswitch_1
    const-string/jumbo v13, "0.0"

    return-object v13

    :pswitch_2
    const-string/jumbo v13, "0.00"

    return-object v13

    :pswitch_3
    const-string/jumbo v13, "0.000"

    return-object v13

    :pswitch_4
    const-string/jumbo v13, "0.0000"

    return-object v13

    :pswitch_5
    const-string/jumbo v13, "0.00000"

    return-object v13

    :pswitch_6
    const-string/jumbo v13, "0.000000"

    return-object v13

    :cond_2
    const-string/jumbo v13, "0E"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move/from16 v0, p2

    neg-int v13, v0

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_4
    const/16 v13, 0x13

    new-array v10, v13, [C

    const/16 v2, 0x12

    move-wide/from16 v14, p0

    :cond_5
    move-wide v8, v14

    const-wide/16 v16, 0xa

    div-long v14, v14, v16

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v16, 0xa

    mul-long v16, v16, v14

    sub-long v16, v8, v16

    const-wide/16 v18, 0x30

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v13, v0

    int-to-char v13, v13

    aput-char v13, v10, v2

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_5

    int-to-long v0, v2

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x12

    sub-long v16, v18, v16

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    const-wide/16 v18, 0x1

    sub-long v4, v16, v18

    if-nez p2, :cond_7

    if-eqz v7, :cond_6

    add-int/lit8 v2, v2, -0x1

    const/16 v13, 0x2d

    aput-char v13, v10, v2

    :cond_6
    new-instance v13, Ljava/lang/String;

    rsub-int/lit8 v16, v2, 0x12

    move/from16 v0, v16

    invoke-direct {v13, v10, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v13

    :cond_7
    if-lez p2, :cond_d

    const-wide/16 v16, -0x6

    cmp-long v13, v4, v16

    if-ltz v13, :cond_d

    const-wide/16 v16, 0x0

    cmp-long v13, v4, v16

    if-ltz v13, :cond_a

    long-to-int v13, v4

    add-int v3, v2, v13

    const/16 v6, 0x11

    :goto_3
    if-lt v6, v3, :cond_8

    add-int/lit8 v13, v6, 0x1

    aget-char v16, v10, v6

    aput-char v16, v10, v13

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    const/16 v13, 0x2e

    aput-char v13, v10, v3

    if-eqz v7, :cond_9

    add-int/lit8 v2, v2, -0x1

    const/16 v13, 0x2d

    aput-char v13, v10, v2

    :cond_9
    new-instance v13, Ljava/lang/String;

    rsub-int/lit8 v16, v2, 0x12

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-direct {v13, v10, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v13

    :cond_a
    const/4 v6, 0x2

    :goto_4
    int-to-long v0, v6

    move-wide/from16 v16, v0

    neg-long v0, v4

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    cmp-long v13, v16, v18

    if-gez v13, :cond_b

    add-int/lit8 v2, v2, -0x1

    const/16 v13, 0x30

    aput-char v13, v10, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, -0x1

    const/16 v13, 0x2e

    aput-char v13, v10, v2

    add-int/lit8 v2, v2, -0x1

    const/16 v13, 0x30

    aput-char v13, v10, v2

    if-eqz v7, :cond_c

    add-int/lit8 v2, v2, -0x1

    const/16 v13, 0x2d

    aput-char v13, v10, v2

    :cond_c
    new-instance v13, Ljava/lang/String;

    rsub-int/lit8 v16, v2, 0x12

    move/from16 v0, v16

    invoke-direct {v13, v10, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v13

    :cond_d
    add-int/lit8 v12, v2, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    rsub-int/lit8 v13, v12, 0x22

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v7, :cond_e

    const/16 v13, 0x2d

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    rsub-int/lit8 v13, v12, 0x12

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v13, v0, :cond_10

    aget-char v13, v10, v2

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v13, 0x2e

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v2, 0x1

    rsub-int/lit8 v16, v2, 0x12

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v10, v13, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_5
    const/16 v13, 0x45

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x0

    cmp-long v13, v4, v16

    if-lez v13, :cond_f

    const/16 v13, 0x2b

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    :cond_10
    rsub-int/lit8 v13, v2, 0x12

    invoke-virtual {v11, v10, v2, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static toDecimalScaledString(Ljava/math/BigInteger;I)Ljava/lang/String;
    .locals 44

    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigInteger;->sign:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v15, v0, Ljava/math/BigInteger;->numberLength:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/math/BigInteger;->digits:[I

    if-nez v28, :cond_1

    packed-switch p1, :pswitch_data_0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p1, :cond_0

    const-string/jumbo v35, "0E+"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    return-object v35

    :pswitch_0
    const-string/jumbo v35, "0"

    return-object v35

    :pswitch_1
    const-string/jumbo v35, "0.0"

    return-object v35

    :pswitch_2
    const-string/jumbo v35, "0.00"

    return-object v35

    :pswitch_3
    const-string/jumbo v35, "0.000"

    return-object v35

    :pswitch_4
    const-string/jumbo v35, "0.0000"

    return-object v35

    :pswitch_5
    const-string/jumbo v35, "0.00000"

    return-object v35

    :pswitch_6
    const-string/jumbo v35, "0.000000"

    return-object v35

    :cond_0
    const-string/jumbo v35, "0E"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    mul-int/lit8 v35, v15, 0xa

    add-int/lit8 v35, v35, 0x1

    add-int/lit8 v23, v35, 0x7

    add-int/lit8 v35, v23, 0x1

    move/from16 v0, v35

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move/from16 v4, v23

    const/16 v35, 0x1

    move/from16 v0, v35

    if-ne v15, v0, :cond_6

    const/16 v35, 0x0

    aget v9, v6, v35

    if-gez v9, :cond_5

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v36, v38, v40

    :cond_2
    move-wide/from16 v18, v36

    const-wide/16 v38, 0xa

    div-long v36, v36, v38

    add-int/lit8 v4, v4, -0x1

    const-wide/16 v38, 0xa

    mul-long v38, v38, v36

    sub-long v38, v18, v38

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x30

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    aput-char v35, v24, v4

    const-wide/16 v38, 0x0

    cmp-long v35, v36, v38

    if-nez v35, :cond_2

    :cond_3
    if-gez v28, :cond_d

    const/4 v14, 0x1

    :goto_1
    sub-int v35, v23, v4

    sub-int v35, v35, p1

    add-int/lit8 v8, v35, -0x1

    if-nez p1, :cond_e

    if-eqz v14, :cond_4

    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x2d

    aput-char v35, v24, v4

    :cond_4
    new-instance v35, Ljava/lang/String;

    sub-int v38, v23, v4

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    move/from16 v2, v38

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v35

    :cond_5
    move/from16 v34, v9

    :goto_2
    move/from16 v16, v34

    div-int/lit8 v34, v34, 0xa

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v35, v34, 0xa

    sub-int v35, v16, v35

    add-int/lit8 v35, v35, 0x30

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    aput-char v35, v24, v4

    if-eqz v34, :cond_3

    goto :goto_2

    :cond_6
    new-array v0, v15, [I

    move-object/from16 v30, v0

    move/from16 v31, v15

    const/16 v35, 0x0

    const/16 v38, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v30

    move/from16 v2, v38

    invoke-static {v6, v0, v1, v2, v15}, Ljava/lang/System;->arraycopy([II[III)V

    :goto_3
    const-wide/16 v26, 0x0

    add-int/lit8 v11, v31, -0x1

    :goto_4
    if-ltz v11, :cond_7

    const/16 v35, 0x20

    shl-long v38, v26, v35

    aget v35, v30, v11

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0xffffffffL

    and-long v40, v40, v42

    add-long v32, v38, v40

    invoke-static/range {v32 .. v33}, Ljava/math/Conversion;->divideLongByBillion(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v35, v0

    aput v35, v30, v11

    const/16 v35, 0x20

    shr-long v38, v20, v35

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_7
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v17, v4

    :cond_8
    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v35, v22, 0xa

    add-int/lit8 v35, v35, 0x30

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v35, v0

    aput-char v35, v24, v4

    div-int/lit8 v22, v22, 0xa

    if-eqz v22, :cond_9

    if-nez v4, :cond_8

    :cond_9
    rsub-int/lit8 v35, v17, 0x9

    add-int v5, v35, v4

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v5, :cond_a

    if-lez v4, :cond_a

    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x30

    aput-char v35, v24, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v13, v31, -0x1

    :goto_6
    aget v35, v30, v13

    if-nez v35, :cond_c

    if-nez v13, :cond_b

    :goto_7
    aget-char v35, v24, v4

    const/16 v38, 0x30

    move/from16 v0, v35

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v31, v13, 0x1

    goto :goto_3

    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_e
    if-lez p1, :cond_14

    const/16 v35, -0x6

    move/from16 v0, v35

    if-lt v8, v0, :cond_14

    if-ltz v8, :cond_11

    add-int v12, v4, v8

    add-int/lit8 v13, v23, -0x1

    :goto_8
    if-lt v13, v12, :cond_f

    add-int/lit8 v35, v13, 0x1

    aget-char v38, v24, v13

    aput-char v38, v24, v35

    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v12, v12, 0x1

    const/16 v35, 0x2e

    aput-char v35, v24, v12

    if-eqz v14, :cond_10

    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x2d

    aput-char v35, v24, v4

    :cond_10
    new-instance v35, Ljava/lang/String;

    sub-int v38, v23, v4

    add-int/lit8 v38, v38, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    move/from16 v2, v38

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v35

    :cond_11
    const/4 v13, 0x2

    :goto_9
    neg-int v0, v8

    move/from16 v35, v0

    add-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    if-ge v13, v0, :cond_12

    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x30

    aput-char v35, v24, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_12
    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x2e

    aput-char v35, v24, v4

    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x30

    aput-char v35, v24, v4

    if-eqz v14, :cond_13

    add-int/lit8 v4, v4, -0x1

    const/16 v35, 0x2d

    aput-char v35, v24, v4

    :cond_13
    new-instance v35, Ljava/lang/String;

    sub-int v38, v23, v4

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    move/from16 v2, v38

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v35

    :cond_14
    add-int/lit8 v29, v4, 0x1

    move/from16 v7, v23

    new-instance v25, Ljava/lang/StringBuilder;

    add-int/lit8 v35, v23, 0x10

    sub-int v35, v35, v29

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v14, :cond_15

    const/16 v35, 0x2d

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    sub-int v35, v23, v29

    const/16 v38, 0x1

    move/from16 v0, v35

    move/from16 v1, v38

    if-lt v0, v1, :cond_17

    aget-char v35, v24, v4

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v35, 0x2e

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v35, v4, 0x1

    sub-int v38, v23, v4

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v35

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_a
    const/16 v35, 0x45

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v8, :cond_16

    const/16 v35, 0x2b

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    return-object v35

    :cond_17
    sub-int v35, v23, v4

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v35

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
