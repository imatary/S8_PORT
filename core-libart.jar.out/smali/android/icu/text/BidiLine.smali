.class final Landroid/icu/text/BidiLine;
.super Ljava/lang/Object;
.source "BidiLine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLevelAt(Landroid/icu/text/Bidi;I)B
    .locals 2

    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method static getLevels(Landroid/icu/text/Bidi;)[B
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-eq v2, v0, :cond_0

    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-byte v4, p0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v3, v2, v0, v4}, Ljava/util/Arrays;->fill([BIIB)V

    iput v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    :cond_0
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    new-array v1, v0, [B

    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    invoke-static {v3, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1

    :cond_1
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    return-object v3
.end method

.method static getLogicalIndex(Landroid/icu/text/Bidi;I)I
    .locals 21

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/Bidi;->runCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    move/from16 v19, v0

    if-lez v19, :cond_6

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    :goto_0
    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v19, v0

    sub-int v9, v19, v18

    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v6, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v19, v6, 0x5

    if-lez v19, :cond_1

    add-int v19, v18, v13

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    const/16 v19, -0x1

    return v19

    :cond_0
    add-int/lit8 v13, v13, 0x1

    :cond_1
    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    sub-int p1, p1, v13

    :cond_2
    :goto_1
    const/16 v19, 0xa

    move/from16 v0, v19

    if-gt v14, v0, :cond_d

    const/4 v5, 0x0

    :goto_2
    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    and-int/lit8 v19, v6, 0xa

    if-lez v19, :cond_5

    add-int v19, v18, v9

    add-int v19, v19, v13

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v19, -0x1

    return v19

    :cond_4
    add-int/lit8 v13, v13, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    add-int v18, v18, v9

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->controlCount:I

    move/from16 v19, v0

    if-lez v19, :cond_2

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    :goto_3
    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v19, v0

    sub-int v9, v19, v18

    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v6, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v19, v0

    sub-int v19, v19, v3

    add-int v19, v19, v6

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    sub-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    add-int v18, v18, v9

    goto :goto_3

    :cond_7
    if-nez v6, :cond_8

    add-int p1, p1, v3

    goto :goto_1

    :cond_8
    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v12, v0, Landroid/icu/text/BidiRun;->start:I

    aget-object v19, v15, v5

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v4

    add-int v19, v12, v9

    add-int/lit8 v11, v19, -0x1

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_a

    if-eqz v4, :cond_b

    add-int v8, v12, v7

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v19, v0

    aget-char v17, v19, v8

    invoke-static/range {v17 .. v17}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v19

    if-eqz v19, :cond_9

    add-int/lit8 v3, v3, 0x1

    :cond_9
    add-int v19, p1, v3

    add-int v20, v18, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    :cond_a
    add-int p1, p1, v3

    goto/16 :goto_1

    :cond_b
    sub-int v8, v11, v7

    goto :goto_5

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    move v10, v14

    :goto_6
    add-int v19, v2, v10

    ushr-int/lit8 v5, v19, 0x1

    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_e

    add-int/lit8 v2, v5, 0x1

    goto :goto_6

    :cond_e
    if-eqz v5, :cond_f

    add-int/lit8 v19, v5, -0x1

    aget-object v19, v15, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    :cond_f
    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    move/from16 v16, v0

    aget-object v19, v15, v5

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v19

    if-eqz v19, :cond_12

    if-lez v5, :cond_10

    add-int/lit8 v19, v5, -0x1

    aget-object v19, v15, v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v19, v0

    sub-int p1, p1, v19

    :cond_10
    add-int v19, v16, p1

    return v19

    :cond_11
    move v10, v5

    goto :goto_6

    :cond_12
    aget-object v19, v15, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v19, v0

    add-int v19, v19, v16

    sub-int v19, v19, p1

    add-int/lit8 v19, v19, -0x1

    return v19
.end method

.method static getLogicalMap(Landroid/icu/text/Bidi;)[I
    .locals 22

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v5, v0, [I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-static {v5, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/16 v18, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_3

    aget-object v20, v15, v7

    move-object/from16 v0, v20

    iget v11, v0, Landroid/icu/text/BidiRun;->start:I

    aget-object v20, v15, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v17, v0

    aget-object v20, v15, v7

    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v20

    if-eqz v20, :cond_1

    :goto_1
    add-int/lit8 v12, v11, 0x1

    add-int/lit8 v19, v18, 0x1

    aput v18, v5, v11

    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    move/from16 v18, v19

    move v11, v12

    goto :goto_1

    :cond_1
    sub-int v20, v17, v18

    add-int v11, v11, v20

    :goto_2
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v19, v18, 0x1

    aput v18, v5, v11

    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    move/from16 v18, v19

    goto :goto_2

    :cond_2
    move/from16 v18, v19

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    move/from16 v20, v0

    if-lez v20, :cond_7

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/Bidi;->runCount:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/16 v18, 0x0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v14, :cond_d

    aget-object v20, v15, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v20, v0

    sub-int v9, v20, v18

    aget-object v20, v15, v4

    move-object/from16 v0, v20

    iget v6, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v20, v6, 0x5

    if-lez v20, :cond_4

    add-int/lit8 v13, v13, 0x1

    :cond_4
    if-lez v13, :cond_5

    aget-object v20, v15, v4

    move-object/from16 v0, v20

    iget v11, v0, Landroid/icu/text/BidiRun;->start:I

    add-int v10, v11, v9

    move v7, v11

    :goto_5
    if-ge v7, v10, :cond_5

    aget v20, v5, v7

    add-int v20, v20, v13

    aput v20, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    and-int/lit8 v20, v6, 0xa

    if-lez v20, :cond_6

    add-int/lit8 v13, v13, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    add-int v18, v18, v9

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->controlCount:I

    move/from16 v20, v0

    if-lez v20, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/Bidi;->runCount:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/16 v18, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v14, :cond_d

    aget-object v20, v15, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v20, v0

    sub-int v9, v20, v18

    aget-object v20, v15, v4

    move-object/from16 v0, v20

    iget v6, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    sub-int v20, v2, v6

    if-nez v20, :cond_9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    add-int v18, v18, v9

    goto :goto_6

    :cond_9
    aget-object v20, v15, v4

    move-object/from16 v0, v20

    iget v11, v0, Landroid/icu/text/BidiRun;->start:I

    aget-object v20, v15, v4

    invoke-virtual/range {v20 .. v20}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v3

    add-int v10, v11, v9

    if-nez v6, :cond_a

    move v7, v11

    :goto_7
    if-ge v7, v10, :cond_8

    aget v20, v5, v7

    sub-int v20, v20, v2

    aput v20, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v9, :cond_8

    if-eqz v3, :cond_b

    add-int v8, v11, v7

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v20, v0

    aget-char v16, v20, v8

    invoke-static/range {v16 .. v16}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v20

    if-eqz v20, :cond_c

    add-int/lit8 v2, v2, 0x1

    const/16 v20, -0x1

    aput v20, v5, v8

    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_b
    sub-int v20, v10, v7

    add-int/lit8 v8, v20, -0x1

    goto :goto_9

    :cond_c
    aget v20, v5, v8

    sub-int v20, v20, v2

    aput v20, v5, v8

    goto :goto_a

    :cond_d
    return-object v5

    :cond_e
    move/from16 v18, v19

    move v11, v12

    goto/16 :goto_3
.end method

.method static getLogicalRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;
    .locals 8

    new-instance v3, Landroid/icu/text/BidiRun;

    invoke-direct {v3}, Landroid/icu/text/BidiRun;-><init>()V

    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    iget v4, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v7, 0x0

    aget-object v1, v6, v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v6, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v1, v6, v0

    iget v6, v1, Landroid/icu/text/BidiRun;->start:I

    iget v7, v1, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v6, v7

    sub-int v2, v6, v5

    iget v6, v1, Landroid/icu/text/BidiRun;->start:I

    if-lt p1, v6, :cond_1

    if-ge p1, v2, :cond_1

    :cond_0
    iget v6, v1, Landroid/icu/text/BidiRun;->start:I

    iput v6, v3, Landroid/icu/text/BidiRun;->start:I

    iput v2, v3, Landroid/icu/text/BidiRun;->limit:I

    iget-byte v6, v1, Landroid/icu/text/BidiRun;->level:B

    iput-byte v6, v3, Landroid/icu/text/BidiRun;->level:B

    return-object v3

    :cond_1
    iget v5, v1, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I
    .locals 8

    iget-object v4, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget v3, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v6, v4, v0

    iget v6, v6, Landroid/icu/text/BidiRun;->limit:I

    sub-int v1, v6, v5

    aget-object v6, v4, v0

    iget v2, v6, Landroid/icu/text/BidiRun;->start:I

    if-lt p1, v2, :cond_0

    add-int v6, v2, v1

    if-ge p1, v6, :cond_0

    return v0

    :cond_0
    add-int/2addr v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Internal ICU error in getRunFromLogicalIndex"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static getRuns(Landroid/icu/text/Bidi;)V
    .locals 22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v19, v0

    if-ltz v19, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->direction:B

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/icu/text/BidiLine;->getSingleRun(Landroid/icu/text/Bidi;B)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    move/from16 v19, v0

    if-lez v19, :cond_e

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    move-object/from16 v19, v0

    aget-object v13, v19, v6

    iget v0, v13, Landroid/icu/text/Bidi$Point;->pos:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/icu/text/BidiLine;->getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v19, v0

    aget-object v19, v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    move/from16 v20, v0

    iget v0, v13, Landroid/icu/text/Bidi$Point;->flag:I

    move/from16 v21, v0

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/icu/text/BidiRun;->insertRemove:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Landroid/icu/text/Bidi;->length:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/icu/text/Bidi;->levels:[B

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    const/4 v14, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_4

    aget-byte v19, v9, v4

    move/from16 v0, v19

    if-eq v0, v8, :cond_3

    add-int/lit8 v14, v14, 0x1

    aget-byte v8, v9, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_5

    if-ne v10, v7, :cond_5

    const/16 v19, 0x0

    aget-byte v19, v9, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/icu/text/BidiLine;->getSingleRun(Landroid/icu/text/Bidi;B)V

    goto/16 :goto_0

    :cond_5
    const/16 v12, 0x7e

    const/4 v11, 0x0

    if-ge v10, v7, :cond_6

    add-int/lit8 v14, v14, 0x1

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/icu/text/Bidi;->getRunsMemory(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    const/4 v4, 0x0

    :cond_7
    move/from16 v17, v4

    aget-byte v8, v9, v4

    if-ge v8, v12, :cond_8

    move v12, v8

    :cond_8
    if-le v8, v11, :cond_9

    move v11, v8

    :cond_9
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v10, :cond_a

    aget-byte v19, v9, v4

    move/from16 v0, v19

    if-eq v0, v8, :cond_9

    :cond_a
    new-instance v19, Landroid/icu/text/BidiRun;

    sub-int v20, v4, v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v8}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v19, v16, v15

    add-int/lit8 v15, v15, 0x1

    if-lt v4, v10, :cond_7

    if-ge v10, v7, :cond_b

    new-instance v19, Landroid/icu/text/BidiRun;

    sub-int v20, v7, v10

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v10, v1, v2}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v19, v16, v15

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v12, :cond_b

    move-object/from16 v0, p0

    iget-byte v12, v0, Landroid/icu/text/Bidi;->paraLevel:B

    :cond_b
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/text/Bidi;->runCount:I

    move-object/from16 v0, p0

    invoke-static {v0, v12, v11}, Landroid/icu/text/BidiLine;->reorderLine(Landroid/icu/text/Bidi;BB)V

    const/4 v10, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v14, :cond_c

    aget-object v19, v16, v4

    aget-object v20, v16, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    move/from16 v20, v0

    aget-byte v20, v9, v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    aget-object v19, v16, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v20, v0

    add-int v10, v10, v20

    move-object/from16 v0, v19

    iput v10, v0, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    if-ge v15, v14, :cond_1

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_d

    const/16 v18, 0x0

    :goto_4
    aget-object v19, v16, v18

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    goto/16 :goto_0

    :cond_d
    move/from16 v18, v15

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->controlCount:I

    move/from16 v19, v0

    if-lez v19, :cond_10

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v19, v0

    aget-char v3, v19, v5

    invoke-static {v3}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/icu/text/BidiLine;->getRunFromLogicalIndex(Landroid/icu/text/Bidi;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v19, v0

    aget-object v19, v19, v15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/icu/text/BidiRun;->insertRemove:I

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method

.method static getSingleRun(Landroid/icu/text/Bidi;B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/icu/text/Bidi;->simpleRuns:[Landroid/icu/text/BidiRun;

    iput-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/Bidi;->runCount:I

    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    new-instance v1, Landroid/icu/text/BidiRun;

    iget v2, p0, Landroid/icu/text/Bidi;->length:I

    invoke-direct {v1, v3, v2, p1}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v1, v0, v3

    return-void
.end method

.method static getVisualIndex(Landroid/icu/text/Bidi;I)I
    .locals 14

    const/4 v11, -0x1

    iget-byte v13, p0, Landroid/icu/text/Bidi;->direction:B

    packed-switch v13, :pswitch_data_0

    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    iget-object v8, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v12, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v13, p0, Landroid/icu/text/Bidi;->runCount:I

    if-ge v1, v13, :cond_0

    aget-object v13, v8, v1

    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    sub-int v4, v13, v12

    aget-object v13, v8, v1

    iget v13, v13, Landroid/icu/text/BidiRun;->start:I

    sub-int v7, p1, v13

    if-ltz v7, :cond_4

    if-ge v7, v4, :cond_4

    aget-object v13, v8, v1

    invoke-virtual {v13}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v13

    if-eqz v13, :cond_3

    add-int v11, v12, v7

    :cond_0
    :goto_1
    iget v13, p0, Landroid/icu/text/Bidi;->runCount:I

    if-lt v1, v13, :cond_1

    const/4 v13, -0x1

    return v13

    :pswitch_0
    move v11, p1

    :cond_1
    :goto_2
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lez v13, :cond_7

    iget-object v8, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_3
    aget-object v13, v8, v1

    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    sub-int v4, v13, v12

    aget-object v13, v8, v1

    iget v2, v13, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v13, v2, 0x5

    if-lez v13, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    aget-object v13, v8, v1

    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    if-ge v11, v13, :cond_5

    add-int v13, v11, v6

    return v13

    :pswitch_1
    iget v13, p0, Landroid/icu/text/Bidi;->length:I

    sub-int/2addr v13, p1

    add-int/lit8 v11, v13, -0x1

    goto :goto_2

    :cond_3
    add-int v13, v12, v4

    sub-int/2addr v13, v7

    add-int/lit8 v11, v13, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr v12, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    and-int/lit8 v13, v2, 0xa

    if-lez v13, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v12, v4

    goto :goto_3

    :cond_7
    iget v13, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v13, :cond_e

    iget-object v8, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v12, 0x0

    const/4 v0, 0x0

    iget-object v13, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v10, v13, p1

    invoke-static {v10}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, -0x1

    return v13

    :cond_8
    const/4 v1, 0x0

    :goto_4
    aget-object v13, v8, v1

    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    sub-int v4, v13, v12

    aget-object v13, v8, v1

    iget v2, v13, Landroid/icu/text/BidiRun;->insertRemove:I

    aget-object v13, v8, v1

    iget v13, v13, Landroid/icu/text/BidiRun;->limit:I

    if-lt v11, v13, :cond_9

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v12, v4

    goto :goto_4

    :cond_9
    if-nez v2, :cond_a

    sub-int v13, v11, v0

    return v13

    :cond_a
    aget-object v13, v8, v1

    invoke-virtual {v13}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v13

    if-eqz v13, :cond_c

    aget-object v13, v8, v1

    iget v9, v13, Landroid/icu/text/BidiRun;->start:I

    move v5, p1

    :goto_5
    move v3, v9

    :goto_6
    if-ge v3, v5, :cond_d

    iget-object v13, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v10, v13, v3

    invoke-static {v10}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v13

    if-eqz v13, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v9, p1, 0x1

    aget-object v13, v8, v1

    iget v13, v13, Landroid/icu/text/BidiRun;->start:I

    add-int v5, v13, v4

    goto :goto_5

    :cond_d
    sub-int v13, v11, v0

    return v13

    :cond_e
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getVisualMap(Landroid/icu/text/Bidi;)[I
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/Bidi;->length:I

    :goto_0
    new-array v9, v4, [I

    const/16 v25, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v11, v0, :cond_3

    aget-object v26, v22, v11

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    move/from16 v16, v0

    aget-object v26, v22, v11

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v24, v0

    aget-object v26, v22, v11

    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v26

    if-eqz v26, :cond_1

    :goto_2
    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v17, v16, 0x1

    aput v16, v9, v7

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_14

    move v7, v8

    move/from16 v16, v17

    goto :goto_2

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/Bidi;->resultLength:I

    goto :goto_0

    :cond_1
    sub-int v26, v24, v25

    add-int v16, v16, v26

    :goto_3
    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v16, v16, -0x1

    aput v16, v9, v7

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    move v7, v8

    goto :goto_3

    :cond_2
    move v7, v8

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    move/from16 v26, v0

    if-lez v26, :cond_b

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v22, v0

    const/4 v6, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v6, v0, :cond_6

    aget-object v26, v22, v6

    move-object/from16 v0, v26

    iget v10, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v26, v10, 0x5

    if-lez v26, :cond_4

    add-int/lit8 v19, v19, 0x1

    :cond_4
    and-int/lit8 v26, v10, 0xa

    if-lez v26, :cond_5

    add-int/lit8 v19, v19, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/text/Bidi;->resultLength:I

    add-int/lit8 v6, v21, -0x1

    :goto_6
    if-ltz v6, :cond_10

    if-lez v19, :cond_10

    aget-object v26, v22, v6

    move-object/from16 v0, v26

    iget v10, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v26, v10, 0xa

    if-lez v26, :cond_7

    add-int/lit8 v12, v12, -0x1

    const/16 v26, -0x1

    aput v26, v9, v12

    add-int/lit8 v19, v19, -0x1

    :cond_7
    if-lez v6, :cond_8

    add-int/lit8 v26, v6, -0x1

    aget-object v26, v22, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v25, v0

    :goto_7
    aget-object v26, v22, v6

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v26, v0

    add-int/lit8 v11, v26, -0x1

    :goto_8
    move/from16 v0, v25

    if-lt v11, v0, :cond_9

    if-lez v19, :cond_9

    add-int/lit8 v12, v12, -0x1

    aget v26, v9, v11

    aput v26, v9, v12

    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    :cond_8
    const/16 v25, 0x0

    goto :goto_7

    :cond_9
    and-int/lit8 v26, v10, 0x5

    if-lez v26, :cond_a

    add-int/lit8 v12, v12, -0x1

    const/16 v26, -0x1

    aput v26, v9, v12

    add-int/lit8 v19, v19, -0x1

    :cond_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->controlCount:I

    move/from16 v26, v0

    if-lez v26, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v6, v0, :cond_10

    aget-object v26, v22, v6

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v26, v0

    sub-int v14, v26, v25

    aget-object v26, v22, v6

    move-object/from16 v0, v26

    iget v10, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    if-nez v10, :cond_c

    move/from16 v0, v25

    if-ne v12, v0, :cond_c

    add-int/2addr v12, v14

    :goto_a
    add-int/lit8 v6, v6, 0x1

    add-int v25, v25, v14

    goto :goto_9

    :cond_c
    if-nez v10, :cond_e

    aget-object v26, v22, v6

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v24, v0

    move/from16 v11, v25

    move v13, v12

    :goto_b
    move/from16 v0, v24

    if-ge v11, v0, :cond_d

    add-int/lit8 v12, v13, 0x1

    aget v26, v9, v11

    aput v26, v9, v13

    add-int/lit8 v11, v11, 0x1

    move v13, v12

    goto :goto_b

    :cond_d
    move v12, v13

    goto :goto_a

    :cond_e
    aget-object v26, v22, v6

    move-object/from16 v0, v26

    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    move/from16 v16, v0

    aget-object v26, v22, v6

    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v5

    add-int v26, v16, v14

    add-int/lit8 v15, v26, -0x1

    const/4 v11, 0x0

    move v13, v12

    :goto_c
    if-ge v11, v14, :cond_13

    if-eqz v5, :cond_f

    add-int v18, v16, v11

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v26, v0

    aget-char v23, v26, v18

    invoke-static/range {v23 .. v23}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v26

    if-nez v26, :cond_12

    add-int/lit8 v12, v13, 0x1

    aput v18, v9, v13

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    goto :goto_c

    :cond_f
    sub-int v18, v15, v11

    goto :goto_d

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v4, v0, :cond_11

    return-object v9

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->resultLength:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v26

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v20

    :cond_12
    move v12, v13

    goto :goto_e

    :cond_13
    move v12, v13

    goto/16 :goto_a

    :cond_14
    move v7, v8

    move/from16 v16, v17

    goto/16 :goto_4
.end method

.method static getVisualRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, p1

    iget v2, v3, Landroid/icu/text/BidiRun;->start:I

    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, p1

    iget-byte v0, v3, Landroid/icu/text/BidiRun;->level:B

    if-lez p1, :cond_0

    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, p1

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    add-int/2addr v3, v2

    iget-object v4, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/icu/text/BidiRun;->limit:I

    sub-int v1, v3, v4

    :goto_0
    new-instance v3, Landroid/icu/text/BidiRun;

    invoke-direct {v3, v2, v1, v0}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    return-object v3

    :cond_0
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v4

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    add-int v1, v2, v3

    goto :goto_0
.end method

.method static invertMap([I)[I
    .locals 7

    array-length v5, p0

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget v4, p0, v3

    if-le v4, v1, :cond_0

    move v1, v4

    :cond_0
    if-ltz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [I

    if-ge v0, v1, :cond_3

    const/4 v6, -0x1

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([II)V

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_5

    aget v4, p0, v3

    if-ltz v4, :cond_4

    aput v3, v2, v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method static prepareReorder([B[B[B)[I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    array-length v5, p0

    if-gtz v5, :cond_1

    :cond_0
    return-object v7

    :cond_1
    const/16 v3, 0x7e

    const/4 v2, 0x0

    array-length v4, p0

    :cond_2
    :goto_0
    if-lez v4, :cond_6

    add-int/lit8 v4, v4, -0x1

    aget-byte v1, p0, v4

    if-gez v1, :cond_3

    return-object v7

    :cond_3
    const/16 v5, 0x7e

    if-le v1, v5, :cond_4

    return-object v7

    :cond_4
    if-ge v1, v3, :cond_5

    move v3, v1

    :cond_5
    if-le v1, v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_6
    aput-byte v3, p1, v6

    aput-byte v2, p2, v6

    array-length v5, p0

    new-array v0, v5, [I

    array-length v4, p0

    :goto_1
    if-lez v4, :cond_7

    add-int/lit8 v4, v4, -0x1

    aput v4, v0, v4

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private static reorderLine(Landroid/icu/text/Bidi;BB)V
    .locals 9

    or-int/lit8 v7, p1, 0x1

    if-gt p2, v7, :cond_0

    return-void

    :cond_0
    add-int/lit8 v7, p1, 0x1

    int-to-byte p1, v7

    iget-object v5, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    iget v4, p0, Landroid/icu/text/Bidi;->runCount:I

    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    iget v8, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v7, v8, :cond_1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    add-int/lit8 v7, p2, -0x1

    int-to-byte p2, v7

    if-lt p2, p1, :cond_6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v7, v5, v1

    iget v7, v7, Landroid/icu/text/BidiRun;->start:I

    aget-byte v7, v2, v7

    if-ge v7, p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v4, :cond_1

    move v3, v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v4, :cond_4

    aget-object v7, v5, v3

    iget v7, v7, Landroid/icu/text/BidiRun;->start:I

    aget-byte v7, v2, v7

    if-ge v7, p2, :cond_3

    :cond_4
    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v6, v5, v1

    aget-object v7, v5, v0

    aput-object v7, v5, v1

    aput-object v6, v5, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    if-eq v3, v4, :cond_1

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_6
    and-int/lit8 v7, p1, 0x1

    if-nez v7, :cond_8

    const/4 v1, 0x0

    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    iget v8, p0, Landroid/icu/text/Bidi;->length:I

    if-ne v7, v8, :cond_7

    add-int/lit8 v4, v4, -0x1

    :cond_7
    :goto_2
    if-ge v1, v4, :cond_8

    aget-object v6, v5, v1

    aget-object v7, v5, v4

    aput-object v7, v5, v1

    aput-object v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method static reorderLogical([B)[I
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v1, v9, [B

    new-array v0, v9, [B

    invoke-static {p0, v1, v0}, Landroid/icu/text/BidiLine;->prepareReorder([B[B[B)[I

    move-result-object v2

    if-nez v2, :cond_0

    return-object v10

    :cond_0
    aget-byte v5, v1, v8

    aget-byte v4, v0, v8

    if-ne v5, v4, :cond_1

    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_1

    return-object v2

    :cond_1
    or-int/lit8 v8, v5, 0x1

    int-to-byte v5, v8

    :cond_2
    const/4 v6, 0x0

    :goto_0
    array-length v8, p0

    if-ge v6, v8, :cond_3

    aget-byte v8, p0, v6

    if-ge v8, v4, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    array-length v8, p0

    if-lt v6, v8, :cond_5

    :cond_4
    add-int/lit8 v8, v4, -0x1

    int-to-byte v4, v8

    if-ge v4, v5, :cond_2

    return-object v2

    :cond_5
    move v3, v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    array-length v8, p0

    if-ge v3, v8, :cond_7

    aget-byte v8, p0, v3

    if-ge v8, v4, :cond_6

    :cond_7
    add-int v8, v6, v3

    add-int/lit8 v7, v8, -0x1

    :cond_8
    aget v8, v2, v6

    sub-int v8, v7, v8

    aput v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_8

    array-length v8, p0

    if-eq v3, v8, :cond_4

    add-int/lit8 v6, v3, 0x1

    goto :goto_0
.end method

.method static reorderVisual([B)[I
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-array v1, v10, [B

    new-array v0, v10, [B

    invoke-static {p0, v1, v0}, Landroid/icu/text/BidiLine;->prepareReorder([B[B[B)[I

    move-result-object v3

    if-nez v3, :cond_0

    return-object v11

    :cond_0
    aget-byte v6, v1, v9

    aget-byte v5, v0, v9

    if-ne v6, v5, :cond_1

    and-int/lit8 v9, v6, 0x1

    if-nez v9, :cond_1

    return-object v3

    :cond_1
    or-int/lit8 v9, v6, 0x1

    int-to-byte v6, v9

    :cond_2
    const/4 v7, 0x0

    :goto_0
    array-length v9, p0

    if-ge v7, v9, :cond_3

    aget-byte v9, p0, v7

    if-ge v9, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    array-length v9, p0

    if-lt v7, v9, :cond_5

    :cond_4
    add-int/lit8 v9, v5, -0x1

    int-to-byte v5, v9

    if-ge v5, v6, :cond_2

    return-object v3

    :cond_5
    move v4, v7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    array-length v9, p0

    if-ge v4, v9, :cond_7

    aget-byte v9, p0, v4

    if-ge v9, v5, :cond_6

    :cond_7
    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ge v7, v2, :cond_8

    aget v8, v3, v7

    aget v9, v3, v2

    aput v9, v3, v7

    aput v8, v3, v2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_8
    array-length v9, p0

    if-eq v4, v9, :cond_4

    add-int/lit8 v7, v4, 0x1

    goto :goto_0
.end method

.method static setLine(Landroid/icu/text/Bidi;II)Landroid/icu/text/Bidi;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    new-instance v5, Landroid/icu/text/Bidi;

    invoke-direct {v5}, Landroid/icu/text/Bidi;-><init>()V

    sub-int v2, p2, p1

    iput v2, v5, Landroid/icu/text/Bidi;->resultLength:I

    iput v2, v5, Landroid/icu/text/Bidi;->originalLength:I

    iput v2, v5, Landroid/icu/text/Bidi;->length:I

    new-array v7, v2, [C

    iput-object v7, v5, Landroid/icu/text/Bidi;->text:[C

    iget-object v7, p0, Landroid/icu/text/Bidi;->text:[C

    iget-object v8, v5, Landroid/icu/text/Bidi;->text:[C

    invoke-static {v7, p1, v8, v9, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v7

    iput-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    iget v7, p0, Landroid/icu/text/Bidi;->paraCount:I

    iput v7, v5, Landroid/icu/text/Bidi;->paraCount:I

    new-array v7, v9, [Landroid/icu/text/BidiRun;

    iput-object v7, v5, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget v7, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    iput v7, v5, Landroid/icu/text/Bidi;->reorderingMode:I

    iget v7, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    iput v7, v5, Landroid/icu/text/Bidi;->reorderingOptions:I

    iget v7, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-lez v7, :cond_2

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v7, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v7, v7, v1

    invoke-static {v7}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v5, Landroid/icu/text/Bidi;->controlCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/icu/text/Bidi;->controlCount:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v7, v5, Landroid/icu/text/Bidi;->resultLength:I

    iget v8, v5, Landroid/icu/text/Bidi;->controlCount:I

    sub-int/2addr v7, v8

    iput v7, v5, Landroid/icu/text/Bidi;->resultLength:I

    :cond_2
    invoke-virtual {v5, v2}, Landroid/icu/text/Bidi;->getDirPropsMemory(I)V

    iget-object v7, v5, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    iput-object v7, v5, Landroid/icu/text/Bidi;->dirProps:[B

    iget-object v7, p0, Landroid/icu/text/Bidi;->dirProps:[B

    iget-object v8, v5, Landroid/icu/text/Bidi;->dirProps:[B

    invoke-static {v7, p1, v8, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v5, v2}, Landroid/icu/text/Bidi;->getLevelsMemory(I)V

    iget-object v7, v5, Landroid/icu/text/Bidi;->levelsMemory:[B

    iput-object v7, v5, Landroid/icu/text/Bidi;->levels:[B

    iget-object v7, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-object v8, v5, Landroid/icu/text/Bidi;->levels:[B

    invoke-static {v7, p1, v8, v9, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v7, -0x1

    iput v7, v5, Landroid/icu/text/Bidi;->runCount:I

    iget-byte v7, p0, Landroid/icu/text/Bidi;->direction:B

    if-eq v7, v10, :cond_5

    iget-byte v7, p0, Landroid/icu/text/Bidi;->direction:B

    iput-byte v7, v5, Landroid/icu/text/Bidi;->direction:B

    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-gt v7, p1, :cond_3

    iput v9, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    :goto_1
    iput-object p0, v5, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    return-object v5

    :cond_3
    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-ge v7, p2, :cond_4

    iget v7, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    sub-int/2addr v7, p1

    iput v7, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_1

    :cond_4
    iput v2, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_1

    :cond_5
    iget-object v4, v5, Landroid/icu/text/Bidi;->levels:[B

    invoke-static {v5}, Landroid/icu/text/BidiLine;->setTrailingWSStart(Landroid/icu/text/Bidi;)V

    iget v6, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-nez v6, :cond_6

    iget-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    iput-byte v7, v5, Landroid/icu/text/Bidi;->direction:B

    :goto_2
    iget-byte v7, v5, Landroid/icu/text/Bidi;->direction:B

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    add-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, -0x2

    int-to-byte v7, v7

    iput-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    iput v9, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_1

    :cond_6
    aget-byte v7, v4, v9

    and-int/lit8 v7, v7, 0x1

    int-to-byte v3, v7

    if-ge v6, v2, :cond_7

    iget-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v7, v7, 0x1

    if-eq v7, v3, :cond_7

    iput-byte v10, v5, Landroid/icu/text/Bidi;->direction:B

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    :goto_3
    if-ne v0, v6, :cond_8

    iput-byte v3, v5, Landroid/icu/text/Bidi;->direction:B

    goto :goto_2

    :cond_8
    aget-byte v7, v4, v0

    and-int/lit8 v7, v7, 0x1

    if-eq v7, v3, :cond_9

    iput-byte v10, v5, Landroid/icu/text/Bidi;->direction:B

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_1
    iget-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    iput-byte v7, v5, Landroid/icu/text/Bidi;->paraLevel:B

    iput v9, v5, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static setTrailingWSStart(Landroid/icu/text/Bidi;)V
    .locals 6

    iget-object v0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    iget v3, p0, Landroid/icu/text/Bidi;->length:I

    iget-byte v2, p0, Landroid/icu/text/Bidi;->paraLevel:B

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, v0, v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    iput v3, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    return-void

    :cond_0
    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, v0, v4

    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    sget v5, Landroid/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v3, :cond_2

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, v1, v4

    if-ne v4, v2, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    return-void
.end method
