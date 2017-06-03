.class public final Landroid/icu/impl/coll/CollationKeys;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationKeys$LevelCallback;,
        Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;,
        Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CASE_LOWER_FIRST_COMMON_HIGH:I = 0xd

.field private static final CASE_LOWER_FIRST_COMMON_LOW:I = 0x1

.field private static final CASE_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x7

.field private static final CASE_LOWER_FIRST_COMMON_MIDDLE:I = 0x7

.field private static final CASE_UPPER_FIRST_COMMON_HIGH:I = 0xf

.field private static final CASE_UPPER_FIRST_COMMON_LOW:I = 0x3

.field private static final CASE_UPPER_FIRST_COMMON_MAX_COUNT:I = 0xd

.field private static final QUAT_COMMON_HIGH:I = 0xfc

.field private static final QUAT_COMMON_LOW:I = 0x1c

.field private static final QUAT_COMMON_MAX_COUNT:I = 0x71

.field private static final QUAT_COMMON_MIDDLE:I = 0x8c

.field private static final QUAT_SHIFTED_LIMIT_BYTE:I = 0x1b

.field static final SEC_COMMON_HIGH:I = 0x45

.field private static final SEC_COMMON_LOW:I = 0x5

.field private static final SEC_COMMON_MAX_COUNT:I = 0x21

.field private static final SEC_COMMON_MIDDLE:I = 0x25

.field public static final SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

.field private static final TER_LOWER_FIRST_COMMON_HIGH:I = 0x45

.field private static final TER_LOWER_FIRST_COMMON_LOW:I = 0x5

.field private static final TER_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final TER_LOWER_FIRST_COMMON_MIDDLE:I = 0x25

.field private static final TER_ONLY_COMMON_HIGH:I = 0xc5

.field private static final TER_ONLY_COMMON_LOW:I = 0x5

.field private static final TER_ONLY_COMMON_MAX_COUNT:I = 0x61

.field private static final TER_ONLY_COMMON_MIDDLE:I = 0x65

.field private static final TER_UPPER_FIRST_COMMON_HIGH:I = 0xc5

.field private static final TER_UPPER_FIRST_COMMON_LOW:I = 0x85

.field private static final TER_UPPER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final TER_UPPER_FIRST_COMMON_MIDDLE:I = 0xa5

