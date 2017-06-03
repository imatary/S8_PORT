.class public final Landroid/icu/impl/Punycode;
.super Ljava/lang/Object;
.source "Punycode.java"


# static fields
.field private static final BASE:I = 0x24

.field private static final CAPITAL_A:I = 0x41

.field private static final CAPITAL_Z:I = 0x5a

.field private static final DAMP:I = 0x2bc

.field private static final DELIMITER:C = '-'

.field private static final HYPHEN:C = '-'

.field private static final INITIAL_BIAS:I = 0x48

.field private static final INITIAL_N:I = 0x80

.field private static final SKEW:I = 0x26

.field private static final SMALL_A:I = 0x61

.field private static final SMALL_Z:I = 0x7a

.field private static final TMAX:I = 0x1a

.field private static final TMIN:I = 0x1

.field private static final ZERO:I = 0x30

.field static final basicToDigit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/Punycode;->basicToDigit:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adaptBias(IIZ)I
    .locals 3

    if-eqz p2, :cond_0

    div-int/lit16 p0, p0, 0x2bc

    :goto_0
    div-int v1, p0, p1

    add-int/2addr p0, v1

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1c7

    if-le p0, v1, :cond_1

    div-int/lit8 p0, p0, 0x23

    add-int/lit8 v0, v0, 0x24

    goto :goto_1

    :cond_0
    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, p0, 0x24

    add-int/lit8 v2, p0, 0x26

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method private static asciiCaseMap(CZ)C
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    goto :goto_0
.end method

.method public static decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v20

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move/from16 v16, v20

    :cond_0
    if-lez v16, :cond_1

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const/16 v24, 0x2d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    :cond_1
    move/from16 v10, v16

    move/from16 v5, v16

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v5, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/Punycode;->isBasic(I)Z

    move-result v23

    if-nez v23, :cond_2

    new-instance v23, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v24, "Illegal char found"

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    invoke-static {v4}, Landroid/icu/impl/Punycode;->isBasicUpperCase(I)Z

    move-result v23

    aput-boolean v23, p1, v16

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_4
    const/16 v18, 0x80

    const/4 v13, 0x0

    const/16 v6, 0x48

    const v12, 0x3b9aca00

    if-lez v5, :cond_5

    add-int/lit8 v14, v5, 0x1

    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_16

    move/from16 v19, v13

    const/16 v22, 0x1

    const/16 v17, 0x24

    move v15, v14

    :goto_2
    move/from16 v0, v20

    if-lt v15, v0, :cond_6

    new-instance v23, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v24, "Illegal char found"

    const/16 v25, 0x1

    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    :cond_6
    sget-object v23, Landroid/icu/impl/Punycode;->basicToDigit:[I

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    aget v11, v23, v24

    if-gez v11, :cond_7

    new-instance v23, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v24, "Invalid char found"

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_7
    const v23, 0x7fffffff

    sub-int v23, v23, v13

    div-int v23, v23, v22

    move/from16 v0, v23

    if-le v11, v0, :cond_8

    new-instance v23, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v24, "Illegal char found"

    const/16 v25, 0x1

    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_8
    mul-int v23, v11, v22

    add-int v13, v13, v23

    sub-int v21, v17, v6

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    const/16 v21, 0x1

    :cond_9
    :goto_3
    move/from16 v0, v21

    if-ge v11, v0, :cond_b

    add-int/lit8 v10, v10, 0x1

    sub-int v24, v13, v19

    if-nez v19, :cond_d

    const/16 v23, 0x1

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v10, v1}, Landroid/icu/impl/Punycode;->adaptBias(IIZ)I

    move-result v6

    div-int v23, v13, v10

    const v24, 0x7fffffff

    sub-int v24, v24, v18

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    new-instance v23, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v24, "Illegal char found"

    const/16 v25, 0x1

    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_a
    add-int/lit8 v23, v6, 0x1a

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    const/16 v21, 0x1a

    goto :goto_3

    :cond_b
    rsub-int/lit8 v23, v21, 0x24

    const v24, 0x7fffffff

    div-int v23, v24, v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    new-instance v23, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v24, "Illegal char found"

    const/16 v25, 0x1

    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_c
    rsub-int/lit8 v23, v21, 0x24

    mul-int v22, v22, v23

    add-int/lit8 v17, v17, 0x24

    move v15, v14

    goto/16 :goto_2

    :cond_d
    const/16 v23, 0x0

    goto :goto_4

    :cond_e
    div-int v23, v13, v10

    add-int v18, v18, v23

    rem-int/2addr v13, v10

    const v23, 0x10ffff

    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_f

    invoke-static/range {v18 .. v18}, Landroid/icu/impl/Punycode;->isSurrogate(I)Z

    move-result v23

    if-eqz v23, :cond_10

    :cond_f
    new-instance v23, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v24, "Illegal char found"

    const/16 v25, 0x1

    invoke-direct/range {v23 .. v25}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v23

    :cond_10
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    if-gt v13, v12, :cond_14

    move v7, v13

    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v8, v0, :cond_13

    move v12, v13

    :goto_5
    if-eqz p1, :cond_12

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    add-int v23, v23, v8

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_12

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_11

    add-int v23, v7, v8

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    sub-int v24, v24, v7

    move-object/from16 v0, p1

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    :cond_11
    add-int/lit8 v23, v14, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/icu/impl/Punycode;->isBasicUpperCase(I)Z

    move-result v23

    aput-boolean v23, p1, v7

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v8, v0, :cond_12

    add-int/lit8 v23, v7, 0x1

    const/16 v24, 0x0

    aput-boolean v24, p1, v23

    :cond_12
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_15

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v9, v7, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_14
    sub-int v23, v13, v12

    move/from16 v0, v23

    invoke-virtual {v9, v12, v0}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v7

    goto :goto_5

    :cond_15
    invoke-static/range {v18 .. v18}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v9, v7, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v7, 0x1

    invoke-static/range {v18 .. v18}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_16
    return-object v9
