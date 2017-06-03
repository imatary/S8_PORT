.class public final Landroid/icu/impl/coll/CollationFastLatin;
.super Ljava/lang/Object;
.source "CollationFastLatin.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final BAIL_OUT:I = 0x1

.field public static final BAIL_OUT_RESULT:I = -0x2

.field static final CASE_AND_TERTIARY_MASK:I = 0x1f

.field static final CASE_MASK:I = 0x18

.field static final COMMON_SEC:I = 0xa0

.field static final COMMON_SEC_PLUS_OFFSET:I = 0xc0

.field static final COMMON_TER:I = 0x0

.field static final COMMON_TER_PLUS_OFFSET:I = 0x20

.field static final CONTRACTION:I = 0x400

.field static final CONTR_CHAR_MASK:I = 0x1ff

.field static final CONTR_LENGTH_SHIFT:I = 0x9

.field static final EOS:I = 0x2

.field static final EXPANSION:I = 0x800

.field static final INDEX_MASK:I = 0x3ff

.field public static final LATIN_LIMIT:I = 0x180

.field public static final LATIN_MAX:I = 0x17f

.field static final LATIN_MAX_UTF8_LEAD:I = 0xc5

.field static final LONG_INC:I = 0x8

.field static final LONG_PRIMARY_MASK:I = 0xfff8

.field static final LOWER_CASE:I = 0x8

.field static final MAX_LONG:I = 0xff8

.field static final MAX_SEC_AFTER:I = 0x160

.field static final MAX_SEC_BEFORE:I = 0x80

.field static final MAX_SEC_HIGH:I = 0x3e0

.field static final MAX_SHORT:I = 0xfc00

.field static final MAX_TER_AFTER:I = 0x7

.field static final MERGE_WEIGHT:I = 0x3

.field static final MIN_LONG:I = 0xc00

.field static final MIN_SEC_AFTER:I = 0xc0

.field static final MIN_SEC_BEFORE:I = 0x0

.field static final MIN_SEC_HIGH:I = 0x180

.field static final MIN_SHORT:I = 0x1000

.field static final NUM_FAST_CHARS:I = 0x1c0

.field static final PUNCT_LIMIT:I = 0x2040

.field static final PUNCT_START:I = 0x2000

.field static final SECONDARY_MASK:I = 0x3e0

.field static final SEC_INC:I = 0x20

.field static final SEC_OFFSET:I = 0x20

.field static final SHORT_INC:I = 0x400

.field static final SHORT_PRIMARY_MASK:I = 0xfc00

.field static final TERTIARY_MASK:I = 0x7

.field static final TER_OFFSET:I = 0x20

.field static final TWO_CASES_MASK:I = 0x180018

.field static final TWO_COMMON_SEC_PLUS_OFFSET:I = 0xc000c0

.field static final TWO_COMMON_TER_PLUS_OFFSET:I = 0x200020

.field static final TWO_LONG_PRIMARIES_MASK:I = -0x70008

.field static final TWO_LOWER_CASES:I = 0x80008

.field static final TWO_SECONDARIES_MASK:I = 0x3e003e0

.field static final TWO_SEC_OFFSETS:I = 0x200020

.field static final TWO_SHORT_PRIMARIES_MASK:I = -0x3ff0400

.field static final TWO_TERTIARIES_MASK:I = 0x70007