.field private static final levelMasks:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationKeys;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    new-instance v0, Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;-><init>()V

    sput-object v0, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/coll/CollationKeys;->levelMasks:[I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :array_0
    .array-data 4
        0x2
        0x6
        0x16
        0x36
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x36
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V
    .locals 48

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    move/from16 v22, v0

    sget-object v44, Landroid/icu/impl/coll/CollationKeys;->levelMasks:[I

    invoke-static/range {v22 .. v22}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v45

    aget v20, v44, v45

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    if-eqz v44, :cond_0

    or-int/lit8 v20, v20, 0x8

    :cond_0
    const/16 v44, 0x1

    shl-int v44, v44, p4

    add-int/lit8 v44, v44, -0x1

    move/from16 v0, v44

    not-int v0, v0

    move/from16 v44, v0

    and-int v20, v20, v44

    if-nez v20, :cond_1

    return-void

    :cond_1
    and-int/lit8 v44, v22, 0xc

    if-nez v44, :cond_3

    const-wide/16 v42, 0x0

    :goto_0
    invoke-static/range {v22 .. v22}, Landroid/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    move-result v41

    const/16 v44, 0x3

    move/from16 v0, v44

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v44, 0x8

    move/from16 v0, v20

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v8

    const/16 v44, 0x4

    move/from16 v0, v20

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v37

    const/16 v44, 0x10

    move/from16 v0, v20

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v40

    const/16 v44, 0x20

    move/from16 v0, v20

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v32

    const-wide/16 v28, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/16 v30, 0x0

    const/16 v35, 0x0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v10

    const/16 v44, 0x20

    ushr-long v24, v10, v44

    cmp-long v44, v24, v42

    if-gez v44, :cond_9

    const-wide/32 v44, 0x2000000

    cmp-long v44, v24, v44

    if-lez v44, :cond_9

    if-eqz v12, :cond_5

    add-int/lit8 v12, v12, -0x1

    :goto_1
    const/16 v44, 0x71

    move/from16 v0, v44

    if-lt v12, v0, :cond_4

    const/16 v44, 0x8c

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v12, v12, -0x71

    goto :goto_1

    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x1

    add-long v42, v44, v46

    goto :goto_0

    :cond_4
    add-int/lit8 v44, v12, 0x1c

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v12, 0x0

    :cond_5
    and-int/lit8 v44, v20, 0x20

    if-eqz v44, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v44

    if-eqz v44, :cond_6

    move-object/from16 v0, p2

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v24

    :cond_6
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v44, v0

    ushr-int/lit8 v44, v44, 0x18

    const/16 v45, 0x1b

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_7

    const/16 v44, 0x1b

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    :cond_7
    move-object/from16 v0, v32

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight32(J)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v10

    const/16 v44, 0x20

    ushr-long v24, v10, v44

    const-wide/16 v44, 0x0

    cmp-long v44, v24, v44

    if-eqz v44, :cond_8

    cmp-long v44, v24, v42

    if-gez v44, :cond_9

    const-wide/32 v44, 0x2000000

    cmp-long v44, v24, v44

    if-gtz v44, :cond_5

    :cond_9
    const-wide/16 v44, 0x1

    cmp-long v44, v24, v44

    if-lez v44, :cond_13

    and-int/lit8 v44, v20, 0x2

    if-eqz v44, :cond_13

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v44, v0

    ushr-int/lit8 v44, v44, 0x18

    aget-boolean v16, p1, v44

    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v44

    if-eqz v44, :cond_a

    move-object/from16 v0, p2

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v24

    :cond_a
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v44, v0

    ushr-int/lit8 v23, v44, 0x18

    if-eqz v16, :cond_b

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v44, v0

    ushr-int/lit8 v44, v44, 0x18

    move/from16 v0, v23

    move/from16 v1, v44

    if-eq v0, v1, :cond_d

    :cond_b
    const-wide/16 v44, 0x0

    cmp-long v44, v28, v44

    if-eqz v44, :cond_c

    cmp-long v44, v24, v28

    if-gez v44, :cond_f

    const/16 v44, 0x2

    move/from16 v0, v23

    move/from16 v1, v44

    if-le v0, v1, :cond_c

    const/16 v44, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    :cond_c
    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    if-eqz v16, :cond_10

    move-wide/from16 v28, v24

    :cond_d
    :goto_3
    const/16 v44, 0x10

    ushr-long v44, v24, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-byte v0, v0

    move/from16 v26, v0

    if-eqz v26, :cond_e

    const/16 v44, 0x0

    aput-byte v26, v27, v44

    const/16 v44, 0x8

    ushr-long v44, v24, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-byte v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    aput-byte v44, v27, v45

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-byte v0, v0

    move/from16 v44, v0

    const/16 v45, 0x2

    aput-byte v44, v27, v45

    const/16 v44, 0x1

    aget-byte v44, v27, v44

    if-nez v44, :cond_11

    const/16 v44, 0x1

    :goto_4
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append([BI)V

    :cond_e
    if-nez p6, :cond_13

    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Overflowed()Z

    move-result v44

    if-eqz v44, :cond_13

    return-void

    :cond_f
    const/16 v44, 0xff

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    goto :goto_2

    :cond_10
    const-wide/16 v28, 0x0

    goto :goto_3

    :cond_11
    const/16 v44, 0x2

    aget-byte v44, v27, v44

    if-nez v44, :cond_12

    const/16 v44, 0x2

    goto :goto_4

    :cond_12
    const/16 v44, 0x3

    goto :goto_4

    :cond_13
    long-to-int v0, v10

    move/from16 v21, v0

    if-eqz v21, :cond_2

    and-int/lit8 v44, v20, 0x4

    if-eqz v44, :cond_14

    ushr-int/lit8 v34, v21, 0x10

    if-nez v34, :cond_16

    :cond_14
    :goto_5
    and-int/lit8 v44, v20, 0x8

    if-eqz v44, :cond_15

    invoke-static/range {v22 .. v22}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v44

    if-nez v44, :cond_22

    const-wide/16 v44, 0x0

    cmp-long v44, v24, v44

    if-nez v44, :cond_23

    :cond_15
    :goto_6
    and-int/lit8 v44, v20, 0x10

    if-eqz v44, :cond_31

    and-int v39, v21, v41

    sget-boolean v44, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    if-nez v44, :cond_30

    const v44, 0xc000

    and-int v44, v44, v21

    const v45, 0xc000

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_2f

    const/16 v44, 0x1

    :goto_7
    if-nez v44, :cond_30

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    :cond_16
    const/16 v44, 0x500

    move/from16 v0, v34

    move/from16 v1, v44

    if-ne v0, v1, :cond_18

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x800

    move/from16 v44, v0

    if-eqz v44, :cond_17

    const-wide/32 v44, 0x2000000

    cmp-long v44, v24, v44

    if-eqz v44, :cond_18

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_18
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x800

    move/from16 v44, v0

    if-nez v44, :cond_1c

    if-eqz v13, :cond_1a

    add-int/lit8 v13, v13, -0x1

    :goto_8
    const/16 v44, 0x21

    move/from16 v0, v44

    if-lt v13, v0, :cond_19

    const/16 v44, 0x25

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v13, v13, -0x21

    goto :goto_8

    :cond_19
    const/16 v44, 0x500

    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_1b

    add-int/lit8 v5, v13, 0x5

    :goto_9
    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v13, 0x0

    :cond_1a
    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto/16 :goto_5

    :cond_1b
    rsub-int/lit8 v5, v13, 0x45

    goto :goto_9

    :cond_1c
    if-eqz v13, :cond_1e

    add-int/lit8 v13, v13, -0x1

    rem-int/lit8 v33, v13, 0x21

    const/16 v44, 0x500

    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_1d

    add-int/lit8 v5, v33, 0x5

    :goto_a
    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    sub-int v13, v13, v33

    :goto_b
    if-lez v13, :cond_1e

    const/16 v44, 0x25

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v13, v13, -0x21

    goto :goto_b

    :cond_1d
    rsub-int/lit8 v5, v33, 0x45

    goto :goto_a

    :cond_1e
    const-wide/16 v44, 0x0

    cmp-long v44, v44, v24

    if-gez v44, :cond_21

    const-wide/32 v44, 0x2000000

    cmp-long v44, v24, v44

    if-gtz v44, :cond_21

    invoke-virtual/range {v37 .. v37}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->data()[B

    move-result-object v38

    invoke-virtual/range {v37 .. v37}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v44

    add-int/lit8 v17, v44, -0x1

    move/from16 v18, v17

    move/from16 v36, v35

    :goto_c
    move/from16 v0, v36

    move/from16 v1, v18

    if-ge v0, v1, :cond_1f

    aget-byte v4, v38, v36

    add-int/lit8 v35, v36, 0x1

    aget-byte v44, v38, v18

    aput-byte v44, v38, v36

    add-int/lit8 v17, v18, -0x1

    aput-byte v4, v38, v18

    move/from16 v18, v17

    move/from16 v36, v35

    goto :goto_c

    :cond_1f
    const-wide/16 v44, 0x1

    cmp-long v44, v24, v44

    if-nez v44, :cond_20

    const/16 v44, 0x1

    :goto_d
    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v30, 0x0

    invoke-virtual/range {v37 .. v37}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v35

    goto/16 :goto_5

    :cond_20
    const/16 v44, 0x2

    goto :goto_d

    :cond_21
    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendReverseWeight16(I)V

    move/from16 v30, v34

    goto/16 :goto_5

    :cond_22
    ushr-int/lit8 v44, v21, 0x10

    if-eqz v44, :cond_15

    :cond_23
    ushr-int/lit8 v44, v21, 0x8

    move/from16 v0, v44

    and-int/lit16 v7, v0, 0xff

    sget-boolean v44, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    if-nez v44, :cond_25

    and-int/lit16 v0, v7, 0xc0

    move/from16 v44, v0

    const/16 v45, 0xc0

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_24

    const/16 v44, 0x1

    :goto_e
    if-nez v44, :cond_25

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    :cond_24
    const/16 v44, 0x0

    goto :goto_e

    :cond_25
    and-int/lit16 v0, v7, 0xc0

    move/from16 v44, v0

    if-nez v44, :cond_26

    const/16 v44, 0x1

    move/from16 v0, v44

    if-le v7, v0, :cond_26

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    :cond_26
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x100

    move/from16 v44, v0

    if-nez v44, :cond_2c

    if-eqz v9, :cond_27

    const/16 v44, 0x1

    move/from16 v0, v44

    if-gt v7, v0, :cond_29

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    move-result v44

    if-eqz v44, :cond_29

    :cond_27
    :goto_f
    const/16 v44, 0x1

    move/from16 v0, v44

    if-le v7, v0, :cond_28

    ushr-int/lit8 v44, v7, 0x6

    add-int/lit8 v44, v44, 0xd

    shl-int/lit8 v7, v44, 0x4

    :cond_28
    :goto_10
    invoke-virtual {v8, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    goto/16 :goto_6

    :cond_29
    add-int/lit8 v9, v9, -0x1

    :goto_11
    const/16 v44, 0x7

    move/from16 v0, v44

    if-lt v9, v0, :cond_2a

    const/16 v44, 0x70

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v9, v9, -0x7

    goto :goto_11

    :cond_2a
    const/16 v44, 0x1

    move/from16 v0, v44

    if-gt v7, v0, :cond_2b

    add-int/lit8 v5, v9, 0x1

    :goto_12
    shl-int/lit8 v44, v5, 0x4

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v9, 0x0

    goto :goto_f

    :cond_2b
    rsub-int/lit8 v5, v9, 0xd

    goto :goto_12

    :cond_2c
    if-eqz v9, :cond_2e

    add-int/lit8 v9, v9, -0x1

    :goto_13
    const/16 v44, 0xd

    move/from16 v0, v44

    if-lt v9, v0, :cond_2d

    const/16 v44, 0x30

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v9, v9, -0xd

    goto :goto_13

    :cond_2d
    add-int/lit8 v44, v9, 0x3

    shl-int/lit8 v44, v44, 0x4

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v9, 0x0

    :cond_2e
    const/16 v44, 0x1

    move/from16 v0, v44

    if-le v7, v0, :cond_28

    ushr-int/lit8 v44, v7, 0x6

    rsub-int/lit8 v44, v44, 0x3

    shl-int/lit8 v7, v44, 0x4

    goto :goto_10

    :cond_2f
    const/16 v44, 0x0

    goto/16 :goto_7

    :cond_30
    const/16 v44, 0x500

    move/from16 v0, v39

    move/from16 v1, v44

    if-ne v0, v1, :cond_33

    add-int/lit8 v14, v14, 0x1

    :cond_31
    :goto_14
    and-int/lit8 v44, v20, 0x20

    if-eqz v44, :cond_32

    const v44, 0xffff

    and-int v31, v21, v44

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xc0

    move/from16 v44, v0

    if-nez v44, :cond_46

    const/16 v44, 0x100

    move/from16 v0, v31

    move/from16 v1, v44

    if-le v0, v1, :cond_46

    add-int/lit8 v12, v12, 0x1

    :cond_32
    :goto_15
    ushr-int/lit8 v44, v21, 0x18

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_2

    and-int/lit8 v44, v20, 0x4

    if-eqz v44, :cond_4d

    const/16 v44, 0x2

    move-object/from16 v0, p5

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v44

    if-nez v44, :cond_4c

    return-void

    :cond_33
    const v44, 0x8000

    and-int v44, v44, v41

    if-nez v44, :cond_38

    if-eqz v14, :cond_35

    add-int/lit8 v14, v14, -0x1

    :goto_16
    const/16 v44, 0x61

    move/from16 v0, v44

    if-lt v14, v0, :cond_34

    const/16 v44, 0x65

    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v14, v14, -0x61

    goto :goto_16

    :cond_34
    const/16 v44, 0x500

    move/from16 v0, v39

    move/from16 v1, v44

    if-ge v0, v1, :cond_37

    add-int/lit8 v5, v14, 0x5

    :goto_17
    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v14, 0x0

    :cond_35
    const/16 v44, 0x500

    move/from16 v0, v39

    move/from16 v1, v44

    if-le v0, v1, :cond_36

    const v44, 0xc000

    add-int v39, v39, v44

    :cond_36
    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto :goto_14

    :cond_37
    rsub-int v5, v14, 0xc5

    goto :goto_17

    :cond_38
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x100

    move/from16 v44, v0

    if-nez v44, :cond_3d

    if-eqz v14, :cond_3a

    add-int/lit8 v14, v14, -0x1

    :goto_18
    const/16 v44, 0x21

    move/from16 v0, v44

    if-lt v14, v0, :cond_39

    const/16 v44, 0x25

    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v14, v14, -0x21

    goto :goto_18

    :cond_39
    const/16 v44, 0x500

    move/from16 v0, v39

    move/from16 v1, v44

    if-ge v0, v1, :cond_3c

    add-int/lit8 v5, v14, 0x5

    :goto_19
    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v14, 0x0

    :cond_3a
    const/16 v44, 0x500

    move/from16 v0, v39

    move/from16 v1, v44

    if-le v0, v1, :cond_3b

    move/from16 v0, v39

    add-int/lit16 v0, v0, 0x4000

    move/from16 v39, v0

    :cond_3b
    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto/16 :goto_14

    :cond_3c
    rsub-int/lit8 v5, v14, 0x45

    goto :goto_19

    :cond_3d
    const/16 v44, 0x100

    move/from16 v0, v39

    move/from16 v1, v44

    if-gt v0, v1, :cond_3f

    :cond_3e
    :goto_1a
    if-eqz v14, :cond_44

    add-int/lit8 v14, v14, -0x1

    :goto_1b
    const/16 v44, 0x21

    move/from16 v0, v44

    if-lt v14, v0, :cond_43

    const/16 v44, 0xa5

    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v14, v14, -0x21

    goto :goto_1b

    :cond_3f
    ushr-int/lit8 v44, v21, 0x10

    if-eqz v44, :cond_40

    const v44, 0xc000

    xor-int v39, v39, v44

    const v44, 0xc500

    move/from16 v0, v39

    move/from16 v1, v44

    if-ge v0, v1, :cond_3e

    move/from16 v0, v39

    add-int/lit16 v0, v0, -0x4000

    move/from16 v39, v0

    goto :goto_1a

    :cond_40
    sget-boolean v44, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    if-nez v44, :cond_42

    const v44, 0x8600

    move/from16 v0, v44

    move/from16 v1, v39

    if-gt v0, v1, :cond_41

    const v44, 0xbfff

    move/from16 v0, v39

    move/from16 v1, v44

    if-gt v0, v1, :cond_41

    const/16 v44, 0x1

    :goto_1c
    if-nez v44, :cond_42

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    :cond_41
    const/16 v44, 0x0

    goto :goto_1c

    :cond_42
    move/from16 v0, v39

    add-int/lit16 v0, v0, 0x4000

    move/from16 v39, v0

    goto :goto_1a

    :cond_43
    const v44, 0x8500

    move/from16 v0, v39

    move/from16 v1, v44

    if-ge v0, v1, :cond_45

    add-int/lit16 v5, v14, 0x85

    :goto_1d
    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v14, 0x0

    :cond_44
    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto/16 :goto_14

    :cond_45
    rsub-int v5, v14, 0xc5

    goto :goto_1d

    :cond_46
    const/16 v44, 0x100

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_47

    and-int/lit8 v44, v22, 0xc

    if-nez v44, :cond_47

    invoke-virtual/range {v32 .. v32}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    move-result v44

    if-eqz v44, :cond_47

    const/16 v44, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    goto/16 :goto_15

    :cond_47
    const/16 v44, 0x100

    move/from16 v0, v31

    move/from16 v1, v44

    if-ne v0, v1, :cond_48

    const/16 v31, 0x1

    :goto_1e
    if-eqz v12, :cond_4a

    add-int/lit8 v12, v12, -0x1

    :goto_1f
    const/16 v44, 0x71

    move/from16 v0, v44

    if-lt v12, v0, :cond_49

    const/16 v44, 0x8c

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v12, v12, -0x71

    goto :goto_1f

    :cond_48
    ushr-int/lit8 v44, v31, 0x6

    and-int/lit8 v44, v44, 0x3

    move/from16 v0, v44

    add-int/lit16 v0, v0, 0xfc

    move/from16 v31, v0

    goto :goto_1e

    :cond_49
    const/16 v44, 0x1c

    move/from16 v0, v31

    move/from16 v1, v44

    if-ge v0, v1, :cond_4b

    add-int/lit8 v5, v12, 0x1c

    :goto_20
    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v12, 0x0

    :cond_4a
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    goto/16 :goto_15

    :cond_4b
    rsub-int v5, v12, 0xfc

    goto :goto_20

    :cond_4c
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    :cond_4d
    and-int/lit8 v44, v20, 0x8

    if-eqz v44, :cond_53

    const/16 v44, 0x3

    move-object/from16 v0, p5

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v44

    if-nez v44, :cond_4e

    return-void

    :cond_4e
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v44

    add-int/lit8 v19, v44, -0x1

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_21
    move/from16 v0, v19

    if-ge v15, v0, :cond_52

    invoke-virtual {v8, v15}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->getAt(I)B

    move-result v6

    sget-boolean v44, Landroid/icu/impl/coll/CollationKeys;->-assertionsDisabled:Z

    if-nez v44, :cond_50

    and-int/lit8 v44, v6, 0xf

    if-nez v44, :cond_4f

    if-eqz v6, :cond_4f

    const/16 v44, 0x1

    :goto_22
    if-nez v44, :cond_50

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    :cond_4f
    const/16 v44, 0x0

    goto :goto_22

    :cond_50
    if-nez v4, :cond_51

    move v4, v6

    :goto_23
    add-int/lit8 v15, v15, 0x1

    goto :goto_21

    :cond_51
    shr-int/lit8 v44, v6, 0x4

    and-int/lit8 v44, v44, 0xf

    or-int v44, v44, v4

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    const/4 v4, 0x0

    goto :goto_23

    :cond_52
    if-eqz v4, :cond_53

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    :cond_53
    and-int/lit8 v44, v20, 0x10

    if-eqz v44, :cond_55

    const/16 v44, 0x4

    move-object/from16 v0, p5

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v44

    if-nez v44, :cond_54

    return-void

    :cond_54
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    :cond_55
    and-int/lit8 v44, v20, 0x20

    if-eqz v44, :cond_57

    const/16 v44, 0x5

    move-object/from16 v0, p5

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v44

    if-nez v44, :cond_56

    return-void

    :cond_56
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    :cond_57
    return-void
.end method
