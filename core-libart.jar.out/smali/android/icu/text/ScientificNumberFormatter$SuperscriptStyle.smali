.class Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;
.super Landroid/icu/text/ScientificNumberFormatter$Style;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ScientificNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuperscriptStyle"
.end annotation


# static fields
.field private static final SUPERSCRIPT_DIGITS:[C

.field private static final SUPERSCRIPT_MINUS_SIGN:C = '\u207b'

.field private static final SUPERSCRIPT_PLUS_SIGN:C = '\u207a'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x2070s
        0xb9s
        0xb2s
        0xb3s
        0x2074s
        0x2075s
        0x2076s
        0x2077s
        0x2078s
        0x2079s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>(Landroid/icu/text/ScientificNumberFormatter$Style;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>()V

    return-void
.end method

.method private static char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I
    .locals 3

    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v0

    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v1

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->next()C

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_0
    return v0
.end method

.method private static copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V
    .locals 4

    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v2

    invoke-interface {p0, p1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    :goto_0
    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v3

    if-ge v3, p2, :cond_1

    invoke-static {p0}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    sget-object v3, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->SUPERSCRIPT_DIGITS:[C

    aget-char v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-interface {p0, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    return-void
.end method


# virtual methods
.method format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v6

    const v7, 0xffff

    if-eq v6, v7, :cond_5

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v1

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v6

    invoke-static {p1, v2, v6, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v5

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    invoke-static {p1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->char32AtAndAdvance(Ljava/text/AttributedCharacterIterator;)I

    move-result v0

    sget-object v6, Landroid/icu/text/DecimalFormat;->minusSigns:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1, v2, v5, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    const/16 v6, 0x207b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v2, v3

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_0

    :cond_1
    sget-object v6, Landroid/icu/text/DecimalFormat;->plusSigns:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p1, v2, v5, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    const/16 v6, 0x207a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_3
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v5

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v6}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    invoke-static {p1, v2, v5, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    invoke-static {p1, v5, v3, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->copyAsSuperscript(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    move v2, v3

    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    goto/16 :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v6

    invoke-static {p1, v2, v6, v4}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