.field static final TWO_TER_OFFSETS:I = 0x200020

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationFastLatin;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 28

    shr-int/lit8 v24, p2, 0x10

    const v26, 0xffff

    and-int p2, p2, v26

    move/from16 v6, p5

    move/from16 v16, p5

    const/4 v8, 0x0

    const/16 v18, 0x0

    move v7, v6

    :goto_0
    if-nez v8, :cond_61

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v26

    if-ne v7, v0, :cond_5

    const/4 v8, 0x2

    move/from16 v17, v16

    move v6, v7

    :goto_1
    if-nez v18, :cond_60

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    const/16 v18, 0x2

    move/from16 v16, v17

    :cond_0
    :goto_2
    move/from16 v0, v18

    if-ne v8, v0, :cond_17

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v8, v0, :cond_16

    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2

    move/from16 v16, p5

    move/from16 v6, p5

    const/16 v18, 0x0

    const/4 v8, 0x0

    move v7, v6

    :goto_3
    if-nez v8, :cond_5f

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v26

    if-ne v7, v0, :cond_1a

    const/4 v8, 0x2

    move/from16 v17, v16

    move v6, v7

    :goto_4
    if-nez v18, :cond_5e

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_20

    const/16 v18, 0x2

    move/from16 v16, v17

    :goto_5
    move/from16 v0, v18

    if-ne v8, v0, :cond_27

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v8, v0, :cond_26

    :cond_2
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    if-eqz v26, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v26

    if-nez v26, :cond_2b

    const/16 v23, 0x1

    :goto_6
    move/from16 v16, p5

    move/from16 v6, p5

    const/16 v18, 0x0

    const/4 v8, 0x0

    move v7, v6

    :goto_7
    if-nez v8, :cond_33

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v26

    if-ne v7, v0, :cond_2c

    const/4 v8, 0x2

    move/from16 v17, v16

    :goto_8
    if-nez v18, :cond_3

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_30

    const/16 v18, 0x2

    :cond_3
    move/from16 v0, v18

    if-ne v8, v0, :cond_36

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v8, v0, :cond_35

    move/from16 v16, v17

    move v6, v7

    :cond_4
    :goto_9
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_3c

    const/16 v26, 0x0

    return v26

    :cond_5
    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_8

    aget-char v8, p1, v4

    if-eqz v8, :cond_6

    move/from16 v17, v16

    goto/16 :goto_1

    :cond_6
    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v4, v0, :cond_7

    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v4, v0, :cond_7

    and-int/lit8 v26, p2, 0x2

    if-eqz v26, :cond_7

    const/16 v26, -0x2

    return v26

    :cond_7
    aget-char v8, p0, v4

    :goto_a
    const/16 v26, 0x1000

    move/from16 v0, v26

    if-lt v8, v0, :cond_a

    const v26, 0xfc00

    and-int v8, v8, v26

    move/from16 v17, v16

    goto/16 :goto_1

    :cond_8
    const/16 v26, 0x2000

    move/from16 v0, v26

    if-gt v0, v4, :cond_9

    const/16 v26, 0x2040

    move/from16 v0, v26

    if-ge v4, v0, :cond_9

    add-int/lit16 v0, v4, -0x2000

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x180

    move/from16 v26, v0

    aget-char v8, p0, v26

    goto :goto_a

    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v8

    goto :goto_a

    :cond_a
    move/from16 v0, v24

    if-le v8, v0, :cond_b

    const v26, 0xfff8

    and-int v8, v8, v26

    move/from16 v17, v16

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_c

    add-int/lit8 v6, v6, 0x1

    not-long v14, v14

    :cond_c
    long-to-int v8, v14

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_d

    const/16 v26, -0x2

    return v26

    :cond_d
    move/from16 v0, v24

    invoke-static {v0, v8}, Landroid/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    move-result v8

    :goto_b
    move v7, v6

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v16, v17, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_10

    aget-char v18, p1, v4

    if-nez v18, :cond_0

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v4, v0, :cond_f

    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v4, v0, :cond_f

    and-int/lit8 v26, p2, 0x2

    if-eqz v26, :cond_f

    const/16 v26, -0x2

    return v26

    :cond_f
    aget-char v18, p0, v4

    :goto_c
    const/16 v26, 0x1000

    move/from16 v0, v18

    move/from16 v1, v26

    if-lt v0, v1, :cond_12

    const v26, 0xfc00

    and-int v18, v18, v26

    goto/16 :goto_2

    :cond_10
    const/16 v26, 0x2000

    move/from16 v0, v26

    if-gt v0, v4, :cond_11

    const/16 v26, 0x2040

    move/from16 v0, v26

    if-ge v4, v0, :cond_11

    add-int/lit16 v0, v4, -0x2000

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x180

    move/from16 v26, v0

    aget-char v18, p0, v26

    goto :goto_c

    :cond_11
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v18

    goto :goto_c

    :cond_12
    move/from16 v0, v18

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    const v26, 0xfff8

    and-int v18, v18, v26

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p4

    move/from16 v3, v16

    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_14

    add-int/lit8 v16, v16, 0x1

    not-long v14, v14

    :cond_14
    long-to-int v0, v14

    move/from16 v18, v0

    const/16 v26, 0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    const/16 v26, -0x2

    return v26

    :cond_15
    move/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    move-result v18

    move/from16 v17, v16

    goto/16 :goto_1

    :cond_16
    const/16 v18, 0x0

    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_17
    const v26, 0xffff

    and-int v9, v8, v26

    const v26, 0xffff

    and-int v19, v18, v26

    move/from16 v0, v19

    if-eq v9, v0, :cond_19

    move/from16 v0, v19

    if-ge v9, v0, :cond_18

    const/16 v26, -0x1

    :goto_d
    return v26

    :cond_18
    const/16 v26, 0x1

    goto :goto_d

    :cond_19
    const/16 v26, 0x2

    move/from16 v0, v26

    if-eq v8, v0, :cond_1

    ushr-int/lit8 v8, v8, 0x10

    ushr-int/lit8 v18, v18, 0x10

    goto/16 :goto_b

    :cond_1a
    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_1b

    aget-char v8, p0, v4

    :goto_e
    const/16 v26, 0x1000

    move/from16 v0, v26

    if-lt v8, v0, :cond_1d

    invoke-static {v8}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result v8

    move/from16 v17, v16

    goto/16 :goto_4

    :cond_1b
    const/16 v26, 0x2000

    move/from16 v0, v26

    if-gt v0, v4, :cond_1c

    const/16 v26, 0x2040

    move/from16 v0, v26

    if-ge v4, v0, :cond_1c

    add-int/lit16 v0, v4, -0x2000

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x180

    move/from16 v26, v0

    aget-char v8, p0, v26

    goto :goto_e

    :cond_1c
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v8

    goto :goto_e

    :cond_1d
    move/from16 v0, v24

    if-le v8, v0, :cond_1e

    const/16 v8, 0xc0

    move/from16 v17, v16

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_1f

    add-int/lit8 v6, v6, 0x1

    not-long v14, v14

    :cond_1f
    long-to-int v0, v14

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    move-result v8

    :goto_f
    move v7, v6

    goto/16 :goto_3

    :cond_20
    add-int/lit8 v16, v17, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_21

    aget-char v18, p0, v4

    :goto_10
    const/16 v26, 0x1000

    move/from16 v0, v18

    move/from16 v1, v26

    if-lt v0, v1, :cond_23

    invoke-static/range {v18 .. v18}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result v18

    goto/16 :goto_5

    :cond_21
    const/16 v26, 0x2000

    move/from16 v0, v26

    if-gt v0, v4, :cond_22

    const/16 v26, 0x2040

    move/from16 v0, v26

    if-ge v4, v0, :cond_22

    add-int/lit16 v0, v4, -0x2000

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x180

    move/from16 v26, v0

    aget-char v18, p0, v26

    goto :goto_10

    :cond_22
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v18

    goto :goto_10

    :cond_23
    move/from16 v0, v18

    move/from16 v1, v24

    if-le v0, v1, :cond_24

    const/16 v18, 0xc0

    goto/16 :goto_5

    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p4

    move/from16 v3, v16

    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_25

    add-int/lit8 v16, v16, 0x1

    not-long v14, v14

    :cond_25
    long-to-int v0, v14

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    move-result v18

    move/from16 v17, v16

    goto/16 :goto_4

    :cond_26
    const/16 v18, 0x0

    const/4 v8, 0x0

    goto :goto_f

    :cond_27
    const v26, 0xffff

    and-int v11, v8, v26

    const v26, 0xffff

    and-int v21, v18, v26

    move/from16 v0, v21

    if-eq v11, v0, :cond_2a

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x800

    move/from16 v26, v0

    if-eqz v26, :cond_28

    const/16 v26, -0x2

    return v26

    :cond_28
    move/from16 v0, v21

    if-ge v11, v0, :cond_29

    const/16 v26, -0x1

    :goto_11
    return v26

    :cond_29
    const/16 v26, 0x1

    goto :goto_11

    :cond_2a
    const/16 v26, 0x2

    move/from16 v0, v26

    if-eq v8, v0, :cond_2

    ushr-int/lit8 v8, v8, 0x10

    ushr-int/lit8 v18, v18, 0x10

    goto/16 :goto_f

    :cond_2b
    const/16 v23, 0x0

    goto/16 :goto_6

    :cond_2c
    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_2f

    aget-char v8, p0, v4

    :goto_12
    const/16 v26, 0xc00

    move/from16 v0, v26

    if-ge v8, v0, :cond_2e

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_2d

    add-int/lit8 v6, v6, 0x1

    not-long v14, v14

    :cond_2d
    long-to-int v8, v14

    :cond_2e
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    move-result v8

    move v7, v6

    goto/16 :goto_7

    :cond_2f
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v8

    goto :goto_12

    :cond_30
    add-int/lit8 v16, v17, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_34

    aget-char v18, p0, v4

    :goto_13
    const/16 v26, 0xc00

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_32

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p4

    move/from16 v3, v16

    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_31

    add-int/lit8 v16, v16, 0x1

    not-long v14, v14

    :cond_31
    long-to-int v0, v14

    move/from16 v18, v0

    :cond_32
    move/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    move-result v18

    :cond_33
    move/from16 v17, v16

    goto/16 :goto_8

    :cond_34
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v18

    goto :goto_13

    :cond_35
    const/16 v18, 0x0

    const/4 v8, 0x0

    :goto_14
    move/from16 v16, v17

    goto/16 :goto_7

    :cond_36
    const v26, 0xffff

    and-int v5, v8, v26

    const v26, 0xffff

    and-int v13, v18, v26

    if-eq v5, v13, :cond_3a

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v26, v0

    if-nez v26, :cond_38

    if-ge v5, v13, :cond_37

    const/16 v26, -0x1

    :goto_15
    return v26

    :cond_37
    const/16 v26, 0x1

    goto :goto_15

    :cond_38
    if-ge v5, v13, :cond_39

    const/16 v26, 0x1

    :goto_16
    return v26

    :cond_39
    const/16 v26, -0x1

    goto :goto_16

    :cond_3a
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v8, v0, :cond_3b

    move/from16 v16, v17

    move v6, v7

    goto/16 :goto_9

    :cond_3b
    ushr-int/lit8 v8, v8, 0x10

    ushr-int/lit8 v18, v18, 0x10

    goto :goto_14

    :cond_3c
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    move-result v25

    move/from16 v16, p5

    move/from16 v6, p5

    const/16 v18, 0x0

    const/4 v8, 0x0

    move v7, v6

    :goto_17
    if-nez v8, :cond_46

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v26

    if-ne v7, v0, :cond_3f

    const/4 v8, 0x2

    move/from16 v17, v16

    :goto_18
    if-nez v18, :cond_3d

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_43

    const/16 v18, 0x2

    :cond_3d
    move/from16 v0, v18

    if-ne v8, v0, :cond_49

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v8, v0, :cond_48

    :cond_3e
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_4e

    const/16 v26, 0x0

    return v26

    :cond_3f
    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_42

    aget-char v8, p0, v4

    :goto_19
    const/16 v26, 0xc00

    move/from16 v0, v26

    if-ge v8, v0, :cond_41

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_40

    add-int/lit8 v6, v6, 0x1

    not-long v14, v14

    :cond_40
    long-to-int v8, v14

    :cond_41
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    move-result v8

    move v7, v6

    goto :goto_17

    :cond_42
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v8

    goto :goto_19

    :cond_43
    add-int/lit8 v16, v17, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_47

    aget-char v18, p0, v4

    :goto_1a
    const/16 v26, 0xc00

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_45

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p4

    move/from16 v3, v16

    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_44

    add-int/lit8 v16, v16, 0x1

    not-long v14, v14

    :cond_44
    long-to-int v0, v14

    move/from16 v18, v0

    :cond_45
    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    move-result v18

    :cond_46
    move/from16 v17, v16

    goto/16 :goto_18

    :cond_47
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v18

    goto :goto_1a

    :cond_48
    const/16 v18, 0x0

    const/4 v8, 0x0

    :goto_1b
    move/from16 v16, v17

    goto/16 :goto_17

    :cond_49
    const v26, 0xffff

    and-int v12, v8, v26

    const v26, 0xffff

    and-int v22, v18, v26

    move/from16 v0, v22

    if-eq v12, v0, :cond_4d

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    move-result v26

    if-eqz v26, :cond_4b

    const/16 v26, 0x3

    move/from16 v0, v26

    if-le v12, v0, :cond_4a

    xor-int/lit8 v12, v12, 0x18

    :cond_4a
    const/16 v26, 0x3

    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_4b

    xor-int/lit8 v22, v22, 0x18

    :cond_4b
    move/from16 v0, v22

    if-ge v12, v0, :cond_4c

    const/16 v26, -0x1

    :goto_1c
    return v26

    :cond_4c
    const/16 v26, 0x1

    goto :goto_1c

    :cond_4d
    const/16 v26, 0x2

    move/from16 v0, v26

    if-eq v8, v0, :cond_3e

    ushr-int/lit8 v8, v8, 0x10

    ushr-int/lit8 v18, v18, 0x10

    goto :goto_1b

    :cond_4e
    move/from16 v16, p5

    move/from16 v6, p5

    const/16 v18, 0x0

    const/4 v8, 0x0

    move v7, v6

    :goto_1d
    if-nez v8, :cond_58

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v26

    if-ne v7, v0, :cond_51

    const/4 v8, 0x2

    move/from16 v17, v16

    :goto_1e
    if-nez v18, :cond_4f

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_55

    const/16 v18, 0x2

    :cond_4f
    move/from16 v0, v18

    if-ne v8, v0, :cond_5b

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v8, v0, :cond_5a

    :cond_50
    const/16 v26, 0x0

    return v26

    :cond_51
    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_54

    aget-char v8, p0, v4

    :goto_1f
    const/16 v26, 0xc00

    move/from16 v0, v26

    if-ge v8, v0, :cond_53

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v4, v8, v1, v6}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_52

    add-int/lit8 v6, v6, 0x1

    not-long v14, v14

    :cond_52
    long-to-int v8, v14

    :cond_53
    move/from16 v0, v24

    invoke-static {v0, v8}, Landroid/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    move-result v8

    move v7, v6

    goto :goto_1d

    :cond_54
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v8

    goto :goto_1f

    :cond_55
    add-int/lit8 v16, v17, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v26, 0x17f

    move/from16 v0, v26

    if-gt v4, v0, :cond_59

    aget-char v18, p0, v4

    :goto_20
    const/16 v26, 0xc00

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_57

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p4

    move/from16 v3, v16

    invoke-static {v0, v4, v1, v2, v3}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v14

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_56

    add-int/lit8 v16, v16, 0x1

    not-long v14, v14

    :cond_56
    long-to-int v0, v14

    move/from16 v18, v0

    :cond_57
    move/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    move-result v18

    :cond_58
    move/from16 v17, v16

    goto/16 :goto_1e

    :cond_59
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v18

    goto :goto_20

    :cond_5a
    const/16 v18, 0x0

    const/4 v8, 0x0

    :goto_21
    move/from16 v16, v17

    goto/16 :goto_1d

    :cond_5b
    const v26, 0xffff

    and-int v10, v8, v26

    const v26, 0xffff

    and-int v20, v18, v26

    move/from16 v0, v20

    if-eq v10, v0, :cond_5d

    move/from16 v0, v20

    if-ge v10, v0, :cond_5c

    const/16 v26, -0x1

    :goto_22
    return v26

    :cond_5c
    const/16 v26, 0x1

    goto :goto_22

    :cond_5d
    const/16 v26, 0x2

    move/from16 v0, v26

    if-eq v8, v0, :cond_50

    ushr-int/lit8 v8, v8, 0x10

    ushr-int/lit8 v18, v18, 0x10

    goto :goto_21

    :cond_5e
    move/from16 v16, v17

    goto/16 :goto_5

    :cond_5f
    move/from16 v17, v16

    move v6, v7

    goto/16 :goto_4

    :cond_60
    move/from16 v16, v17

    goto/16 :goto_2

    :cond_61
    move/from16 v17, v16

    move v6, v7

    goto/16 :goto_1
