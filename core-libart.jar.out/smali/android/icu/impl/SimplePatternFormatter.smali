.class public final Landroid/icu/impl/SimplePatternFormatter;
.super Ljava/lang/Object;
.source "SimplePatternFormatter.java"


# static fields
.field private static final ARG_NUM_LIMIT:I = 0x100

.field private static final MAX_SEGMENT_LENGTH:I = 0xfeff

.field private static final SEGMENT_LENGTH_PLACEHOLDER_CHAR:C = '\uffff'


# instance fields
.field private final compiledPattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    return-void
.end method

.method public static compile(Ljava/lang/CharSequence;)Landroid/icu/impl/SimplePatternFormatter;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p0, v0, v1}, Landroid/icu/impl/SimplePatternFormatter;->compileMinMaxPlaceholders(Ljava/lang/CharSequence;II)Landroid/icu/impl/SimplePatternFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static compileMinMaxPlaceholders(Ljava/lang/CharSequence;II)Landroid/icu/impl/SimplePatternFormatter;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v1, p1, p2}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/icu/impl/SimplePatternFormatter;

    invoke-direct {v2, v0}, Landroid/icu/impl/SimplePatternFormatter;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 14

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v9, :cond_11

    add-int/lit8 v5, v6, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v11, 0x27

    if-ne v4, v11, :cond_7

    if-ge v5, v9, :cond_3

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v11, 0x27

    if-ne v4, v11, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_0
    :goto_1
    if-nez v10, :cond_1

    const v11, 0xffff

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    const v11, 0xfeff

    if-ne v10, v11, :cond_2

    const/4 v10, 0x0

    :cond_2
    :goto_2
    move v6, v5

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/16 v11, 0x7b

    if-eq v4, v11, :cond_5

    const/16 v11, 0x7d

    if-ne v4, v11, :cond_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const/16 v4, 0x27

    goto :goto_1

    :cond_7
    if-nez v7, :cond_0

    const/16 v11, 0x7b

    if-ne v4, v11, :cond_0

    if-lez v10, :cond_8

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    add-int/lit16 v12, v10, 0x100

    int-to-char v12, v12

    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v10, 0x0

    :cond_8
    add-int/lit8 v11, v5, 0x1

    if-ge v11, v9, :cond_b

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    add-int/lit8 v2, v11, -0x30

    if-ltz v2, :cond_b

    const/16 v11, 0x9

    if-gt v2, v11, :cond_b

    add-int/lit8 v11, v5, 0x1

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x7d

    if-ne v11, v12, :cond_b

    add-int/lit8 v5, v5, 0x2

    :cond_9
    if-le v2, v8, :cond_a

    move v8, v2

    :cond_a
    int-to-char v11, v2

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    add-int/lit8 v3, v5, -0x1

    const/4 v2, -0x1

    if-ge v5, v9, :cond_c

    add-int/lit8 v6, v5, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v11, 0x31

    if-gt v11, v4, :cond_e

    const/16 v11, 0x39

    if-gt v4, v11, :cond_e

    add-int/lit8 v2, v4, -0x30

    :goto_3
    if-ge v6, v9, :cond_f

    add-int/lit8 v5, v6, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v11, 0x30

    if-gt v11, v4, :cond_c

    const/16 v11, 0x39

    if-gt v4, v11, :cond_c

    mul-int/lit8 v11, v2, 0xa

    add-int/lit8 v12, v4, -0x30

    add-int v2, v11, v12

    const/16 v11, 0x100

    if-lt v2, v11, :cond_10

    :cond_c
    :goto_4
    if-ltz v2, :cond_d

    const/16 v11, 0x7d

    if-eq v4, v11, :cond_9

    :cond_d
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Argument syntax error in pattern \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\" at index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p0, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_e
    move v5, v6

    goto :goto_4

    :cond_f
    move v5, v6

    goto :goto_4

    :cond_10
    move v6, v5

    goto :goto_3

    :cond_11
    if-lez v10, :cond_12

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x1

    add-int/lit16 v12, v10, 0x100

    int-to-char v12, v12

    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_12
    add-int/lit8 v1, v8, 0x1

    move/from16 v0, p2

    if-ge v1, v0, :cond_13

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Fewer than minimum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " placeholders in pattern \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_13
    move/from16 v0, p3

    if-le v1, v0, :cond_14

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "More than maximum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " placeholders in pattern \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_14
    int-to-char v11, v1

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;
    .locals 8

    if-nez p5, :cond_1

    const/4 v4, 0x0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_8

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x100

    if-ge v3, v6, :cond_7

    aget-object v5, p1, v3

    if-ne v5, p2, :cond_5

    if-eqz p4, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Value must not be same object as result"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    array-length v4, p5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    const/4 v6, -0x1

    aput v6, p5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    if-ge v3, v4, :cond_9

    const/4 v6, 0x0

    aput v6, p5, v3

    move v0, v1

    goto :goto_0

    :cond_3
    if-ge v3, v4, :cond_4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    aput v6, p5, v3

    :cond_4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_5
    if-ge v3, v4, :cond_6

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    aput v6, p5, v3

    :cond_6
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_7
    add-int/lit16 v6, v3, -0x100

    add-int v2, v1, v6

    invoke-virtual {p2, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_0

    :cond_8
    return-object p2

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public static varargs formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 7

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    array-length v6, p3

    :goto_0
    invoke-static {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    move-result v0

    if-ge v6, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Too few values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/SimplePatternFormatter;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static varargs formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 11

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    array-length v10, p3

    :goto_0
    invoke-static {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    move-result v0

    if-ge v10, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Too few values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_4

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v0, 0x100

    if-ge v9, v0, :cond_3

    aget-object v0, p3, v9

    if-ne v0, p1, :cond_6

    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    move v6, v9

    move v7, v8

    goto :goto_1

    :cond_2
    if-nez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v7, v8

    goto :goto_1

    :cond_3
    add-int/lit16 v0, v9, -0x100

    add-int v7, v8, v0

    goto :goto_1

    :cond_4
    if-gez v6, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/SimplePatternFormatter;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_6
    move v7, v8

    goto :goto_1
.end method

.method public static varargs formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlaceholderCount(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static getTextWithNoPlaceholders(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    move-result v7

    sub-int v0, v6, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit16 v5, v6, -0x100

    if-lez v5, :cond_1

    add-int v3, v2, v5

    invoke-virtual {v4, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public varargs format([Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/impl/SimplePatternFormatter;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs formatAndReplace(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Landroid/icu/impl/SimplePatternFormatter;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceholderCount()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTextWithNoPlaceholders()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/SimplePatternFormatter;->getTextWithNoPlaceholders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "{%d}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
