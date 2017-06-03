.class public Landroid/icu/impl/duration/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/impl/Utils$ChineseDigits;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;
    .locals 24

    const-wide/16 v22, 0x0

    cmp-long v21, p0, v22

    if-gez v21, :cond_0

    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    :cond_0
    const-wide/16 v22, 0xa

    cmp-long v21, p0, v22

    if-gtz v21, :cond_2

    const-wide/16 v22, 0x2

    cmp-long v21, p0, v22

    if-nez v21, :cond_1

    move-object/from16 v0, p2

    iget-char v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    return-object v21

    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    move-object/from16 v21, v0

    move-wide/from16 v0, p0

    long-to-int v0, v0

    move/from16 v22, v0

    aget-char v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    return-object v21

    :cond_2
    const/16 v21, 0x28

    move/from16 v0, v21

    new-array v4, v0, [C

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v11, 0x1

    const/4 v9, 0x0

    array-length v0, v4

    move/from16 v20, v0

    array-length v10, v6

    const/16 v16, -0x1

    const/4 v13, -0x1

    move/from16 v17, v16

    :goto_0
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_b

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_3

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    move-object/from16 v21, v0

    aget-char v21, v21, v13

    aput-char v21, v4, v20

    const/4 v11, 0x1

    const/4 v9, 0x0

    :cond_3
    add-int/lit8 v16, v17, 0x1

    :cond_4
    :goto_1
    aget-char v21, v6, v10

    add-int/lit8 v5, v21, -0x30

    if-nez v5, :cond_a

    array-length v0, v4

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    if-eqz v16, :cond_5

    const/16 v21, 0x2a

    aput-char v21, v4, v20

    :cond_5
    if-nez v11, :cond_6

    if-eqz v9, :cond_8

    :cond_6
    add-int/lit8 v20, v20, -0x1

    const/16 v21, 0x2a

    aput-char v21, v4, v20

    :goto_2
    move/from16 v17, v16

    goto :goto_0

    :cond_7
    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    move-object/from16 v21, v0

    add-int/lit8 v16, v17, 0x1

    aget-char v21, v21, v17

    aput-char v21, v4, v20

    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v16, -0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-char v21, v21, v22

    aput-char v21, v4, v20

    const/4 v11, 0x1

    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    const/4 v9, 0x1

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    :cond_a
    const/4 v11, 0x0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    move-object/from16 v21, v0

    aget-char v21, v21, v5

    aput-char v21, v4, v20

    goto :goto_2

    :cond_b
    const-wide/32 v22, 0xf4240

    cmp-long v21, p0, v22

    if-lez v21, :cond_12

    const/4 v14, 0x1

    array-length v0, v4

    move/from16 v21, v0

    add-int/lit8 v10, v21, -0x3

    :goto_3
    aget-char v21, v4, v10

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    :cond_c
    array-length v0, v4

    move/from16 v21, v0

    add-int/lit8 v10, v21, -0x7

    :cond_d
    aget-char v21, v4, v10

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-char v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    if-eqz v14, :cond_16

    :cond_e
    :goto_4
    add-int/lit8 v10, v10, -0x8

    if-eqz v14, :cond_17

    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v20

    if-gt v10, v0, :cond_d

    const-wide/32 v22, 0x5f5e100

    cmp-long v21, p0, v22

    if-ltz v21, :cond_12

    array-length v0, v4

    move/from16 v21, v0

    add-int/lit8 v10, v21, -0x8

    :cond_f
    const/4 v8, 0x1

    add-int/lit8 v12, v10, -0x1

    add-int/lit8 v21, v20, -0x1

    add-int/lit8 v22, v10, -0x8

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_6
    if-le v12, v7, :cond_10

    aget-char v21, v4, v12

    const/16 v22, 0x2a

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_18

    const/4 v8, 0x0

    :cond_10
    if-eqz v8, :cond_11

    add-int/lit8 v21, v10, 0x1

    aget-char v21, v4, v21

    const/16 v22, 0x2a

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_19

    add-int/lit8 v21, v10, 0x1

    aget-char v21, v4, v21

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-char v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-char v21, v21, v22

    aput-char v21, v4, v10

    :cond_11
    :goto_7
    add-int/lit8 v10, v10, -0x8

    move/from16 v0, v20

    if-gt v10, v0, :cond_f

    :cond_12
    move/from16 v10, v20

    :goto_8
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_1d

    aget-char v21, v4, v10

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget-char v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1a

    :cond_13
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_14
    add-int/lit8 v10, v10, -0x8

    if-eqz v14, :cond_15

    const/4 v14, 0x0

    :goto_a
    move/from16 v0, v20

    if-le v10, v0, :cond_c

    goto/16 :goto_3

    :cond_15
    const/4 v14, 0x1

    goto :goto_a

    :cond_16
    const/16 v21, 0x2a

    aput-char v21, v4, v10

    goto/16 :goto_4

    :cond_17
    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_18
    add-int/lit8 v12, v12, -0x1

    goto :goto_6

    :cond_19
    const/16 v21, 0x2a

    aput-char v21, v4, v10

    goto :goto_7

    :cond_1a
    array-length v0, v4

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v10, v0, :cond_1b

    add-int/lit8 v21, v10, 0x1

    aget-char v21, v4, v21

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-char v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    :cond_1b
    move/from16 v0, v20

    if-le v10, v0, :cond_1c

    add-int/lit8 v21, v10, -0x1

    aget-char v21, v4, v21

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-char v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    add-int/lit8 v21, v10, -0x1

    aget-char v21, v4, v21

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-char v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    add-int/lit8 v21, v10, -0x1

    aget-char v21, v4, v21

    const/16 v22, 0x2a

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    :cond_1c
    move-object/from16 v0, p2

    iget-char v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    move/from16 v21, v0

    aput-char v21, v4, v10

    goto :goto_9

    :cond_1d
    aget-char v21, v4, v20

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-char v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    move/from16 v21, v0

    if-nez v21, :cond_1e

    add-int/lit8 v21, v20, 0x1

    aget-char v21, v4, v21

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-char v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    :cond_1e
    add-int/lit8 v20, v20, 0x1

    :cond_1f
    move/from16 v18, v20

    move/from16 v15, v20

    :goto_b
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_21

    aget-char v21, v4, v15

    const/16 v22, 0x2a

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_20

    add-int/lit8 v19, v18, 0x1

    aget-char v21, v4, v15

    aput-char v21, v4, v18

    move/from16 v18, v19

    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_21
    new-instance v21, Ljava/lang/String;

    sub-int v22, v18, v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v21
.end method

.method public static final localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v4, "_"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
