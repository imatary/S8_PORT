.class public final Landroid/icu/lang/UCharacter;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterCategory;
.implements Landroid/icu/lang/UCharacterEnums$ECharacterDirection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/lang/UCharacter$BidiPairedBracketType;,
        Landroid/icu/lang/UCharacter$DecompositionType;,
        Landroid/icu/lang/UCharacter$DummyValueIterator;,
        Landroid/icu/lang/UCharacter$EastAsianWidth;,
        Landroid/icu/lang/UCharacter$GraphemeClusterBreak;,
        Landroid/icu/lang/UCharacter$HangulSyllableType;,
        Landroid/icu/lang/UCharacter$JoiningGroup;,
        Landroid/icu/lang/UCharacter$JoiningType;,
        Landroid/icu/lang/UCharacter$LineBreak;,
        Landroid/icu/lang/UCharacter$NumericType;,
        Landroid/icu/lang/UCharacter$SentenceBreak;,
        Landroid/icu/lang/UCharacter$StringContextIterator;,
        Landroid/icu/lang/UCharacter$UCharacterTypeIterator;,
        Landroid/icu/lang/UCharacter$UnicodeBlock;,
        Landroid/icu/lang/UCharacter$WordBreak;
    }
.end annotation


# static fields
.field private static final APPLICATION_PROGRAM_COMMAND_:I = 0x9f

.field private static final BREAK_MASK:I = 0x230

.field private static final CJK_IDEOGRAPH_COMPLEX_EIGHT_:I = 0x634c

.field private static final CJK_IDEOGRAPH_COMPLEX_FIVE_:I = 0x4f0d

.field private static final CJK_IDEOGRAPH_COMPLEX_FOUR_:I = 0x8086

.field private static final CJK_IDEOGRAPH_COMPLEX_HUNDRED_:I = 0x4f70

.field private static final CJK_IDEOGRAPH_COMPLEX_NINE_:I = 0x7396

.field private static final CJK_IDEOGRAPH_COMPLEX_ONE_:I = 0x58f9

.field private static final CJK_IDEOGRAPH_COMPLEX_SEVEN_:I = 0x67d2

.field private static final CJK_IDEOGRAPH_COMPLEX_SIX_:I = 0x9678

.field private static final CJK_IDEOGRAPH_COMPLEX_TEN_:I = 0x62fe

.field private static final CJK_IDEOGRAPH_COMPLEX_THOUSAND_:I = 0x4edf

.field private static final CJK_IDEOGRAPH_COMPLEX_THREE_:I = 0x53c3

.field private static final CJK_IDEOGRAPH_COMPLEX_TWO_:I = 0x8cb3

.field private static final CJK_IDEOGRAPH_COMPLEX_ZERO_:I = 0x96f6

.field private static final CJK_IDEOGRAPH_EIGHTH_:I = 0x516b

.field private static final CJK_IDEOGRAPH_FIFTH_:I = 0x4e94

.field private static final CJK_IDEOGRAPH_FIRST_:I = 0x4e00

.field private static final CJK_IDEOGRAPH_FOURTH_:I = 0x56db

.field private static final CJK_IDEOGRAPH_HUNDRED_:I = 0x767e

.field private static final CJK_IDEOGRAPH_HUNDRED_MILLION_:I = 0x5104

.field private static final CJK_IDEOGRAPH_NINETH_:I = 0x4e5d

.field private static final CJK_IDEOGRAPH_SECOND_:I = 0x4e8c

.field private static final CJK_IDEOGRAPH_SEVENTH_:I = 0x4e03

.field private static final CJK_IDEOGRAPH_SIXTH_:I = 0x516d

.field private static final CJK_IDEOGRAPH_TEN_:I = 0x5341

.field private static final CJK_IDEOGRAPH_TEN_THOUSAND_:I = 0x824c

.field private static final CJK_IDEOGRAPH_THIRD_:I = 0x4e09

.field private static final CJK_IDEOGRAPH_THOUSAND_:I = 0x5343

.field private static final DELETE_:I = 0x7f

.field private static final FIGURE_SPACE_:I = 0x2007

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field private static final IDEOGRAPHIC_NUMBER_ZERO_:I = 0x3007

.field private static final LAST_CHAR_MASK_:I = 0xffff

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:I = 0x10ffff

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:I = 0x0

