.class final Landroid/icu/text/BidiWriter;
.super Ljava/lang/Object;
.source "BidiWriter.java"


# static fields
.field static final LRM_CHAR:C = '\u200e'

.field static final MASK_R_AL:I = 0x2002

.field static final RLM_CHAR:C = '\u200f'


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsCombining(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    shl-int v2, v0, p0

    and-int/lit16 v2, v2, 0x1c0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static doWriteForward(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    and-int/lit8 v6, p1, 0xa

    sparse-switch v6, :sswitch_data_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x0

    :cond_0
    invoke-static {p0, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v1}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v6

    invoke-static {v2, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :sswitch_0
    return-object p0

    :sswitch_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x0

    :cond_2
    invoke-static {p0, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v6

    invoke-static {v2, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private static doWriteForward([CIII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, p3}, Landroid/icu/text/BidiWriter;->doWriteForward(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static doWriteReverse([CIII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, p3}, Landroid/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static writeReordered(Landroid/icu/text/Bidi;I)Ljava/lang/String;
    .locals 14

    const/16 v13, 0x200f

    const/16 v12, 0x200e

    const/16 v11, 0x2002

    iget-object v6, p0, Landroid/icu/text/Bidi;->text:[C

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v5

    iget v8, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, -0x9

    :cond_0
    iget v8, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    or-int/lit8 p1, p1, 0x8

    and-int/lit8 p1, p1, -0x5

    :cond_1
    iget v8, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_2

    iget v8, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_2

    iget v8, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_2

    iget v8, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    and-int/lit8 p1, p1, -0x5

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_3

    iget v8, p0, Landroid/icu/text/Bidi;->length:I

    mul-int/lit8 v8, v8, 0x2

    :goto_0
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v8, p1, 0x10

    if-nez v8, :cond_18

    and-int/lit8 v8, p1, 0x4

    if-nez v8, :cond_5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1f

    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v10, p1, -0x3

    invoke-static {v6, v8, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget v8, p0, Landroid/icu/text/Bidi;->length:I

    goto :goto_0

    :cond_4
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v6, v8, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_1f

    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v8, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v8, v8, v4

    iget v3, v8, Landroid/icu/text/BidiRun;->insertRemove:I

    if-gez v3, :cond_6

    const/4 v3, 0x0

    :cond_6
    invoke-virtual {v0}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    aget-byte v8, v2, v8

    if-eqz v8, :cond_7

    or-int/lit8 v3, v3, 0x1

    :cond_7
    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_b

    const/16 v7, 0x200e

    :goto_4
    if-eqz v7, :cond_8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v10, p1, -0x3

    invoke-static {v6, v8, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, v0, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v2, v8

    if-eqz v8, :cond_9

    or-int/lit8 v3, v3, 0x2

    :cond_9
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_d

    const/16 v7, 0x200e

    :goto_5
    if-eqz v7, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_c

    const/16 v7, 0x200f

    goto :goto_4

    :cond_c
    const/4 v7, 0x0

    goto :goto_4

    :cond_d
    and-int/lit8 v8, v3, 0x8

    if-eqz v8, :cond_e

    const/16 v7, 0x200f

    goto :goto_5

    :cond_e
    const/4 v7, 0x0

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v8

    if-eqz v8, :cond_10

    iget v8, v0, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v11, v8}, Landroid/icu/text/Bidi;->testDirPropFlagAt(II)Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_10
    :goto_7
    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_14

    const/16 v7, 0x200e

    :goto_8
    if-eqz v7, :cond_11

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v6, v8, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v8

    if-eqz v8, :cond_12

    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    aget-byte v8, v2, v8

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    and-int/lit16 v8, v8, 0x2002

    if-nez v8, :cond_12

    or-int/lit8 v3, v3, 0x8

    :cond_12
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_16

    const/16 v7, 0x200e

    :goto_9
    if-eqz v7, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_13
    or-int/lit8 v3, v3, 0x4

    goto :goto_7

    :cond_14
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_15

    const/16 v7, 0x200f

    goto :goto_8

    :cond_15
    const/4 v7, 0x0

    goto :goto_8

    :cond_16
    and-int/lit8 v8, v3, 0x8

    if-eqz v8, :cond_17

    const/16 v7, 0x200f

    goto :goto_9

    :cond_17
    const/4 v7, 0x0

    goto :goto_9

    :cond_18
    and-int/lit8 v8, p1, 0x4

    if-nez v8, :cond_1a

    move v4, v5

    :goto_a
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1f

    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_19

    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v10, p1, -0x3

    invoke-static {v6, v8, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_19
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v6, v8, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_1a
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    move v4, v5

    :cond_1b
    :goto_b
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1f

    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_1d

    iget v8, v0, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v2, v8

    if-eqz v8, :cond_1c

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v10, p1, -0x3

    invoke-static {v6, v8, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    aget-byte v8, v2, v8

    if-eqz v8, :cond_1b

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1d
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    aget-byte v8, v2, v8

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    and-int/lit16 v8, v8, 0x2002

    if-nez v8, :cond_1e

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1e
    iget v8, v0, Landroid/icu/text/BidiRun;->start:I

    iget v9, v0, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v6, v8, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v2, v8

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    and-int/lit16 v8, v8, 0x2002

    if-nez v8, :cond_1b

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method static writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v5, p1, 0xb

    packed-switch v5, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    move v2, v4

    add-int/lit8 v5, v4, -0x1

    invoke-static {p0, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_4

    :goto_1
    if-lez v4, :cond_4

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/text/BidiWriter;->IsCombining(I)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v5, v4, -0x1

    invoke-static {p0, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    move v2, v4

    add-int/lit8 v5, v4, -0x1

    invoke-static {p0, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gtz v4, :cond_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2
    move v2, v4

    :cond_2
    add-int/lit8 v5, v4, -0x1

    invoke-static {p0, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_3

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/text/BidiWriter;->IsCombining(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez v4, :cond_1

    goto :goto_2

    :cond_4
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_5

    invoke-static {v0}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_3
    if-lez v4, :cond_1

    goto :goto_0

    :cond_5
    move v3, v4

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_6

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v0

    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v3, v5

    :cond_6
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