.end method

.method private static getCases(IZI)I
    .locals 5

    const v4, 0xffff

    const/16 v2, 0x1000

    const/16 v3, 0xc00

    const/4 v1, 0x0

    if-gt p2, v4, :cond_3

    if-lt p2, v2, :cond_1

    move v0, p2

    and-int/lit8 p2, p2, 0x18

    if-nez p1, :cond_0

    and-int/lit16 v1, v0, 0x3e0

    const/16 v2, 0x180

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x80000

    or-int/2addr p2, v1

    :cond_0
    :goto_0
    return p2

    :cond_1
    if-le p2, p0, :cond_2

    const/16 p2, 0x8

    goto :goto_0

    :cond_2
    if-lt p2, v3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    and-int v0, p2, v4

    if-lt v0, v2, :cond_5

    if-eqz p1, :cond_4

    const/high16 v1, -0x4000000

    and-int/2addr v1, p2

    if-nez v1, :cond_4

    and-int/lit8 p2, p2, 0x18

    goto :goto_0

    :cond_4
    const v1, 0x180018

    and-int/2addr p2, v1

    goto :goto_0

    :cond_5
    if-le v0, p0, :cond_6

    const p2, 0x80008

    goto :goto_0

    :cond_6
    sget-boolean v2, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    if-nez v2, :cond_8

    if-lt v0, v3, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    const/4 p2, 0x0

    goto :goto_0
