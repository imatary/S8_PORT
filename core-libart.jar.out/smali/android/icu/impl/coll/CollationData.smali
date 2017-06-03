.class public final Landroid/icu/impl/coll/CollationData;
.super Ljava/lang/Object;
.source "CollationData.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final EMPTY_INT_ARRAY:[I

.field static final JAMO_CE32S_LENGTH:I = 0x43

.field static final MAX_NUM_SPECIAL_REORDER_CODES:I = 0x8

.field static final REORDER_RESERVED_AFTER_LATIN:I = 0x100f

.field static final REORDER_RESERVED_BEFORE_LATIN:I = 0x100e


# instance fields
.field public base:Landroid/icu/impl/coll/CollationData;

.field ce32s:[I

.field ces:[J

.field public compressibleBytes:[Z

.field contexts:Ljava/lang/String;

.field public fastLatinTable:[C

.field fastLatinTableHeader:[C

.field jamoCE32s:[I

.field public nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field numScripts:I

.field numericPrimary:J

.field public rootElements:[J

.field scriptStarts:[C

.field scriptsIndex:[C

.field trie:Landroid/icu/impl/Trie2_32;

.field unsafeBackwardSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    new-array v0, v1, [I

    sput-object v0, Landroid/icu/impl/coll/CollationData;->EMPTY_INT_ARRAY:[I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x43

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    const-wide/32 v0, 0x12000000

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    iput-object p1, p0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    return-void
.end method

.method private addHighScriptRange([SII)I
    .locals 5

    const v4, 0xff00

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v3, p2, 0x1

    aget-char v0, v2, v3

    and-int/lit16 v2, v0, 0xff

    and-int/lit16 v3, p3, 0xff

    if-le v2, v3, :cond_0

    add-int/lit16 p3, p3, -0x100

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v1, v2, p2

    and-int v2, p3, v4

    and-int v3, v0, v4

    and-int/2addr v4, v1

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    and-int/lit16 v3, v1, 0xff

    or-int p3, v2, v3

    shr-int/lit8 v2, p3, 0x8

    int-to-short v2, v2

    aput-short v2, p1, p2

    return p3
.end method

.method private addLowScriptRange([SII)I
    .locals 5

    const v4, 0xff00

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v1, v2, p2

    and-int/lit16 v2, v1, 0xff

    and-int/lit16 v3, p3, 0xff

    if-ge v2, v3, :cond_0

    add-int/lit16 p3, p3, 0x100

    :cond_0
    shr-int/lit8 v2, p3, 0x8

    int-to-short v2, v2

    aput-short v2, p1, p2

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v3, p2, 0x1

    aget-char v0, v2, v3

    and-int v2, p3, v4

    and-int v3, v0, v4

    and-int/2addr v4, v1

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    and-int/lit16 v3, v0, 0xff

    or-int p3, v2, v3

    return p3
.end method

.method private getScriptIndex(I)I
    .locals 2

    const/4 v1, 0x0

    if-gez p1, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v0, v0, p1

    return v0

    :cond_1
    const/16 v0, 0x1000

    if-ge p1, v0, :cond_2

    return v1

    :cond_2
    add-int/lit16 p1, p1, -0x1000

    const/16 v0, 0x8

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v1, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0

    :cond_3
    return v1
.end method

.method private makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V
    .locals 24

    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/coll/UVector32;->removeAllElements()V

    move-object/from16 v0, p1

    array-length v10, v0

    if-eqz v10, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_1

    const/16 v21, 0x0

    aget v21, p1, v21

    const/16 v22, 0x67

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    new-array v0, v0, [S

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x100e

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v0, v0, -0x1000

    move/from16 v22, v0

    aget-char v8, v21, v22

    if-eqz v8, :cond_2

    const/16 v21, 0xff

    aput-short v21, v20, v8

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v0, v0, 0x100f

    move/from16 v22, v0

    move/from16 v0, v22

    add-int/lit16 v0, v0, -0x1000

    move/from16 v22, v0

    aget-char v8, v21, v22

    if-eqz v8, :cond_3

    const/16 v21, 0xff

    aput-short v21, v20, v8

    :cond_3
    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    const/16 v21, 0x1

    :goto_0
    if-nez v21, :cond_5

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    :cond_4
    const/16 v21, 0x0

    goto :goto_0

    :cond_5
    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-char v21, v21, v22

    if-nez v21, :cond_6

    const/16 v21, 0x1

    :goto_1
    if-nez v21, :cond_7

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    :cond_6
    const/16 v21, 0x0

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-char v11, v21, v22

    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    if-nez v21, :cond_9

    const/16 v21, 0x300

    move/from16 v0, v21

    if-ne v11, v0, :cond_8

    const/16 v21, 0x1

    :goto_2
    if-nez v21, :cond_9

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    :cond_8
    const/16 v21, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-char v5, v21, v22

    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    if-nez v21, :cond_b

    const v21, 0xff00

    move/from16 v0, v21

    if-ne v5, v0, :cond_a

    const/16 v21, 0x1

    :goto_3
    if-nez v21, :cond_b

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    :cond_a
    const/16 v21, 0x0

    goto :goto_3

    :cond_b
    const/16 v18, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v10, :cond_d

    aget v21, p1, v6

    move/from16 v0, v21

    add-int/lit16 v15, v0, -0x1000

    if-ltz v15, :cond_c

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ge v15, v0, :cond_c

    const/16 v21, 0x1

    shl-int v21, v21, v15

    or-int v18, v18, v21

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    const/4 v6, 0x0

    :goto_5
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ge v6, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    move/from16 v22, v0

    add-int v22, v22, v6

    aget-char v8, v21, v22

    if-eqz v8, :cond_e

    const/16 v21, 0x1

    shl-int v21, v21, v6

    and-int v21, v21, v18

    if-nez v21, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v11}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v11

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_f
    const/16 v17, 0x0

    if-nez v18, :cond_10

    const/16 v21, 0x0

    aget v21, p1, v21

    const/16 v22, 0x19

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    if-eqz p2, :cond_12

    :cond_10
    :goto_6
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_7
    if-ge v7, v10, :cond_1e

    add-int/lit8 v6, v7, 0x1

    aget v16, p1, v7

    const/16 v21, 0x67

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    const/4 v4, 0x1

    :cond_11
    :goto_8
    if-ge v6, v10, :cond_1f

    add-int/lit8 v10, v10, -0x1

    aget v16, p1, v10

    const/16 v21, 0x67

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "setReorderCodes(): duplicate UScript.UNKNOWN"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    move-object/from16 v21, v0

    const/16 v22, 0x19

    aget-char v8, v21, v22

    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    if-nez v21, :cond_14

    if-eqz v8, :cond_13

    const/16 v21, 0x1

    :goto_9
    if-nez v21, :cond_14

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    :cond_13
    const/16 v21, 0x0

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    aget-char v19, v21, v8

    sget-boolean v21, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    if-nez v21, :cond_16

    move/from16 v0, v19

    if-gt v11, v0, :cond_15

    const/16 v21, 0x1

    :goto_a
    if-nez v21, :cond_16

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    :cond_15
    const/16 v21, 0x0

    goto :goto_a

    :cond_16
    sub-int v17, v19, v11

    move/from16 v11, v19

    goto :goto_6

    :cond_17
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "setReorderCodes(): UScript.DEFAULT together with other scripts"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v8

    if-eqz v8, :cond_11

    aget-short v21, v20, v8

    if-eqz v21, :cond_19

    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setReorderCodes(): duplicate or equivalent script "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v5}, Landroid/icu/impl/coll/CollationData;->addHighScriptRange([SII)I

    move-result v5

    goto/16 :goto_8

    :cond_1a
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "setReorderCodes(): UScript.DEFAULT together with other scripts"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v8

    if-nez v8, :cond_1c

    :goto_b
    move v7, v6

    goto/16 :goto_7

    :cond_1c
    aget-short v21, v20, v8

    if-eqz v21, :cond_1d

    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setReorderCodes(): duplicate or equivalent script "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8, v11}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v11

    goto :goto_b

    :cond_1e
    move v6, v7

    :cond_1f
    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v6, v0, :cond_22

    aget-short v9, v20, v6

    if-eqz v9, :cond_20

    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    aget-char v19, v21, v6

    if-nez v4, :cond_21

    move/from16 v0, v19

    if-le v0, v11, :cond_21

    move/from16 v11, v19

    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v11}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v11

    goto :goto_d

    :cond_22
    if-le v11, v5, :cond_24

    const v21, 0xff00

    and-int v21, v21, v17

    sub-int v21, v11, v21

    move/from16 v0, v21

    if-gt v0, v5, :cond_23

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V

    return-void

    :cond_23
    new-instance v21, Landroid/icu/util/ICUException;

    const-string/jumbo v22, "setReorderCodes(): reordering too many partial-primary-lead-byte scripts"

    invoke-direct/range {v21 .. v22}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_24
    const/4 v14, 0x0

    const/4 v6, 0x1

    :goto_e
    move v13, v14

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v6, v0, :cond_27

    aget-short v12, v20, v6

    const/16 v21, 0xff

    move/from16 v0, v21

    if-ne v12, v0, :cond_26

    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    aget-char v21, v21, v6

    shr-int/lit8 v21, v21, 0x8

    sub-int v13, v12, v21

    if-eq v13, v14, :cond_25

    :cond_27
    if-nez v14, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v6, v0, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    aget-char v21, v21, v6

    shl-int/lit8 v21, v21, 0x10

    const v22, 0xffff

    and-int v22, v22, v14

    or-int v21, v21, v22

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_2a

    return-void

    :cond_2a
    move v14, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_e
.end method

.method private static scriptCodeString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1000

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCE32(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result v0

    return v0
.end method

.method getCE32FromContexts(I)I
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method getCE32FromSupplementary(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result v0

    return v0
.end method

.method getCEFromOffsetCE32(II)J
    .locals 4

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    aget-wide v0, v2, v3

    invoke-static {p1, v0, v1}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getEquivalentScripts(I)[I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v2

    if-nez v2, :cond_0

    sget-object v5, Landroid/icu/impl/coll/CollationData;->EMPTY_INT_ARRAY:[I

    return-object v5

    :cond_0
    const/16 v5, 0x1000

    if-lt p1, v5, :cond_1

    new-array v5, v7, [I

    aput p1, v5, v6

    return-object v5

    :cond_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v5, v5, v1

    if-ne v5, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-array v0, v3, [I

    if-ne v3, v7, :cond_4

    aput p1, v0, v6

    return-object v0

    :cond_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    iget v5, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge v1, v5, :cond_6

    iget-object v5, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v5, v5, v1

    if-ne v5, v2, :cond_5

    add-int/lit8 v4, v3, 0x1

    aput v1, v0, v3

    move v3, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method getFCD16(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    return v0
.end method

.method getFinalCE32(I)I
    .locals 1

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getIndirectCE32(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method getFirstPrimaryForGroup(I)J
    .locals 4

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v1, v1, v0

    int-to-long v2, v1

    const/16 v1, 0x10

    shl-long/2addr v2, v1

    goto :goto_0
.end method

.method public getGroupForPrimary(J)I
    .locals 5

    const/4 v4, -0x1

    const/16 v2, 0x10

    shr-long/2addr p1, v2

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    const/4 v3, 0x1

    aget-char v2, v2, v3

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    iget-object v3, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v3, v1, 0x1

    aget-char v2, v2, v3

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v2, v2, v0

    if-ne v2, v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v3, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    if-ne v2, v1, :cond_5

    add-int/lit16 v2, v0, 0x1000

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return v4
.end method

.method getIndirectCE32(I)I
    .locals 3

    sget-boolean v1, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v2

    aget p1, v1, v2

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    const/4 v2, 0x0

    aget p1, v1, v2

    goto :goto_0
.end method

.method public getLastPrimaryForGroup(I)J
    .locals 8

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x0

    return-wide v4

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v1, v1, v4

    int-to-long v2, v1

    const/16 v1, 0x10

    shl-long v4, v2, v1

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    return-wide v4
.end method

.method getSingleCE(I)J
    .locals 8

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v5, "unexpected CE32 tag for U+%04X (CE32 0x%08x)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :cond_0
    move-object v1, p0

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "there is not exactly one collation element for U+%04X (CE32 0x%08x)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide v2

    return-wide v2

    :pswitch_3
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide v2

    return-wide v2

    :pswitch_4
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v5

    aget v0, v2, v5

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "there is not exactly one collation element for U+%04X (CE32 0x%08x)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_5
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    aget-wide v2, v2, v3

    return-wide v2

    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "there is not exactly one collation element for U+%04X (CE32 0x%08x)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_6
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v5

    aget v0, v2, v5

    goto/16 :goto_0

    :pswitch_7
    sget-boolean v2, Landroid/icu/impl/coll/CollationData;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez p1, :cond_3

    move v2, v3

    :goto_1
    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v2, v1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    aget v0, v2, v4

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v1, p1, v0}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide v2

    return-wide v2

    :pswitch_9
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide v2

    return-wide v2

    :cond_5
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide v2

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isCompressibleLeadByte(I)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isCompressiblePrimary(J)Z
    .locals 1

    long-to-int v0, p1

    ushr-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationData;->isCompressibleLeadByte(I)Z

    move-result v0

    return v0
.end method

.method isDigit(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x660

    if-ge p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    const/16 v1, 0x30

    if-gt v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnsafeBackward(IZ)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->isDigit(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeReorderRanges([ILandroid/icu/impl/coll/UVector32;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V

    return-void
.end method
