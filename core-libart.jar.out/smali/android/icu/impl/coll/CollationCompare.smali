.class public final Landroid/icu/impl/coll/CollationCompare;
.super Ljava/lang/Object;
.source "CollationCompare.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationCompare;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationCompare;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I
    .locals 44

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    move/from16 v20, v0

    and-int/lit8 v37, v20, 0xc

    if-nez v37, :cond_2

    const-wide/16 v38, 0x0

    :goto_0
    const/4 v5, 0x0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v6

    const/16 v37, 0x20

    ushr-long v14, v6, v37

    cmp-long v37, v14, v38

    if-gez v37, :cond_4

    const-wide/32 v40, 0x2000000

    cmp-long v37, v14, v40

    if-lez v37, :cond_4

    const/4 v5, 0x1

    :cond_1
    const-wide v40, -0x100000000L

    and-long v40, v40, v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v6

    const/16 v37, 0x20

    ushr-long v14, v6, v37

    const-wide/16 v40, 0x0

    cmp-long v37, v14, v40

    if-nez v37, :cond_3

    const-wide/16 v40, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x1

    add-long v38, v40, v42

    goto :goto_0

    :cond_3
    cmp-long v37, v14, v38

    if-gez v37, :cond_4

    const-wide/32 v40, 0x2000000

    cmp-long v37, v14, v40

    if-gtz v37, :cond_1

    :cond_4
    const-wide/16 v40, 0x0

    cmp-long v37, v14, v40

    if-eqz v37, :cond_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v6

    const/16 v37, 0x20

    ushr-long v28, v6, v37

    cmp-long v37, v28, v38

    if-gez v37, :cond_8

    const-wide/32 v40, 0x2000000

    cmp-long v37, v28, v40

    if-lez v37, :cond_8

    const/4 v5, 0x1

    :cond_6
    const-wide v40, -0x100000000L

    and-long v40, v40, v6

    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v6

    const/16 v37, 0x20

    ushr-long v28, v6, v37

    const-wide/16 v40, 0x0

    cmp-long v37, v28, v40

    if-nez v37, :cond_7

    const-wide/16 v40, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->setCurrentCE(J)V

    goto :goto_2

    :cond_7
    cmp-long v37, v28, v38

    if-gez v37, :cond_8

    const-wide/32 v40, 0x2000000

    cmp-long v37, v28, v40

    if-gtz v37, :cond_6

    :cond_8
    const-wide/16 v40, 0x0

    cmp-long v37, v28, v40

    if-eqz v37, :cond_5

    cmp-long v37, v14, v28

    if-eqz v37, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v37

    if-eqz v37, :cond_9

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v14

    move-object/from16 v0, p2

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v28

    :cond_9
    cmp-long v37, v14, v28

    if-gez v37, :cond_a

    const/16 v37, -0x1

    :goto_3
    return v37

    :cond_a
    const/16 v37, 0x1

    goto :goto_3

    :cond_b
    const-wide/16 v40, 0x1

    cmp-long v37, v14, v40

    if-nez v37, :cond_0

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v37

    const/16 v40, 0x1

    move/from16 v0, v37

    move/from16 v1, v40

    if-lt v0, v1, :cond_10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x800

    move/from16 v37, v0

    if-nez v37, :cond_14

    const/4 v9, 0x0

    const/16 v24, 0x0

    :goto_4
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v37, v0

    ushr-int/lit8 v13, v37, 0x10

    if-nez v13, :cond_c

    move v9, v10

    goto :goto_4

    :cond_c
    :goto_5
    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v37, v0

    ushr-int/lit8 v32, v37, 0x10

    if-nez v32, :cond_d

    move/from16 v24, v25

    goto :goto_5

    :cond_d
    move/from16 v0, v32

    if-eq v13, v0, :cond_f

    move/from16 v0, v32

    if-ge v13, v0, :cond_e

    const/16 v37, -0x1

    :goto_6
    return v37

    :cond_e
    const/16 v37, 0x1

    goto :goto_6

    :cond_f
    const/16 v37, 0x100

    move/from16 v0, v37

    if-ne v13, v0, :cond_13

    :cond_10
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x400

    move/from16 v37, v0

    if-eqz v37, :cond_2a

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v35

    const/4 v9, 0x0

    const/16 v24, 0x0

    :cond_11
    if-nez v35, :cond_23

    :goto_7
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    long-to-int v8, v6

    const/16 v37, 0x20

    ushr-long v40, v6, v37

    const-wide/16 v42, 0x0

    cmp-long v37, v40, v42

    if-eqz v37, :cond_12

    if-nez v8, :cond_20

    :cond_12
    move v9, v10

    goto :goto_7

    :cond_13
    move/from16 v24, v25

    move v9, v10

    goto :goto_4

    :cond_14
    const/16 v18, 0x0

    const/16 v33, 0x0

    :goto_8
    move/from16 v11, v18

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    const/16 v37, 0x20

    ushr-long v22, v40, v37

    const-wide/32 v40, 0x2000000

    cmp-long v37, v22, v40

    if-gtz v37, :cond_15

    const-wide/16 v40, 0x0

    cmp-long v37, v22, v40

    if-nez v37, :cond_16

    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_16
    move/from16 v26, v33

    :goto_a
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    const/16 v37, 0x20

    ushr-long v22, v40, v37

    const-wide/32 v40, 0x2000000

    cmp-long v37, v22, v40

    if-gtz v37, :cond_17

    const-wide/16 v40, 0x0

    cmp-long v37, v22, v40

    if-nez v37, :cond_18

    :cond_17
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    :cond_18
    move v9, v11

    move/from16 v24, v26

    :cond_19
    const/4 v13, 0x0

    :goto_b
    if-nez v13, :cond_1a

    move/from16 v0, v18

    if-le v9, v0, :cond_1a

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v37, v0

    ushr-int/lit8 v13, v37, 0x10

    goto :goto_b

    :cond_1a
    const/16 v32, 0x0

    :goto_c
    if-nez v32, :cond_1b

    move/from16 v0, v24

    move/from16 v1, v33

    if-le v0, v1, :cond_1b

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v37, v0

    ushr-int/lit8 v32, v37, 0x10

    goto :goto_c

    :cond_1b
    move/from16 v0, v32

    if-eq v13, v0, :cond_1d

    move/from16 v0, v32

    if-ge v13, v0, :cond_1c

    const/16 v37, -0x1

    :goto_d
    return v37

    :cond_1c
    const/16 v37, 0x1

    goto :goto_d

    :cond_1d
    if-nez v13, :cond_19

    sget-boolean v37, Landroid/icu/impl/coll/CollationCompare;->-assertionsDisabled:Z

    if-nez v37, :cond_1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v42

    cmp-long v37, v40, v42

    if-nez v37, :cond_1e

    const/16 v37, 0x1

    :goto_e
    if-nez v37, :cond_1f

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    :cond_1e
    const/16 v37, 0x0

    goto :goto_e

    :cond_1f
    const-wide/16 v40, 0x1

    cmp-long v37, v22, v40

    if-eqz v37, :cond_10

    add-int/lit8 v18, v11, 0x1

    add-int/lit8 v33, v26, 0x1

    goto/16 :goto_8

    :cond_20
    move v12, v8

    const v37, 0xc000

    and-int v8, v8, v37

    :goto_f
    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v21, v0

    const/16 v37, 0x20

    ushr-long v40, v6, v37

    const-wide/16 v42, 0x0

    cmp-long v37, v40, v42

    if-eqz v37, :cond_21

    if-nez v21, :cond_22

    :cond_21
    move/from16 v24, v25

    goto :goto_f

    :cond_22
    const v37, 0xc000

    and-int v21, v21, v37

    move/from16 v24, v25

    move v9, v10

    :goto_10
    move/from16 v0, v21

    if-eq v8, v0, :cond_29

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x100

    move/from16 v37, v0

    if-nez v37, :cond_27

    move/from16 v0, v21

    if-ge v8, v0, :cond_26

    const/16 v37, -0x1

    :goto_11
    return v37

    :cond_23
    :goto_12
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v8, v0

    const/high16 v37, -0x10000

    and-int v37, v37, v8

    if-nez v37, :cond_24

    move v9, v10

    goto :goto_12

    :cond_24
    move v12, v8

    const v37, 0xc000

    and-int v8, v8, v37

    :goto_13
    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v21, v0

    const/high16 v37, -0x10000

    and-int v37, v37, v21

    if-nez v37, :cond_25

    move/from16 v24, v25

    goto :goto_13

    :cond_25
    const v37, 0xc000

    and-int v21, v21, v37

    move/from16 v24, v25

    move v9, v10

    goto :goto_10

    :cond_26
    const/16 v37, 0x1

    goto :goto_11

    :cond_27
    move/from16 v0, v21

    if-ge v8, v0, :cond_28

    const/16 v37, 0x1

    :goto_14
    return v37

    :cond_28
    const/16 v37, -0x1

    goto :goto_14

    :cond_29
    ushr-int/lit8 v37, v12, 0x10

    const/16 v40, 0x100

    move/from16 v0, v37

    move/from16 v1, v40

    if-ne v0, v1, :cond_11

    :cond_2a
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v37

    const/16 v40, 0x1

    move/from16 v0, v37

    move/from16 v1, v40

    if-gt v0, v1, :cond_2b

    const/16 v37, 0x0

    return v37

    :cond_2b
    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    move-result v36

    const/4 v9, 0x0

    const/16 v24, 0x0

    const/4 v4, 0x0

    :goto_15
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v12, v0

    or-int/2addr v4, v12

    sget-boolean v37, Landroid/icu/impl/coll/CollationCompare;->-assertionsDisabled:Z

    if-nez v37, :cond_2e

    and-int/lit16 v0, v12, 0x3f3f

    move/from16 v37, v0

    if-nez v37, :cond_2c

    const v37, 0xc0c0

    and-int v37, v37, v12

    if-nez v37, :cond_2d

    :cond_2c
    const/16 v37, 0x1

    :goto_16
    if-nez v37, :cond_2e

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    :cond_2d
    const/16 v37, 0x0

    goto :goto_16

    :cond_2e
    and-int v19, v12, v36

    if-nez v19, :cond_30

    move v9, v10

    goto :goto_15

    :cond_2f
    and-int v34, v27, v36

    if-nez v34, :cond_33

    move/from16 v24, v25

    :cond_30
    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v27, v0

    or-int v4, v4, v27

    sget-boolean v37, Landroid/icu/impl/coll/CollationCompare;->-assertionsDisabled:Z

    if-nez v37, :cond_2f

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x3f3f

    move/from16 v37, v0

    if-nez v37, :cond_31

    const v37, 0xc0c0

    and-int v37, v37, v27

    if-nez v37, :cond_32

    :cond_31
    const/16 v37, 0x1

    :goto_17
    if-nez v37, :cond_2f

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    :cond_32
    const/16 v37, 0x0

    goto :goto_17

    :cond_33
    move/from16 v0, v19

    move/from16 v1, v34

    if-eq v0, v1, :cond_39

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    move-result v37

    if-eqz v37, :cond_35

    const/16 v37, 0x100

    move/from16 v0, v19

    move/from16 v1, v37

    if-le v0, v1, :cond_34

    const/high16 v37, -0x10000

    and-int v37, v37, v12

    if-eqz v37, :cond_36

    const v37, 0xc000

    xor-int v19, v19, v37

    :cond_34
    :goto_18
    const/16 v37, 0x100

    move/from16 v0, v34

    move/from16 v1, v37

    if-le v0, v1, :cond_35

    const/high16 v37, -0x10000

    and-int v37, v37, v27

    if-eqz v37, :cond_37

    const v37, 0xc000

    xor-int v34, v34, v37

    :cond_35
    :goto_19
    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_38

    const/16 v37, -0x1

    :goto_1a
    return v37

    :cond_36
    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x4000

    move/from16 v19, v0

    goto :goto_18

    :cond_37
    move/from16 v0, v34

    add-int/lit16 v0, v0, 0x4000

    move/from16 v34, v0

    goto :goto_19

    :cond_38
    const/16 v37, 0x1

    goto :goto_1a

    :cond_39
    const/16 v37, 0x100

    move/from16 v0, v19

    move/from16 v1, v37

    if-ne v0, v1, :cond_3a

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v37

    const/16 v40, 0x2

    move/from16 v0, v37

    move/from16 v1, v40

    if-gt v0, v1, :cond_3b

    const/16 v37, 0x0

    return v37

    :cond_3a
    move/from16 v24, v25

    move v9, v10

    goto/16 :goto_15

    :cond_3b
    if-nez v5, :cond_3c

    and-int/lit16 v0, v4, 0xc0

    move/from16 v37, v0

    if-nez v37, :cond_3c

    const/16 v37, 0x0

    return v37

    :cond_3c
    const/4 v9, 0x0

    const/16 v24, 0x0

    :goto_1b
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    const-wide/32 v40, 0xffff

    and-long v16, v6, v40

    const-wide/16 v40, 0x100

    cmp-long v37, v16, v40

    if-gtz v37, :cond_3d

    const/16 v37, 0x20

    ushr-long v16, v6, v37

    :goto_1c
    const-wide/16 v40, 0x0

    cmp-long v37, v16, v40

    if-nez v37, :cond_3e

    move v9, v10

    goto :goto_1b

    :cond_3d
    const-wide v40, 0xffffff3fL

    or-long v16, v16, v40

    goto :goto_1c

    :cond_3e
    :goto_1d
    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v6

    const-wide/32 v40, 0xffff

    and-long v30, v6, v40

    const-wide/16 v40, 0x100

    cmp-long v37, v30, v40

    if-gtz v37, :cond_3f

    const/16 v37, 0x20

    ushr-long v30, v6, v37

    :goto_1e
    const-wide/16 v40, 0x0

    cmp-long v37, v30, v40

    if-nez v37, :cond_40

    move/from16 v24, v25

    goto :goto_1d

    :cond_3f
    const-wide v40, 0xffffff3fL

    or-long v30, v30, v40

    goto :goto_1e

    :cond_40
    cmp-long v37, v16, v30

    if-eqz v37, :cond_43

    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v37

    if-eqz v37, :cond_41

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v16

    move-object/from16 v0, p2

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v30

    :cond_41
    cmp-long v37, v16, v30

    if-gez v37, :cond_42

    const/16 v37, -0x1

    :goto_1f
    return v37

    :cond_42
    const/16 v37, 0x1

    goto :goto_1f

    :cond_43
    const-wide/16 v40, 0x1

    cmp-long v37, v16, v40

    if-nez v37, :cond_44

    const/16 v37, 0x0

    return v37

    :cond_44
    move/from16 v24, v25

    move v9, v10

    goto/16 :goto_1b
.end method