.end method

.method static getCharIndex(C)I
    .locals 1

    const/16 v0, 0x17f

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x2000

    if-gt v0, p0, :cond_1

    const/16 v0, 0x2040

    if-ge p0, v0, :cond_1

    add-int/lit16 v0, p0, -0x1e80

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I
    .locals 28

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    if-nez v13, :cond_0

    const/16 v25, -0x1

    return v25

    :cond_0
    sget-boolean v25, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    if-nez v25, :cond_2

    const/16 v25, 0x0

    aget-char v25, v13, v25

    shr-int/lit8 v25, v25, 0x8

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    const/16 v25, 0x1

    :goto_0
    if-nez v25, :cond_2

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    :cond_1
    const/16 v25, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v25, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    if-nez v25, :cond_4

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x180

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    const/16 v25, 0x1

    :goto_1
    if-nez v25, :cond_4

    new-instance v25, Ljava/lang/AssertionError;

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v25

    :cond_3
    const/16 v25, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x180

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    const/16 v25, -0x1

    return v25

    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0xc

    if-nez v25, :cond_7

    const/16 v18, 0xbff

    :goto_2
    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v25

    if-eqz v25, :cond_10

    const-wide/16 v20, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v4, 0x0

    const/16 v12, 0x1000

    :goto_3
    const/16 v25, 0x1008

    move/from16 v0, v25

    if-ge v12, v0, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v22

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v22

    const/16 v25, 0x1004

    move/from16 v0, v25

    if-ne v12, v0, :cond_9

    move-wide/from16 v6, v20

    move-wide/from16 v10, v22

    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_7
    const/16 v25, 0x0

    aget-char v25, v13, v25

    move/from16 v0, v25

    and-int/lit16 v14, v0, 0xff

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v25

    add-int/lit8 v15, v25, 0x1

    if-lt v15, v14, :cond_8

    const/16 v25, -0x1

    return v25

    :cond_8
    aget-char v18, v13, v15

    goto :goto_2

    :cond_9
    const-wide/16 v26, 0x0

    cmp-long v25, v22, v26

    if-eqz v25, :cond_6

    cmp-long v25, v22, v20

    if-gez v25, :cond_a

    const/16 v25, -0x1

    return v25

    :cond_a
    const-wide/16 v26, 0x0

    cmp-long v25, v10, v26

    if-eqz v25, :cond_b

    const-wide/16 v26, 0x0

    cmp-long v25, v4, v26

    if-nez v25, :cond_b

    cmp-long v25, v20, v6

    if-nez v25, :cond_b

    move-wide/from16 v4, v22

    :cond_b
    move-wide/from16 v20, v22

    goto :goto_4

    :cond_c
    const/16 v25, 0x19

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v16

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v16

    cmp-long v25, v16, v20

    if-gez v25, :cond_d

    const/16 v25, -0x1

    return v25

    :cond_d
    const-wide/16 v26, 0x0

    cmp-long v25, v4, v26

    if-nez v25, :cond_e

    move-wide/from16 v4, v16

    :cond_e
    cmp-long v25, v6, v10

    if-gez v25, :cond_f

    cmp-long v25, v10, v4

    if-ltz v25, :cond_10

    :cond_f
    const/4 v9, 0x1

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    move-object/from16 v24, v0

    const/4 v8, 0x0

    :goto_5
    const/16 v25, 0x180

    move/from16 v0, v25

    if-ge v8, v0, :cond_13

    aget-char v19, v24, v8

    const/16 v25, 0x1000

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_11

    const v25, 0xfc00

    and-int v19, v19, v25

    :goto_6
    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v25, v0

    aput-char v25, p2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_11
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    const v25, 0xfff8

    and-int v19, v19, v25

    goto :goto_6

    :cond_12
    const/16 v19, 0x0

    goto :goto_6

    :cond_13
    if-nez v9, :cond_14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x2

    if-eqz v25, :cond_15

    :cond_14
    const/16 v8, 0x30

    :goto_7
    const/16 v25, 0x39

    move/from16 v0, v25

    if-gt v8, v0, :cond_15

    const/16 v25, 0x0

    aput-char v25, p2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_15
    shl-int/lit8 v25, v18, 0x10

    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    move/from16 v26, v0

    or-int v25, v25, v26

    return v25
