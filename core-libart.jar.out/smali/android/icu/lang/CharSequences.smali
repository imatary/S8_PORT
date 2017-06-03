.class public Landroid/icu/lang/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static codePoints(Ljava/lang/CharSequence;)[I
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    new-array v5, v7, [I

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v7, 0xdc00

    if-lt v0, v7, :cond_0

    const v7, 0xdfff

    if-gt v0, v7, :cond_0

    if-eqz v1, :cond_0

    add-int/lit8 v7, v2, -0x1

    aget v7, v5, v7

    int-to-char v4, v7

    const v7, 0xd800

    if-lt v4, v7, :cond_0

    const v7, 0xdbff

    if-gt v4, v7, :cond_0

    add-int/lit8 v7, v2, -0x1

    invoke-static {v4, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v8

    aput v8, v5, v7

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput v0, v5, v2

    move v2, v3

    goto :goto_1

    :cond_1
    array-length v7, v5

    if-ne v2, v7, :cond_2

    return-object v5

    :cond_2
    new-array v6, v2, [I

    invoke-static {v5, v9, v6, v9, v2}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v6
.end method

.method public static compare(ILjava/lang/CharSequence;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-ltz p1, :cond_0

    const v6, 0x10ffff

    if-le p1, v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v6, -0x1

    return v6

    :cond_2
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/high16 v6, 0x10000

    sub-int v2, p1, v6

    if-gez v2, :cond_4

    sub-int v3, v0, p1

    if-eqz v3, :cond_3

    return v3

    :cond_3
    add-int/lit8 v6, v4, -0x1

    return v6

    :cond_4
    ushr-int/lit8 v6, v2, 0xa

    const v7, 0xd800

    add-int/2addr v6, v7

    int-to-char v1, v6

    sub-int v3, v0, v1

    if-eqz v3, :cond_5

    return v3

    :cond_5
    if-le v4, v8, :cond_6

    and-int/lit16 v6, v2, 0x3ff

    const v7, 0xdc00

    add-int/2addr v6, v7

    int-to-char v5, v6

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sub-int v3, v6, v5

    if-eqz v3, :cond_6

    return v3

    :cond_6
    add-int/lit8 v6, v4, -0x2

    return v6
.end method

.method public static compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    move v4, v0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sub-int v2, v5, v6

    if-eqz v2, :cond_1

    return v2

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sub-int v5, v0, v1

    return v5
.end method

.method public static final equals(ILjava/lang/CharSequence;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne p0, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    const v2, 0xffff

    if-le p0, v2, :cond_2

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    if-ne p0, v2, :cond_2

    move v1, v0

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final equals(Ljava/lang/CharSequence;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->equals(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsChars(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {p0, p1}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v2, 0x7fffffff

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    const/4 v5, 0x2

    if-le v0, v5, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    const/high16 v5, 0x10000

    if-ge v1, v5, :cond_2

    move v5, v3

    :goto_0
    if-ne v0, v3, :cond_3

    :goto_1
    if-ne v5, v3, :cond_4

    :goto_2
    return v1

    :cond_2
    move v5, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static matchAfter(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move v4, p2

    move v5, p3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    if-ge v4, v0, :cond_0

    if-ge v5, v1, :cond_0

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_0
    sub-int v6, v4, p2

    if-eqz v6, :cond_1

    invoke-static {p0, v4}, Landroid/icu/lang/CharSequences;->onCharacterBoundary(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    :goto_1
    return v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1, v5}, Landroid/icu/lang/CharSequences;->onCharacterBoundary(Ljava/lang/CharSequence;I)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method public static onCharacterBoundary(Ljava/lang/CharSequence;I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt p1, v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public codePointLength(Ljava/lang/CharSequence;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method