.field private static final NARROW_NO_BREAK_SPACE_:I = 0x202f

.field private static final NO_BREAK_SPACE_:I = 0xa0

.field public static final NO_NUMERIC_VALUE:D = -1.23456789E8

.field public static final REPLACEMENT_CHAR:I = 0xfffd

.field public static final SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field public static final TITLECASE_NO_BREAK_ADJUSTMENT:I = 0x200

.field public static final TITLECASE_NO_LOWERCASE:I = 0x100

.field private static final UNIT_SEPARATOR_:I = 0x1f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charCount(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    return v0
.end method

.method public static final codePointAt(Ljava/lang/CharSequence;I)I
    .locals 4

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_0
    return v0
.end method

.method public static final codePointAt([CI)I
    .locals 4

    add-int/lit8 v2, p1, 0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-char v1, p0, v2

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_0
    return v0
.end method

.method public static final codePointAt([CII)I
    .locals 4

    if-ge p1, p2, :cond_0

    array-length v3, p0

    if-le p2, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_1
    add-int/lit8 v2, p1, 0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ge v2, p2, :cond_2

    aget-char v1, p0, v2

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_2
    return v0
.end method

.method public static final codePointBefore(Ljava/lang/CharSequence;I)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_0
    return v1
.end method

.method public static final codePointBefore([CI)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_0
    return v1
.end method

.method public static final codePointBefore([CII)I
    .locals 3

    if-le p1, p2, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    aget-char v1, p0, p1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    if-le p1, p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_2
    return v1
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .locals 5

    if-ltz p1, :cond_0

    if-ge p2, p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") or limit ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") invalid or out of range 0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p2, v2, :cond_0

    sub-int v1, p2, p1

    :cond_2
    :goto_0
    if-le p2, p1, :cond_4

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_3
    const v2, 0xdc00

    if-lt v0, v2, :cond_2

    const v2, 0xdfff

    if-gt v0, v2, :cond_2

    if-le p2, p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v2, 0xd800

    if-lt v0, v2, :cond_3

    const v2, 0xdbff

    if-gt v0, v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static codePointCount([CII)I
    .locals 5

    if-ltz p1, :cond_0

    if-ge p2, p1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") or limit ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") invalid or out of range 0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    array-length v2, p0

    if-gt p2, v2, :cond_0

    sub-int v1, p2, p1

    :cond_2
    :goto_0
    if-le p2, p1, :cond_4

    add-int/lit8 p2, p2, -0x1

    aget-char v0, p0, p2

    :cond_3
    const v2, 0xdc00

    if-lt v0, v2, :cond_2

    const v2, 0xdfff

    if-gt v0, v2, :cond_2

    if-le p2, p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    aget-char v0, p0, p2

    const v2, 0xd800

    if-lt v0, v2, :cond_3

    const v2, 0xdbff

    if-gt v0, v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static digit(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->digit(I)I

    move-result v0

    return v0
.end method

.method public static digit(II)I
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-gt v2, p1, :cond_2

    const/16 v2, 0x24

    if-gt p1, v2, :cond_2

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    move-result v0

    :cond_0
    if-ge v0, p1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static foldCase(II)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCaseProps;->fold(II)I

    move-result v0

    return v0
.end method

.method public static foldCase(IZ)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final foldCase(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v4, v0, v3, p1}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    move-result v0

    if-gez v0, :cond_1

    not-int v0, v0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v4, 0x1f

    if-gt v0, v4, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static foldCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static forDigit(II)C
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    return v0
.end method

.method public static getAge(I)Landroid/icu/util/VersionInfo;
    .locals 2

    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Codepoint out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getAge(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBidiPairedBracket(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getPairedBracket(I)I

    move-result v0

    return v0
.end method

.method public static getCharFromExtendedName(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCharFromName(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCharFromName1_0(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public static getCharFromNameAlias(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/UCharacterName;->getCharFromName(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCodePoint(C)I
    .locals 2

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isLegal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCodePoint(CC)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal surrogate characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCombiningClass(I)I
    .locals 1

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v0

    return v0
.end method

.method public static getDirection(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v0

    return v0
.end method

.method public static getDirectionality(I)B
    .locals 1

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static getExtendedName(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtendedNameIterator()Landroid/icu/util/ValueIterator;
    .locals 3

    new-instance v0, Landroid/icu/lang/UCharacterNameIterator;

    sget-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacterNameIterator;-><init>(Landroid/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static getHanNumericValue(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    :sswitch_2
    const/4 v0, 0x2

    return v0

    :sswitch_3
    const/4 v0, 0x3

    return v0

    :sswitch_4
    const/4 v0, 0x4

    return v0

    :sswitch_5
    const/4 v0, 0x5

    return v0

    :sswitch_6
    const/4 v0, 0x6

    return v0

    :sswitch_7
    const/4 v0, 0x7

    return v0

    :sswitch_8
    const/16 v0, 0x8

    return v0

    :sswitch_9
    const/16 v0, 0x9

    return v0

    :sswitch_a
    const/16 v0, 0xa

    return v0

    :sswitch_b
    const/16 v0, 0x64

    return v0

    :sswitch_c
    const/16 v0, 0x3e8

    return v0

    :sswitch_d
    const/16 v0, 0x2710

    return v0

    :sswitch_e
    const v0, 0x5f5e100

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3007 -> :sswitch_0
        0x4e00 -> :sswitch_1
        0x4e03 -> :sswitch_7
        0x4e09 -> :sswitch_3
        0x4e5d -> :sswitch_9
        0x4e8c -> :sswitch_2
        0x4e94 -> :sswitch_5
        0x4edf -> :sswitch_c
        0x4f0d -> :sswitch_5
        0x4f70 -> :sswitch_b
        0x5104 -> :sswitch_e
        0x516b -> :sswitch_8
        0x516d -> :sswitch_6
        0x5341 -> :sswitch_a
        0x5343 -> :sswitch_c
        0x53c3 -> :sswitch_3
        0x56db -> :sswitch_4
        0x58f9 -> :sswitch_1
        0x62fe -> :sswitch_a
        0x634c -> :sswitch_8
        0x67d2 -> :sswitch_7
        0x7396 -> :sswitch_9
        0x767e -> :sswitch_b
        0x8086 -> :sswitch_4
        0x824c -> :sswitch_d
        0x8cb3 -> :sswitch_2
        0x9678 -> :sswitch_6
        0x96f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getISOComment(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIntPropertyMaxValue(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getIntPropertyMaxValue(I)I

    move-result v0

    return v0
.end method

.method public static getIntPropertyMinValue(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getIntPropertyValue(II)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->getIntPropertyValue(II)I

    move-result v0

    return v0
.end method

.method public static getMirror(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->getMirror(I)I

    move-result v0

    return v0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-eqz v1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getName1_0(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getName1_0Iterator()Landroid/icu/util/ValueIterator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/lang/UCharacter$DummyValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/lang/UCharacter$DummyValueIterator;-><init>(Landroid/icu/lang/UCharacter$DummyValueIterator;)V

    return-object v0
.end method

.method public static getNameAlias(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameIterator()Landroid/icu/util/ValueIterator;
    .locals 3

    new-instance v0, Landroid/icu/lang/UCharacterNameIterator;

    sget-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UCharacterNameIterator;-><init>(Landroid/icu/impl/UCharacterName;I)V

    return-object v0
.end method

.method public static getNumericValue(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static getPropertyEnum(Ljava/lang/CharSequence;)I
    .locals 4

    sget-object v1, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v1, p0}, Landroid/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static getPropertyName(II)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPropertyValueEnum(ILjava/lang/CharSequence;)I
    .locals 4

    sget-object v1, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v1, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnumNoThrow(ILjava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public static getPropertyValueName(III)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x1002

    if-eq p0, v2, :cond_0

    const/16 v1, 0x1010

    if-ne p0, v1, :cond_1

    :cond_0
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getIntPropertyMinValue(I)I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    move-result v1

    if-gt p1, v1, :cond_2

    if-ltz p2, :cond_2

    const/4 v1, 0x2

    if-ge p2, v1, :cond_2

    :try_start_0
    sget-object v1, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v1, p0, p1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :cond_1
    const/16 v1, 0x1011

    if-eq p0, v1, :cond_0

    :cond_2
    sget-object v1, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    invoke-virtual {v1, p0, p1, p2}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getStringPropertyValue(III)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    if-ltz p0, :cond_1

    const/16 v0, 0x39

    if-ge p0, v0, :cond_1

    :cond_0
    invoke-static {p1, p0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    invoke-static {p0, v0, p2}, Landroid/icu/lang/UCharacter;->getPropertyValueName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1016

    if-lt p0, v0, :cond_0

    :cond_2
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getUnicodeNumericValue(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Property Enum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getAge(I)Landroid/icu/util/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getISOComment(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toTitleCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toUpperCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toTitleCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getName1_0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->toUpperCase(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getType(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    move-result v0

    return v0
.end method

.method public static getTypeIterator()Landroid/icu/util/RangeValueIterator;
    .locals 1

    new-instance v0, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;

    invoke-direct {v0}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator;-><init>()V

    return-object v0
.end method

.method public static getUnicodeNumericValue(I)D
    .locals 2

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCharacterProperty;->getUnicodeNumericValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getUnicodeVersion()Landroid/icu/util/VersionInfo;
    .locals 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    iget-object v0, v0, Landroid/icu/impl/UCharacterProperty;->m_unicodeVersion_:Landroid/icu/util/VersionInfo;

    return-object v0
.end method

.method public static hasBinaryProperty(II)Z
    .locals 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/UCharacterProperty;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isBMP(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const v1, 0xffff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBaseForm(I)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDefined(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDigit(I)Z
    .locals 2

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHighSurrogate(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    return v0
.end method

.method public static isISOControl(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_2

    const/16 v2, 0x9f

    if-gt p0, v2, :cond_2

    const/16 v2, 0x1f

    if-le p0, v2, :cond_0

    const/16 v2, 0x7f

    if-lt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isIdentifierIgnorable(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x9f

    if-gt p0, v2, :cond_4

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    if-lt p0, v2, :cond_0

    const/16 v2, 0xd

    if-le p0, v2, :cond_2

    :cond_0
    const/16 v2, 0x1c

    if-lt p0, v2, :cond_1

    const/16 v2, 0x1f

    if-le p0, v2, :cond_3

    :cond_1
    :goto_0
    move v1, v0

    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    :goto_1
    return v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static isJavaIdentifierPart(I)Z
    .locals 1

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .locals 1

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetter(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetterOrDigit(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isLegal(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p0, :cond_0

    return v1

    :cond_0
    const v2, 0xd800

    if-ge p0, v2, :cond_1

    return v0

    :cond_1
    const v2, 0xdfff

    if-gt p0, v2, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Landroid/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    const v2, 0x10ffff

    if-gt p0, v2, :cond_4

    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static isLegal(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLegal(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static isLetter(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    shl-int v2, v0, v2

    and-int/lit8 v2, v2, 0x3e

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isLetterOrDigit(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    shl-int v2, v0, v2

    and-int/lit16 v2, v2, 0x23e

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isLowSurrogate(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    return v0
.end method

.method public static isLowerCase(I)Z
    .locals 2

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMirrored(I)Z
    .locals 1

    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UBiDiProps;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static isPrintable(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSpace(I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v2, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p0, v2, :cond_2

    if-eq p0, v2, :cond_0

    const/16 v2, 0x9

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0xa

    if-eq p0, v2, :cond_0

    const/16 v2, 0xc

    if-eq p0, v2, :cond_0

    const/16 v2, 0xd

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isSpaceChar(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    shl-int v2, v0, v2

    and-int/lit16 v2, v2, 0x7000

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSupplementary(I)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_0

    const v1, 0x10ffff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isSupplementaryCodePoint(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    return v0
.end method

.method public static final isSurrogatePair(CC)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    return v0
.end method

.method public static isTitleCase(I)Z
    .locals 2

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUAlphabetic(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isULowercase(I)Z
    .locals 1

    const/16 v0, 0x16

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isUUppercase(I)Z
    .locals 1

    const/16 v0, 0x1e

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isUWhiteSpace(I)Z
    .locals 1

    const/16 v0, 0x1f

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v1

    shl-int v1, v0, v1

    const v2, 0x40077e

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->isIdentifierIgnorable(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    shl-int v2, v0, v2

    and-int/lit16 v2, v2, 0x43e

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isUpperCase(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isValidCodePoint(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const v1, 0x10ffff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isWhitespace(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    shl-int v2, v0, v2

    and-int/lit16 v2, v2, 0x7000

    if-eqz v2, :cond_1

    const/16 v2, 0xa0

    if-eq p0, v2, :cond_1

    const/16 v2, 0x2007

    if-eq p0, v2, :cond_1

    const/16 v2, 0x202f

    if-eq p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x9

    if-lt p0, v2, :cond_2

    const/16 v2, 0xd

    if-le p0, v2, :cond_0

    :cond_2
    const/16 v2, 0x1c

    if-lt p0, v2, :cond_3

    const/16 v2, 0x1f

    if-le p0, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .locals 8

    const v7, 0xdfff

    const v6, 0xdc00

    const v5, 0xdbff

    const v4, 0xd800

    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") out of range 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-gez p2, :cond_5

    :cond_2
    add-int/lit8 p2, p2, 0x1

    if-gtz p2, :cond_a

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_3
    if-lt v0, v6, :cond_2

    if-gt v0, v7, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v4, :cond_4

    if-le v0, v5, :cond_3

    :cond_4
    add-int/lit8 p2, p2, 0x1

    if-lez p2, :cond_3

    add-int/lit8 v3, p1, 0x1

    return v3

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, p1

    :cond_6
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_9

    add-int/lit8 p1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v1, p1

    :goto_0
    if-lt v0, v4, :cond_6

    if-gt v0, v5, :cond_6

    if-ge v1, v2, :cond_6

    add-int/lit8 p1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_7

    if-le v0, v7, :cond_8

    :cond_7
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_8

    add-int/lit8 v3, p1, -0x1

    return v3

    :cond_8
    move v1, p1

    goto :goto_0

    :cond_9
    move p1, v1

    :cond_a
    return p1
.end method

.method public static offsetByCodePoints([CIIII)I
    .locals 8

    const v7, 0xdfff

    const v6, 0xdc00

    const v5, 0xdbff

    const v4, 0xd800

    add-int v2, p1, p2

    if-ltz p1, :cond_0

    if-ge v2, p1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") out of range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in array 0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    array-length v3, p0

    if-gt v2, v3, :cond_0

    if-lt p3, p1, :cond_0

    if-gt p3, v2, :cond_0

    if-gez p4, :cond_5

    :cond_2
    add-int/lit8 p4, p4, 0x1

    if-gtz p4, :cond_a

    add-int/lit8 p3, p3, -0x1

    aget-char v0, p0, p3

    if-ge p3, p1, :cond_3

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") < start ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    if-lt v0, v6, :cond_2

    if-gt v0, v7, :cond_2

    if-le p3, p1, :cond_2

    add-int/lit8 p3, p3, -0x1

    aget-char v0, p0, p3

    if-lt v0, v4, :cond_4

    if-le v0, v5, :cond_3

    :cond_4
    add-int/lit8 p4, p4, 0x1

    if-lez p4, :cond_3

    add-int/lit8 v3, p3, 0x1

    return v3

    :cond_5
    move v1, p3

    :cond_6
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_9

    add-int/lit8 p3, v1, 0x1

    aget-char v0, p0, v1

    if-le p3, v2, :cond_7

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "index ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") > limit ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    move v1, p3

    if-lt v0, v4, :cond_6

    if-gt v0, v5, :cond_6

    if-ge v1, v2, :cond_6

    add-int/lit8 p3, v1, 0x1

    aget-char v0, p0, v1

    if-lt v0, v6, :cond_8

    if-le v0, v7, :cond_7

    :cond_8
    add-int/lit8 p4, p4, -0x1

    if-gez p4, :cond_7

    add-int/lit8 v3, p3, -0x1

    return v3

    :cond_9
    move p3, v1

    :cond_a
    return p3
.end method

.method public static final toChars(I[CI)I
    .locals 1

    invoke-static {p0, p1, p2}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v0

    return v0
.end method

.method public static final toChars(I)[C
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    return-object v0
.end method

.method public static final toCodePoint(CC)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0
.end method

.method public static toLowerCase(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->tolower(I)I

    move-result v0

    return v0
.end method

.method public static toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    new-instance v2, Landroid/icu/lang/UCharacter$StringContextIterator;

    invoke-direct {v2, p1}, Landroid/icu/lang/UCharacter$StringContextIterator;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x1

    new-array v5, v0, [I

    if-nez p0, :cond_0

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    :cond_0
    aput v4, v5, v4

    :goto_0
    invoke-virtual {v2}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    if-ltz v1, :cond_3

    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v1

    if-gez v1, :cond_2

    not-int v1, v1

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_2

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toTitleCase(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->totitle(I)I

    move-result v0

    return v0
.end method

.method public static toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    .locals 23

    new-instance v5, Landroid/icu/lang/UCharacter$StringContextIterator;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/icu/lang/UCharacter$StringContextIterator;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x1

    new-array v8, v3, [I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    if-nez p0, :cond_0

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    :cond_0
    const/4 v3, 0x0

    const/4 v7, 0x0

    aput v3, v8, v7

    if-nez p2, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p2

    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "nl"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/4 v15, 0x1

    const/16 v19, 0x0

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/BreakIterator;->first()I

    move-result v16

    :goto_1
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_2

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    :cond_2
    move/from16 v16, v20

    :cond_3
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/icu/lang/UCharacter$StringContextIterator;->setLimit(I)V

    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v4

    move/from16 v0, p3

    and-int/lit16 v3, v0, 0x200

    if-nez v3, :cond_b

    sget-object v3, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v3, v4}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v3

    if-nez v3, :cond_b

    :cond_4
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v4

    if-ltz v4, :cond_5

    sget-object v3, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v3, v4}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v3

    if-eqz v3, :cond_4

    :cond_5
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->getCPStart()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    const/4 v15, 0x1

    sget-object v3, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    move-object/from16 v7, p0

    invoke-virtual/range {v3 .. v8}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v4

    :goto_3
    if-gez v4, :cond_c

    not-int v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    move/from16 v0, p3

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_e

    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->getCPLimit()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    if-eqz v17, :cond_d

    const/16 v3, 0x49

    if-ne v4, v3, :cond_d

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x6a

    if-ne v3, v7, :cond_d

    const/16 v3, 0x4a

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v7, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v3, v0, v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_8
    :goto_5
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->moveToLimit()V

    :cond_9
    move/from16 v19, v16

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/BreakIterator;->next()I

    move-result v16

    goto/16 :goto_1

    :cond_b
    move/from16 v22, v19

    goto :goto_2

    :cond_c
    const/16 v3, 0x1f

    if-le v4, v3, :cond_7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-virtual {v6, v0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    invoke-virtual {v5}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v10

    if-ltz v10, :cond_9

    if-eqz v17, :cond_10

    const/16 v3, 0x4a

    if-eq v10, v3, :cond_f

    const/16 v3, 0x6a

    if-ne v10, v3, :cond_10

    :cond_f
    const/16 v3, 0x49

    if-ne v4, v3, :cond_10

    if-eqz v15, :cond_10

    const/16 v4, 0x4a

    const/4 v15, 0x0

    goto :goto_3

    :cond_10
    sget-object v9, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v13, p0

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v4

    goto :goto_3

    :cond_11
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toTitleCase(Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(Ljava/util/Locale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleFirst(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    const/16 v7, 0x2000

    invoke-static {v0, v7}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v2

    and-int/lit16 v7, v2, 0x230

    if-eqz v7, :cond_1

    :cond_0
    return-object p1

    :cond_1
    sget-object v7, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v7, v0}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->charCount(I)I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->charCount(I)I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v7

    invoke-static {p0, v5, v7, v9}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-eq v7, v0, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, p1, v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v7, 0x69

    if-ne v0, v7, :cond_3

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "nl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x6a

    if-ne v7, v8, :cond_3

    const-string/jumbo v7, "IJ"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, p1, v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->charCount(I)I

    move-result v7

    add-int v4, v1, v7

    goto :goto_1
.end method

.method public static toUpperCase(I)I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UCaseProps;->toupper(I)I

    move-result v0

    return v0
.end method

.method public static toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    new-instance v2, Landroid/icu/lang/UCharacter$StringContextIterator;

    invoke-direct {v2, p1}, Landroid/icu/lang/UCharacter$StringContextIterator;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x1

    new-array v5, v0, [I

    if-nez p0, :cond_0

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    :cond_0
    aput v4, v5, v4

    :goto_0
    invoke-virtual {v2}, Landroid/icu/lang/UCharacter$StringContextIterator;->nextCaseMapCP()I

    move-result v1

    if-ltz v1, :cond_3

    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v1

    if-gez v1, :cond_2

    not-int v1, v1

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