.end method

.method private static getPrimaries(II)I
    .locals 2

    const v1, 0xffff

    and-int v0, p1, v1

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    const v1, -0x3ff0400

    and-int/2addr v1, p1

    return v1

    :cond_0
    if-le v0, p0, :cond_1

    const v1, -0x70008

    and-int/2addr v1, p1

    return v1

    :cond_1
    const/16 v1, 0xc00

    if-lt v0, v1, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    return p1
.end method

.method private static getQuaternaries(II)I
    .locals 3

    const v1, 0xffff

    const/16 v2, 0xc00

    if-gt p1, v1, :cond_4

    const/16 v1, 0x1000

    if-lt p1, v1, :cond_2

    and-int/lit16 v1, p1, 0x3e0

    const/16 v2, 0x180

    if-lt v1, v2, :cond_1

    const p1, -0x3ff0400

    :cond_0
    :goto_0
    return p1

    :cond_1
    const p1, 0xfc00

    goto :goto_0

    :cond_2
    if-le p1, p0, :cond_3

    const p1, 0xfc00

    goto :goto_0

    :cond_3
    if-lt p1, v2, :cond_0

    const v1, 0xfff8

    and-int/2addr p1, v1

    goto :goto_0

    :cond_4
    and-int v0, p1, v1

    if-le v0, p0, :cond_5

    const p1, -0x3ff0400

    goto :goto_0

    :cond_5
    sget-boolean v1, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    if-nez v1, :cond_7

    if-lt v0, v2, :cond_6

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const v1, -0x70008

    and-int/2addr p1, v1

    goto :goto_0