.end method

.method private static digitToBasic(IZ)C
    .locals 1

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 v0, p0, 0x41

    int-to-char v0, v0

    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x61

    int-to-char v0, v0

    return v0

    :cond_1
    add-int/lit8 v0, p0, 0x16

    int-to-char v0, v0

    return v0
.end method

.method public static encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [I

    new-instance v8, Ljava/lang/StringBuilder;

    move/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v15, 0x0

    const/4 v10, 0x0

    move/from16 v16, v15

    :goto_0
    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/Punycode;->isBasic(I)Z

    move-result v19

    if-eqz v19, :cond_1

    add-int/lit8 v15, v16, 0x1

    const/16 v19, 0x0

    aput v19, v6, v16

    if-eqz p1, :cond_0

    aget-boolean v19, p1, v10

    move/from16 v0, v19

    invoke-static {v4, v0}, Landroid/icu/impl/Punycode;->asciiCaseMap(CZ)C

    move-result v4

    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v15

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    aget-boolean v19, p1, v10

    if-eqz v19, :cond_2

    const/16 v19, 0x1

    :goto_2
    shl-int/lit8 v13, v19, 0x1f

    invoke-static {v4}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v19

    if-nez v19, :cond_3

    or-int/2addr v13, v4

    :goto_3
    add-int/lit8 v15, v16, 0x1

    aput v13, v6, v16

    goto :goto_1

    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    :cond_3
    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v19

    if-eqz v19, :cond_4

    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    add-int/lit8 v19, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v19

    if-eqz v19, :cond_4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v4, v5}, Landroid/icu/lang/UCharacter;->getCodePoint(CC)I

    move-result v19

    or-int v13, v13, v19

    goto :goto_3

    :cond_4
    new-instance v19, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v20, "Illegal char found"

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v19

    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    const/16 v19, 0x2d

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v13, 0x80

    const/4 v7, 0x0

    const/16 v3, 0x48

    move v9, v2

    :goto_4
    move/from16 v0, v16

    if-ge v9, v0, :cond_12

    const v12, 0x7fffffff

    const/4 v10, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v10, v0, :cond_8

    aget v19, v6, v10

    const v20, 0x7fffffff

    and-int v14, v19, v20

    if-gt v13, v14, :cond_7

    if-ge v14, v12, :cond_7

    move v12, v14

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    sub-int v19, v12, v13

    const v20, 0x7fffffff

    sub-int v20, v20, v7

    add-int/lit8 v21, v9, 0x1

    div-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    new-instance v19, Ljava/lang/IllegalStateException;

    const-string/jumbo v20, "Internal program error"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_9
    sub-int v19, v12, v13

    add-int/lit8 v20, v9, 0x1

    mul-int v19, v19, v20

    add-int v7, v7, v19

    move v13, v12

    const/4 v10, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v10, v0, :cond_11

    aget v19, v6, v10

    const v20, 0x7fffffff

    and-int v14, v19, v20

    if-ge v14, v13, :cond_b

    add-int/lit8 v7, v7, 0x1

    :cond_a
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    if-ne v14, v13, :cond_a

    move v14, v7

    const/16 v11, 0x24

    :goto_8
    sub-int v18, v11, v3

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    const/16 v18, 0x1

    :cond_c
    :goto_9
    move/from16 v0, v18

    if-ge v14, v0, :cond_e

    aget v19, v6, v10

    if-gez v19, :cond_f

    const/16 v19, 0x1

    :goto_a
    move/from16 v0, v19

    invoke-static {v14, v0}, Landroid/icu/impl/Punycode;->digitToBasic(IZ)C

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v20, v9, 0x1

    if-ne v9, v2, :cond_10

    const/16 v19, 0x1

    :goto_b
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v7, v0, v1}, Landroid/icu/impl/Punycode;->adaptBias(IIZ)I

    move-result v3

    const/4 v7, 0x0

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v19, v3, 0x1a

    move/from16 v0, v19

    if-lt v11, v0, :cond_c

    const/16 v18, 0x1a

    goto :goto_9

    :cond_e
    sub-int v19, v14, v18

    rsub-int/lit8 v20, v18, 0x24

    rem-int v19, v19, v20

    add-int v19, v19, v18

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/icu/impl/Punycode;->digitToBasic(IZ)C

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v19, v14, v18

    rsub-int/lit8 v20, v18, 0x24

    div-int v14, v19, v20

    add-int/lit8 v11, v11, 0x24

    goto :goto_8

    :cond_f
    const/16 v19, 0x0

    goto :goto_a

    :cond_10
    const/16 v19, 0x0

    goto :goto_b

    :cond_11
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :cond_12
    return-object v8
.end method

.method private static isBasic(I)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBasicUpperCase(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x41

    if-gt v1, p0, :cond_0

    const/16 v1, 0x5a

    if-lt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSurrogate(I)Z
    .locals 2

    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