.end method

.method private static getSecondaries(II)I
    .locals 4

    const v3, 0xffff

    const/16 v1, 0x1000

    const/16 v2, 0xc00

    if-gt p1, v3, :cond_3

    if-lt p1, v1, :cond_1

    invoke-static {p1}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    if-le p1, p0, :cond_2

    const/16 p1, 0xc0

    goto :goto_0

    :cond_2
    if-lt p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    and-int v0, p1, v3

    if-lt v0, v1, :cond_4

    const v1, 0x3e003e0

    and-int/2addr v1, p1

    const v2, 0x200020

    add-int p1, v1, v2

    goto :goto_0

    :cond_4
    if-le v0, p0, :cond_5

    const p1, 0xc000c0

    goto :goto_0

    :cond_5
    sget-boolean v1, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    if-nez v1, :cond_7

    if-lt v0, v2, :cond_6

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static getSecondariesFromOneShortCE(I)I
    .locals 1

    and-int/lit16 p0, p0, 0x3e0

    const/16 v0, 0x180

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x20

    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x20

    shl-int/lit8 v0, v0, 0x10

    or-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method private static getTertiaries(IZI)I
    .locals 6

    const v5, 0x70007

    const v4, 0xffff

    const/16 v1, 0x1000

    const/16 v3, 0xc00

    const/16 v2, 0x180

    if-gt p2, v4, :cond_4

    if-lt p2, v1, :cond_2

    move v0, p2

    if-eqz p1, :cond_1

    and-int/lit8 v1, p2, 0x1f

    add-int/lit8 p2, v1, 0x20

    and-int/lit16 v1, v0, 0x3e0

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x280000

    or-int/2addr p2, v1

    :cond_0
    :goto_0
    return p2

    :cond_1
    and-int/lit8 v1, p2, 0x7

    add-int/lit8 p2, v1, 0x20

    and-int/lit16 v1, v0, 0x3e0

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x200000

    or-int/2addr p2, v1

    goto :goto_0

    :cond_2
    if-le p2, p0, :cond_3

    and-int/lit8 v1, p2, 0x7

    add-int/lit8 p2, v1, 0x20

    if-eqz p1, :cond_0

    or-int/lit8 p2, p2, 0x8

    goto :goto_0

    :cond_3
    if-lt p2, v3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    and-int v0, p2, v4

    if-lt v0, v1, :cond_6

    if-eqz p1, :cond_5

    const v1, 0x1f001f

    and-int/2addr p2, v1

    :goto_1
    const v1, 0x200020

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    and-int/2addr p2, v5

    goto :goto_1

    :cond_6
    if-le v0, p0, :cond_7

    and-int v1, p2, v5

    const v2, 0x200020

    add-int p2, v1, v2

    if-eqz p1, :cond_0

    const v1, 0x80008

    or-int/2addr p2, v1

    goto :goto_0

    :cond_7
    sget-boolean v1, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    if-nez v1, :cond_9

    if-lt v0, v3, :cond_8

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private static lookup([CI)I
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Landroid/icu/impl/coll/CollationFastLatin;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    const/16 v0, 0x17f

    if-le p1, v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2000

    if-gt v0, p1, :cond_2

    const/16 v0, 0x2040

    if-ge p1, v0, :cond_2

    add-int/lit16 v0, p1, -0x2000

    add-int/lit16 v0, v0, 0x180

    aget-char v0, p0, v0

    return v0

    :cond_2
    const v0, 0xfffe

    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const v0, 0xffff

    if-ne p1, v0, :cond_4

    const v0, 0xfca8

    return v0

    :cond_4
    return v1
.end method

.method private static nextPair([CIILjava/lang/CharSequence;I)J
    .locals 16

    const/16 v12, 0xc00

    move/from16 v0, p2

    if-ge v0, v12, :cond_0

    const/16 v12, 0x400

    move/from16 v0, p2

    if-ge v0, v12, :cond_1

    :cond_0
    move/from16 v0, p2

    int-to-long v12, v0

    return-wide v12

    :cond_1
    const/16 v12, 0x800

    move/from16 v0, p2

    if-lt v0, v12, :cond_2

    move/from16 v0, p2

    and-int/lit16 v12, v0, 0x3ff

    add-int/lit16 v6, v12, 0x1c0

    add-int/lit8 v12, v6, 0x1

    aget-char v12, p0, v12

    int-to-long v12, v12

    const/16 v14, 0x10

    shl-long/2addr v12, v14

    aget-char v14, p0, v6

    int-to-long v14, v14

    or-long/2addr v12, v14

    return-wide v12

    :cond_2
    move/from16 v0, p2

    and-int/lit16 v12, v0, 0x3ff

    add-int/lit16 v6, v12, 0x1c0

    const/4 v5, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v12

    move/from16 v0, p4

    if-eq v0, v12, :cond_5

    move/from16 v8, p4

    add-int/lit8 v8, p4, 0x1

    invoke-interface/range {p3 .. p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v12, 0x17f

    if-le v2, v12, :cond_3

    const/16 v12, 0x2000

    if-gt v12, v2, :cond_6

    const/16 v12, 0x2040

    if-ge v2, v12, :cond_6

    add-int/lit16 v12, v2, -0x2000

    add-int/lit16 v2, v12, 0x180

    :cond_3
    :goto_0
    move v4, v6

    aget-char v3, p0, v6

    :cond_4
    shr-int/lit8 v12, v3, 0x9

    add-int/2addr v4, v12

    aget-char v3, p0, v4

    and-int/lit16 v9, v3, 0x1ff

    if-lt v9, v2, :cond_4

    if-ne v9, v2, :cond_5

    move v6, v4

    const/4 v5, 0x1

    :cond_5
    aget-char v12, p0, v6

    shr-int/lit8 v7, v12, 0x9

    const/4 v12, 0x1

    if-ne v7, v12, :cond_9

    const-wide/16 v12, 0x1

    return-wide v12

    :cond_6
    const v12, 0xfffe

    if-eq v2, v12, :cond_7

    const v12, 0xffff

    if-ne v2, v12, :cond_8

    :cond_7
    const/4 v2, -0x1

    goto :goto_0

    :cond_8
    const-wide/16 v12, 0x1

    return-wide v12

    :cond_9
    add-int/lit8 v12, v6, 0x1

    aget-char p2, p0, v12

    const/4 v12, 0x2

    if-ne v7, v12, :cond_b

    move/from16 v0, p2

    int-to-long v10, v0

    :goto_1
    if-eqz v5, :cond_a

    not-long v10, v10

    :cond_a
    return-wide v10

    :cond_b
    add-int/lit8 v12, v6, 0x2

    aget-char v12, p0, v12

    int-to-long v12, v12

    const/16 v14, 0x10

    shl-long/2addr v12, v14

    move/from16 v0, p2

    int-to-long v14, v0

    or-long v10, v12, v14

    goto :goto_1
.end method
