.class public Landroid/icu/text/DecimalFormat;
.super Landroid/icu/text/NumberFormat;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DecimalFormat$AffixForCurrency;,
        Landroid/icu/text/DecimalFormat$Unit;
    }
.end annotation


# static fields
.field private static final CURRENCY_SIGN:C = '\u00a4'

.field private static final CURRENCY_SIGN_COUNT_IN_ISO_FORMAT:I = 0x2

.field private static final CURRENCY_SIGN_COUNT_IN_PLURAL_FORMAT:I = 0x3

.field private static final CURRENCY_SIGN_COUNT_IN_SYMBOL_FORMAT:I = 0x1

.field private static final CURRENCY_SIGN_COUNT_ZERO:I = 0x0

.field static final DOUBLE_FRACTION_DIGITS:I = 0x154

.field static final DOUBLE_INTEGER_DIGITS:I = 0x135

.field static final MAX_INTEGER_DIGITS:I = 0x77359400

.field static final MAX_SCIENTIFIC_INTEGER_DIGITS:I = 0x8

.field static final NULL_UNIT:Landroid/icu/text/DecimalFormat$Unit;

.field public static final PAD_AFTER_PREFIX:I = 0x1

.field public static final PAD_AFTER_SUFFIX:I = 0x3

.field public static final PAD_BEFORE_PREFIX:I = 0x0

.field public static final PAD_BEFORE_SUFFIX:I = 0x2

.field static final PATTERN_DECIMAL_SEPARATOR:C = '.'

.field static final PATTERN_DIGIT:C = '#'

.field static final PATTERN_EIGHT_DIGIT:C = '8'

.field static final PATTERN_EXPONENT:C = 'E'

.field static final PATTERN_FIVE_DIGIT:C = '5'

.field static final PATTERN_FOUR_DIGIT:C = '4'

.field static final PATTERN_GROUPING_SEPARATOR:C = ','

.field private static final PATTERN_MINUS:C = '-'

.field static final PATTERN_NINE_DIGIT:C = '9'

.field static final PATTERN_ONE_DIGIT:C = '1'

.field static final PATTERN_PAD_ESCAPE:C = '*'

.field private static final PATTERN_PERCENT:C = '%'

.field private static final PATTERN_PER_MILLE:C = '\u2030'

.field static final PATTERN_PLUS_SIGN:C = '+'

.field private static final PATTERN_SEPARATOR:C = ';'

.field static final PATTERN_SEVEN_DIGIT:C = '7'

.field static final PATTERN_SIGNIFICANT_DIGIT:C = '@'

.field static final PATTERN_SIX_DIGIT:C = '6'

.field static final PATTERN_THREE_DIGIT:C = '3'

.field static final PATTERN_TWO_DIGIT:C = '2'

.field static final PATTERN_ZERO_DIGIT:C = '0'

.field private static final QUOTE:C = '\''

.field private static final STATUS_INFINITE:I = 0x0

.field private static final STATUS_LENGTH:I = 0x3

.field private static final STATUS_POSITIVE:I = 0x1

.field private static final STATUS_UNDERFLOW:I = 0x2

.field private static final commaEquivalents:Landroid/icu/text/UnicodeSet;

.field static final currentSerialVersion:I = 0x4

.field private static final defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

.field private static final dotEquivalents:Landroid/icu/text/UnicodeSet;

.field private static epsilon:D = 0.0

.field static final minusSigns:Landroid/icu/text/UnicodeSet;

.field static final plusSigns:Landroid/icu/text/UnicodeSet;

.field static final roundingIncrementEpsilon:D = 1.0E-9

.field private static final serialVersionUID:J = 0xbff0362d872303aL

.field static final skipExtendedSeparatorParsing:Z

.field private static final strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

.field private static final strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

.field private static final strictDotEquivalents:Landroid/icu/text/UnicodeSet;


# instance fields
.field private PARSE_MAX_EXPONENT:I

.field private transient actualRoundingIncrement:Ljava/math/BigDecimal;

.field private transient actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

.field private transient affixPatternsForCurrency:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/DecimalFormat$AffixForCurrency;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/text/FieldPosition;",
            ">;"
        }
    .end annotation
.end field

.field private currencyChoice:Ljava/text/ChoiceFormat;

.field private currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

.field private currencySignCount:I

.field private currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

.field private decimalSeparatorAlwaysShown:Z

.field private transient digitList:Landroid/icu/text/DigitList;

.field private exponentSignAlwaysShown:Z

.field private formatPattern:Ljava/lang/String;

.field private formatWidth:I

.field private groupingSize:B

.field private groupingSize2:B

.field private transient isReadyForParsing:Z

.field private mathContext:Landroid/icu/math/MathContext;

.field private maxSignificantDigits:I

.field private minExponentDigits:B

.field private minSignificantDigits:I

.field private multiplier:I

.field private negPrefixPattern:Ljava/lang/String;

.field private negSuffixPattern:Ljava/lang/String;

.field private negativePrefix:Ljava/lang/String;

.field private negativeSuffix:Ljava/lang/String;

.field private pad:C

.field private padPosition:I

.field private parseBigDecimal:Z

.field parseRequireDecimalPoint:Z

.field private posPrefixPattern:Ljava/lang/String;

.field private posSuffixPattern:Ljava/lang/String;

.field private positivePrefix:Ljava/lang/String;

.field private positiveSuffix:Ljava/lang/String;

.field private transient roundingDouble:D

.field private transient roundingDoubleReciprocal:D

.field private roundingIncrement:Ljava/math/BigDecimal;

.field private transient roundingIncrementICU:Landroid/icu/math/BigDecimal;

.field private roundingMode:I

.field private serialVersionOnStream:I

.field private style:I

.field private symbols:Landroid/icu/text/DecimalFormatSymbols;

.field private useExponentialNotation:Z

.field private useSignificantDigits:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xa

    const/16 v2, 0xe

    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    sput-wide v0, Landroid/icu/text/DecimalFormat;->epsilon:D

    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x28

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat;->defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x26

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat;->strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat;->minusSigns:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat;->plusSigns:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v0, "android.icu.text.DecimalFormat.SkipExtendedSeparatorParsing"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/DecimalFormat;->skipExtendedSeparatorParsing:Z

    new-instance v0, Landroid/icu/text/DecimalFormat$Unit;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat$Unit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/DecimalFormat;->NULL_UNIT:Landroid/icu/text/DecimalFormat$Unit;

    return-void

    :array_0
    .array-data 4
        0x2e
        0x2e
        0x2024
        0x2024
        0x3002
        0x3002
        0xfe12
        0xfe12
        0xfe52
        0xfe52
        0xff0e
        0xff0e
        0xff61
        0xff61
    .end array-data

    :array_1
    .array-data 4
        0x2c
        0x2c
        0x60c
        0x60c
        0x66b
        0x66b
        0x3001
        0x3001
        0xfe10
        0xfe11
        0xfe50
        0xfe51
        0xff0c
        0xff0c
        0xff64
        0xff64
    .end array-data

    :array_2
    .array-data 4
        0x2e
        0x2e
        0x2024
        0x2024
        0xfe52
        0xfe52
        0xff0e
        0xff0e
        0xff61
        0xff61
    .end array-data

    :array_3
    .array-data 4
        0x2c
        0x2c
        0x66b
        0x66b
        0xfe10
        0xfe10
        0xfe50
        0xfe50
        0xff0c
        0xff0c
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x20
        0x27
        0x27
        0x2c
        0x2c
        0x2e
        0x2e
        0xa0
        0xa0
        0x60c
        0x60c
        0x66b
        0x66c
        0x2000
        0x200a
        0x2018
        0x2019
        0x2024
        0x2024
        0x202f
        0x202f
        0x205f
        0x205f
        0x3000
        0x3002
        0xfe10
        0xfe12
        0xfe50
        0xfe52
        0xff07
        0xff07
        0xff0c
        0xff0c
        0xff0e
        0xff0e
        0xff61
        0xff61
        0xff64
        0xff64
    .end array-data

    :array_5
    .array-data 4
        0x20
        0x20
        0x27
        0x27
        0x2c
        0x2c
        0x2e
        0x2e
        0xa0
        0xa0
        0x66b
        0x66c
        0x2000
        0x200a
        0x2018
        0x2019
        0x2024
        0x2024
        0x202f
        0x202f
        0x205f
        0x205f
        0x3000
        0x3000
        0xfe10
        0xfe10
        0xfe50
        0xfe50
        0xfe52
        0xfe52
        0xff07
        0xff07
        0xff0c
        0xff0c
        0xff0e
        0xff0e
        0xff61
        0xff61
    .end array-data

    :array_6
    .array-data 4
        0x2d
        0x2d
        0x207b
        0x207b
        0x208b
        0x208b
        0x2212
        0x2212
        0x2796
        0x2796
        0xfe63
        0xfe63
        0xff0d
        0xff0d
    .end array-data

    :array_7
    .array-data 4
        0x2b
        0x2b
        0x207a
        0x207a
        0x208a
        0x208a
        0x2795
        0x2795
        0xfb29
        0xfb29
        0xfe62
        0xfe62
        0xff0b
        0xff0b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    const/16 v2, 0x3e8

    iput v2, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    new-instance v2, Landroid/icu/text/DigitList;

    invoke-direct {v2}, Landroid/icu/text/DigitList;-><init>()V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string/jumbo v2, "-"

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v5, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    iput-byte v8, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v3, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v5, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    const/4 v2, 0x6

    iput v2, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    const/4 v2, 0x6

    iput v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    new-instance v2, Landroid/icu/math/MathContext;

    invoke-direct {v2, v3, v3}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    iput v3, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    const/16 v2, 0x20

    iput-char v2, p0, Landroid/icu/text/DecimalFormat;->pad:C

    iput v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v2, 0x4

    iput v2, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v3, p0, Landroid/icu/text/DecimalFormat;->style:I

    iput v3, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v3, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput-object v4, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/icu/text/DecimalFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v2, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    invoke-direct {p0, v1, v3}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    iget v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    if-ne v2, v8, :cond_0

    new-instance v2, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v2, v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    const/16 v1, 0x3e8

    iput v1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    new-instance v1, Landroid/icu/text/DigitList;

    invoke-direct {v1}, Landroid/icu/text/DigitList;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v6, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    iput-byte v7, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v6, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    const/4 v1, 0x6

    iput v1, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    const/4 v1, 0x6

    iput v1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    new-instance v1, Landroid/icu/math/MathContext;

    invoke-direct {v1, v2, v2}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    const/16 v1, 0x20

    iput-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v1, 0x4

    iput v1, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    iput v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v1, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    invoke-direct {p0, p1, v2}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    iget v1, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    if-ne v1, v7, :cond_0

    new-instance v1, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v1, v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    new-instance v0, Landroid/icu/text/DigitList;

    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string/jumbo v0, "-"

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v3, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    const/4 v0, 0x3

    iput-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v3, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    iput v6, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput v6, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    new-instance v0, Landroid/icu/math/MathContext;

    invoke-direct {v0, v1, v1}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    iput v1, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    const/16 v0, 0x20

    iput-char v0, p0, Landroid/icu/text/DecimalFormat;->pad:C

    iput v1, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v1, p0, Landroid/icu/text/DecimalFormat;->style:I

    iput v1, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v1, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V
    .locals 8

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    const/16 v1, 0x3e8

    iput v1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    new-instance v1, Landroid/icu/text/DigitList;

    invoke-direct {v1}, Landroid/icu/text/DigitList;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v5, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    const/4 v1, 0x3

    iput-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v5, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    iput v4, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput v4, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    new-instance v1, Landroid/icu/math/MathContext;

    invoke-direct {v1, v2, v2}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    const/16 v1, 0x20

    iput-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v1, 0x4

    iput v1, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    iput v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    const/4 v0, 0x0

    if-ne p3, v4, :cond_0

    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    :cond_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/text/DecimalFormat;->create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V
    .locals 8

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    const/16 v1, 0x3e8

    iput v1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    new-instance v1, Landroid/icu/text/DigitList;

    invoke-direct {v1}, Landroid/icu/text/DigitList;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string/jumbo v1, "-"

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v5, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    const/4 v1, 0x3

    iput-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v5, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    iput v4, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput v4, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    new-instance v1, Landroid/icu/math/MathContext;

    invoke-direct {v1, v2, v2}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    const/16 v1, 0x20

    iput-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v1, 0x4

    iput v1, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    iput v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput-object v3, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    move-object v0, p3

    if-ne p4, v4, :cond_0

    invoke-virtual {p3}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    :cond_0
    invoke-direct {p0, p1, p2, v0, p4}, Landroid/icu/text/DecimalFormat;->create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V

    return-void
.end method

.method private _setMaximumFractionDigits(I)V
    .locals 1

    const/16 v0, 0x154

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private addAttribute(Landroid/icu/text/NumberFormat$Field;II)V
    .locals 2

    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, p1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    invoke-virtual {v0, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v0, p3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    if-lez v3, :cond_2

    iget v3, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int v1, v3, v4

    if-lez v1, :cond_2

    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-char v3, p0, Landroid/icu/text/DecimalFormat;->pad:C

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    iget v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    return-void

    :pswitch_0
    invoke-virtual {p1, p3, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I
    .locals 15

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    if-eqz v1, :cond_3

    const/4 v10, 0x0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    :goto_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v10, v1, v9, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    return v1

    :cond_0
    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    if-eqz p3, :cond_c

    if-eqz p2, :cond_a

    iget-object v8, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_b

    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    :goto_2
    if-eqz p5, :cond_8

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v1, -0x1

    if-le v5, v1, :cond_4

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move/from16 v2, p3

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    :cond_4
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v1, -0x1

    if-le v5, v1, :cond_5

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move/from16 v2, p3

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    :cond_5
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v1, -0x1

    if-le v5, v1, :cond_6

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v2, p3

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    :cond_6
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v1, -0x1

    if-le v5, v1, :cond_7

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v2, p3

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    :cond_7
    const-string/jumbo v1, "\u00a4\u00a4\u00a4"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v1, -0x1

    if-le v5, v1, :cond_8

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v6, v1, v5

    move-object v1, p0

    move/from16 v2, p3

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    :cond_8
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_f

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int v14, v1, v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int v11, v14, v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_9
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    :cond_a
    iget-object v8, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    if-eqz p2, :cond_d

    iget-object v8, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    :goto_4
    if-eqz p2, :cond_e

    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    iget-object v8, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    goto :goto_4

    :cond_e
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_10

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int v14, v1, v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int v11, v14, v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_3

    :cond_10
    const-string/jumbo v1, "\u00a4\u00a4\u00a4"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_9

    const-string/jumbo v1, "\u00a4\u00a4\u00a4"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int v14, v1, v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    add-int v11, v1, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_3
.end method

.method private appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V
    .locals 8

    const/16 v6, 0x27

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    :goto_0
    if-nez v1, :cond_8

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_8
    if-nez p4, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    return-void

    :cond_a
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_4
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    if-eq v2, v5, :cond_b

    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v5

    if-ne v2, v5, :cond_d

    :cond_b
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :sswitch_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_c

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Malformed affix pattern: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_c
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    goto :goto_5

    :sswitch_1
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    goto :goto_4

    :sswitch_2
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    goto :goto_4

    :sswitch_3
    iget-object v5, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    goto :goto_4

    :cond_d
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0x27 -> :sswitch_0
        0x2d -> :sswitch_3
        0x2030 -> :sswitch_1
    .end sparse-switch
.end method

.method private applyPattern(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    return-void
.end method

.method private applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V
    .locals 60

    const/16 v56, 0x30

    const/16 v46, 0x40

    const/16 v25, 0x2c

    const/16 v12, 0x2e

    const/16 v40, 0x25

    const/16 v39, 0x2030

    const/16 v13, 0x23

    const/16 v45, 0x3b

    const/16 v58, 0x45

    invoke-static/range {v58 .. v58}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    const/16 v41, 0x2b

    const/16 v36, 0x2a

    const/16 v30, 0x2d

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v56

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getPadEscape()C

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v30

    :cond_0
    add-int/lit8 v58, v56, 0x9

    move/from16 v0, v58

    int-to-char v0, v0

    move/from16 v33, v0

    const/16 v22, 0x0

    const/16 v42, 0x0

    const/16 v38, 0x0

    :goto_0
    const/16 v58, 0x2

    move/from16 v0, v38

    move/from16 v1, v58

    if-ge v0, v1, :cond_5a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v58

    move/from16 v0, v42

    move/from16 v1, v58

    if-ge v0, v1, :cond_5a

    const/16 v52, 0x1

    const/16 v50, 0x0

    const/16 v49, 0x0

    const/16 v51, 0x0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, -0x1

    const/16 v31, 0x1

    const/4 v14, 0x0

    const/16 v57, 0x0

    const/4 v15, 0x0

    const/16 v47, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v37, -0x1

    const/16 v35, 0x0

    const/16 v26, -0x1

    const-wide/16 v28, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, v43

    move/from16 v48, v42

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v58

    move/from16 v0, v42

    move/from16 v1, v58

    if-ge v0, v1, :cond_2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    packed-switch v52, :pswitch_data_0

    :cond_1
    :goto_2
    add-int/lit8 v42, v42, 0x1

    goto :goto_1

    :pswitch_0
    if-ne v8, v13, :cond_4

    if-gtz v57, :cond_2

    if-lez v47, :cond_3

    :cond_2
    add-int/lit8 v15, v15, 0x1

    :goto_3
    if-ltz v23, :cond_1

    if-gez v11, :cond_1

    add-int/lit8 v58, v23, 0x1

    move/from16 v0, v58

    int-to-byte v0, v0

    move/from16 v23, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    move/from16 v0, v56

    if-lt v8, v0, :cond_8

    move/from16 v0, v33

    if-gt v8, v0, :cond_8

    :cond_5
    if-lez v15, :cond_6

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "Unexpected \'"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x27

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move/from16 v0, v46

    if-ne v8, v0, :cond_c

    add-int/lit8 v47, v47, 0x1

    :cond_7
    :goto_4
    if-ltz v23, :cond_1

    if-gez v11, :cond_1

    add-int/lit8 v58, v23, 0x1

    move/from16 v0, v58

    int-to-byte v0, v0

    move/from16 v23, v0

    goto :goto_2

    :cond_8
    move/from16 v0, v46

    if-eq v8, v0, :cond_5

    move/from16 v0, v25

    if-ne v8, v0, :cond_11

    const/16 v58, 0x27

    move/from16 v0, v58

    if-ne v8, v0, :cond_a

    add-int/lit8 v58, v42, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_a

    add-int/lit8 v58, v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v13, :cond_a

    move/from16 v0, v56

    if-lt v7, v0, :cond_9

    move/from16 v0, v33

    if-le v7, v0, :cond_a

    :cond_9
    const/16 v58, 0x27

    move/from16 v0, v58

    if-ne v7, v0, :cond_f

    add-int/lit8 v42, v42, 0x1

    :cond_a
    if-ltz v11, :cond_b

    const-string/jumbo v58, "Grouping separator after decimal"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move/from16 v24, v23

    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v57, v57, 0x1

    move/from16 v0, v56

    if-eq v8, v0, :cond_7

    add-int v58, v14, v57

    add-int v34, v58, v15

    if-ltz v26, :cond_d

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    const-wide/16 v58, 0xa

    mul-long v28, v28, v58

    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    :cond_d
    move/from16 v26, v34

    :cond_e
    sub-int v58, v8, v56

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    add-long v28, v28, v58

    goto :goto_4

    :cond_f
    if-gez v23, :cond_10

    const/16 v52, 0x3

    goto/16 :goto_2

    :cond_10
    const/16 v52, 0x2

    move-object/from16 v6, v53

    move/from16 v49, v42

    add-int/lit8 v42, v42, -0x1

    goto/16 :goto_2

    :cond_11
    if-ne v8, v12, :cond_13

    if-ltz v11, :cond_12

    const-string/jumbo v58, "Multiple decimal separators"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    add-int v58, v14, v57

    add-int v11, v58, v15

    goto/16 :goto_2

    :cond_13
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v58

    const/16 v59, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v42

    move-object/from16 v2, v21

    move/from16 v3, v59

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v58

    if-eqz v58, :cond_19

    if-ltz v19, :cond_14

    const-string/jumbo v58, "Multiple exponential symbols"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-ltz v23, :cond_15

    const-string/jumbo v58, "Grouping separator in exponential"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v58

    add-int v42, v42, v58

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v58

    move/from16 v0, v42

    move/from16 v1, v58

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v58

    move/from16 v0, v58

    move/from16 v1, v41

    if-ne v0, v1, :cond_16

    const/16 v20, 0x1

    add-int/lit8 v42, v42, 0x1

    :cond_16
    const/16 v19, 0x0

    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v58

    move/from16 v0, v42

    move/from16 v1, v58

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v58

    move/from16 v0, v58

    move/from16 v1, v56

    if-ne v0, v1, :cond_17

    add-int/lit8 v58, v19, 0x1

    move/from16 v0, v58

    int-to-byte v0, v0

    move/from16 v19, v0

    add-int/lit8 v42, v42, 0x1

    goto :goto_6

    :cond_17
    add-int v58, v14, v57

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_1a

    add-int v58, v47, v15

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_1a

    :cond_18
    :goto_7
    const-string/jumbo v58, "Malformed exponential"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const/16 v52, 0x2

    move-object/from16 v6, v53

    move/from16 v49, v42

    add-int/lit8 v42, v42, -0x1

    goto/16 :goto_2

    :cond_1a
    if-lez v47, :cond_1b

    if-gtz v14, :cond_18

    :cond_1b
    const/16 v58, 0x1

    move/from16 v0, v19

    move/from16 v1, v58

    if-ge v0, v1, :cond_19

    goto :goto_7

    :pswitch_1
    if-eq v8, v13, :cond_1c

    move/from16 v0, v25

    if-ne v8, v0, :cond_1d

    :cond_1c
    const/16 v58, 0x1

    move/from16 v0, v52

    move/from16 v1, v58

    if-ne v0, v1, :cond_20

    const/16 v52, 0x0

    move/from16 v50, v42

    add-int/lit8 v42, v42, -0x1

    goto/16 :goto_2

    :cond_1d
    if-eq v8, v12, :cond_1c

    move/from16 v0, v56

    if-lt v8, v0, :cond_1e

    move/from16 v0, v33

    if-le v8, v0, :cond_1c

    :cond_1e
    move/from16 v0, v46

    if-eq v8, v0, :cond_1c

    const/16 v58, 0xa4

    move/from16 v0, v58

    if-ne v8, v0, :cond_27

    add-int/lit8 v58, v42, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_24

    add-int/lit8 v58, v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v58

    const/16 v59, 0xa4

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_23

    const/16 v17, 0x1

    :goto_8
    if-eqz v17, :cond_26

    add-int/lit8 v42, v42, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v58, v42, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_25

    add-int/lit8 v58, v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v58

    const/16 v59, 0xa4

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_25

    add-int/lit8 v42, v42, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    :cond_1f
    :goto_9
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_20
    const/16 v58, 0x27

    move/from16 v0, v58

    if-ne v8, v0, :cond_22

    add-int/lit8 v58, v42, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_21

    add-int/lit8 v58, v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v58

    const/16 v59, 0x27

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_21

    add-int/lit8 v42, v42, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_21
    add-int/lit8 v52, v52, 0x2

    goto/16 :goto_2

    :cond_22
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "Unquoted special character \'"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x27

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_25
    const/4 v9, 0x2

    goto :goto_9

    :cond_26
    const/4 v9, 0x1

    goto :goto_9

    :cond_27
    const/16 v58, 0x27

    move/from16 v0, v58

    if-ne v8, v0, :cond_29

    add-int/lit8 v58, v42, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_28

    add-int/lit8 v58, v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v58

    const/16 v59, 0x27

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_28

    add-int/lit8 v42, v42, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_28
    add-int/lit8 v52, v52, 0x2

    goto/16 :goto_9

    :cond_29
    move/from16 v0, v45

    if-ne v8, v0, :cond_39

    const/16 v58, 0x1

    move/from16 v0, v52

    move/from16 v1, v58

    if-eq v0, v1, :cond_2a

    const/16 v58, 0x1

    move/from16 v0, v38

    move/from16 v1, v58

    if-ne v0, v1, :cond_2b

    :cond_2a
    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v59, "Unquoted special character \'"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v58

    const/16 v59, 0x27

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    move/from16 v51, v42

    add-int/lit8 v42, v42, 0x1

    :cond_2c
    const/16 v58, 0x3

    move/from16 v0, v52

    move/from16 v1, v58

    if-eq v0, v1, :cond_2d

    const/16 v58, 0x4

    move/from16 v0, v52

    move/from16 v1, v58

    if-ne v0, v1, :cond_2e

    :cond_2d
    const-string/jumbo v58, "Unterminated quote"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    if-nez v49, :cond_2f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v49

    :cond_2f
    if-nez v51, :cond_30

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v51

    :cond_30
    if-nez v57, :cond_32

    if-nez v47, :cond_32

    if-lez v14, :cond_32

    if-ltz v11, :cond_32

    move/from16 v32, v11

    if-nez v11, :cond_31

    add-int/lit8 v32, v32, 0x1

    :cond_31
    sub-int v15, v14, v32

    add-int/lit8 v14, v32, -0x1

    const/16 v57, 0x1

    :cond_32
    if-gez v11, :cond_44

    if-lez v15, :cond_44

    if-nez v47, :cond_44

    :cond_33
    :goto_a
    const-string/jumbo v58, "Malformed pattern"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    if-ltz v37, :cond_35

    move/from16 v0, v37

    move/from16 v1, v48

    if-ne v0, v1, :cond_47

    const/16 v37, 0x0

    :cond_35
    :goto_b
    if-nez v38, :cond_59

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    if-ltz v19, :cond_4b

    const/16 v58, 0x1

    :goto_c
    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v58, v0

    if-eqz v58, :cond_36

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    :cond_36
    add-int v58, v14, v57

    add-int v16, v58, v15

    if-ltz v11, :cond_4c

    move/from16 v18, v11

    :goto_d
    if-lez v47, :cond_4d

    const/16 v55, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    if-eqz v55, :cond_4e

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    add-int v58, v47, v15

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    :goto_f
    if-lez v23, :cond_52

    const/16 v58, 0x1

    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    if-lez v23, :cond_53

    move/from16 v58, v23

    :goto_11
    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/text/DecimalFormat;->groupingSize:B

    if-lez v24, :cond_54

    move/from16 v0, v24

    move/from16 v1, v23

    if-eq v0, v1, :cond_54

    :goto_12
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/DecimalFormat;->multiplier:I

    if-eqz v11, :cond_37

    move/from16 v0, v16

    if-ne v11, v0, :cond_55

    :cond_37
    const/16 v58, 0x1

    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    if-ltz v37, :cond_56

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/DecimalFormat;->padPosition:I

    sub-int v58, v49, v50

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/DecimalFormat;->formatWidth:I

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-char v0, v1, Landroid/icu/text/DecimalFormat;->pad:C

    :goto_14
    const-wide/16 v58, 0x0

    cmp-long v58, v28, v58

    if-eqz v58, :cond_58

    sub-int v44, v26, v18

    if-lez v44, :cond_57

    move/from16 v58, v44

    :goto_15
    move-wide/from16 v0, v28

    move/from16 v2, v58

    invoke-static {v0, v1, v2}, Landroid/icu/math/BigDecimal;->valueOf(JI)Landroid/icu/math/BigDecimal;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-gez v44, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    move-object/from16 v58, v0

    move/from16 v0, v44

    neg-int v0, v0

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    :cond_38
    const/16 v58, 0x6

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/DecimalFormat;->roundingMode:I

    :goto_16
    move-object/from16 v0, p0

    iput v9, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    :goto_17
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    :cond_39
    move/from16 v0, v40

    if-eq v8, v0, :cond_3a

    move/from16 v0, v39

    if-ne v8, v0, :cond_3e

    :cond_3a
    const/16 v58, 0x1

    move/from16 v0, v31

    move/from16 v1, v58

    if-eq v0, v1, :cond_3b

    const-string/jumbo v58, "Too many percent/permille characters"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    move/from16 v0, v40

    if-ne v8, v0, :cond_3c

    const/16 v31, 0x64

    :goto_18
    move/from16 v0, v40

    if-ne v8, v0, :cond_3d

    const/16 v8, 0x25

    goto/16 :goto_9

    :cond_3c
    const/16 v31, 0x3e8

    goto :goto_18

    :cond_3d
    const/16 v8, 0x2030

    goto/16 :goto_9

    :cond_3e
    move/from16 v0, v30

    if-ne v8, v0, :cond_3f

    const/16 v8, 0x2d

    goto/16 :goto_9

    :cond_3f
    move/from16 v0, v36

    if-ne v8, v0, :cond_1f

    if-ltz v37, :cond_40

    const-string/jumbo v58, "Multiple pad specifiers"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    add-int/lit8 v58, v42, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_41

    const-string/jumbo v58, "Invalid pad specifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    move/from16 v37, v42

    add-int/lit8 v42, v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v35

    goto/16 :goto_2

    :pswitch_2
    const/16 v58, 0x27

    move/from16 v0, v58

    if-ne v8, v0, :cond_42

    add-int/lit8 v58, v42, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v59

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_43

    add-int/lit8 v58, v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v58

    const/16 v59, 0x27

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_43

    add-int/lit8 v42, v42, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_42
    :goto_19
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_43
    add-int/lit8 v52, v52, -0x2

    goto :goto_19

    :cond_44
    if-ltz v11, :cond_45

    if-gtz v47, :cond_33

    if-lt v11, v14, :cond_33

    add-int v58, v14, v57

    move/from16 v0, v58

    if-gt v11, v0, :cond_33

    :cond_45
    if-eqz v23, :cond_33

    if-eqz v24, :cond_33

    if-lez v47, :cond_46

    if-gtz v57, :cond_33

    :cond_46
    const/16 v58, 0x2

    move/from16 v0, v52

    move/from16 v1, v58

    if-le v0, v1, :cond_34

    goto/16 :goto_a

    :cond_47
    add-int/lit8 v58, v37, 0x2

    move/from16 v0, v58

    move/from16 v1, v50

    if-ne v0, v1, :cond_48

    const/16 v37, 0x1

    goto/16 :goto_b

    :cond_48
    move/from16 v0, v37

    move/from16 v1, v49

    if-ne v0, v1, :cond_49

    const/16 v37, 0x2

    goto/16 :goto_b

    :cond_49
    add-int/lit8 v58, v37, 0x2

    move/from16 v0, v58

    move/from16 v1, v51

    if-ne v0, v1, :cond_4a

    const/16 v37, 0x3

    goto/16 :goto_b

    :cond_4a
    const-string/jumbo v58, "Illegal pad position"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_4b
    const/16 v58, 0x0

    goto/16 :goto_c

    :cond_4c
    move/from16 v18, v16

    goto/16 :goto_d

    :cond_4d
    const/16 v55, 0x0

    goto/16 :goto_e

    :cond_4e
    sub-int v27, v18, v14

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v58, v0

    if-eqz v58, :cond_4f

    add-int v58, v14, v27

    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    if-ltz v11, :cond_50

    sub-int v58, v16, v11

    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    if-ltz v11, :cond_51

    add-int v58, v14, v57

    sub-int v58, v58, v11

    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    goto/16 :goto_f

    :cond_4f
    const/16 v58, 0x135

    goto :goto_1a

    :cond_50
    const/16 v58, 0x0

    goto :goto_1b

    :cond_51
    const/16 v58, 0x0

    goto :goto_1c

    :cond_52
    const/16 v58, 0x0

    goto/16 :goto_10

    :cond_53
    const/16 v58, 0x0

    goto/16 :goto_11

    :cond_54
    const/16 v24, 0x0

    goto/16 :goto_12

    :cond_55
    const/16 v58, 0x0

    goto/16 :goto_13

    :cond_56
    const/16 v58, 0x0

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/DecimalFormat;->formatWidth:I

    goto/16 :goto_14

    :cond_57
    const/16 v58, 0x0

    goto/16 :goto_15

    :cond_58
    const/16 v58, 0x0

    check-cast v58, Landroid/icu/math/BigDecimal;

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    goto/16 :goto_16

    :cond_59
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    const/16 v22, 0x1

    goto/16 :goto_17

    :cond_5a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v58

    if-nez v58, :cond_5b

    const-string/jumbo v58, ""

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    const/16 v58, 0x135

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/16 v58, 0x154

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    :cond_5b
    if-eqz v22, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_5d

    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v59, 0x2d

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    :cond_5d
    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v58, v0

    if-eqz v58, :cond_5f

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v54

    if-eqz v54, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    move-object/from16 v58, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v58

    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    move-object/from16 v58, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    :cond_5e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v58, v0

    const/16 v59, 0x3

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    move-object/from16 v58, v0

    if-nez v58, :cond_5f

    new-instance v58, Landroid/icu/text/CurrencyPluralInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v59, v0

    invoke-virtual/range {v59 .. v59}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    :cond_5f
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I
    .locals 6

    if-nez p8, :cond_0

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move v3, p2

    move v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->compareComplexAffix(Ljava/lang/String;Ljava/lang/String;II[Landroid/icu/util/Currency;)I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    if-eqz v0, :cond_2

    if-nez p6, :cond_0

    :cond_2
    if-eqz p4, :cond_4

    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1, p2}, Landroid/icu/text/DecimalFormat;->compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    :goto_1
    invoke-static {v0, p1, p2}, Landroid/icu/text/DecimalFormat;->compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_5
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    goto :goto_1
.end method

.method private compareComplexAffix(Ljava/lang/String;Ljava/lang/String;II[Landroid/icu/util/Currency;)I
    .locals 15

    move/from16 v11, p3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_b

    if-ltz p3, :cond_b

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v13, 0x27

    if-ne v2, v13, :cond_3

    move v4, v5

    :goto_1
    const/16 v13, 0x27

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v4, :cond_1

    const/16 v13, 0x27

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    move-result p3

    add-int/lit8 v4, v8, 0x1

    goto :goto_0

    :cond_1
    if-le v8, v4, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;ILjava/lang/String;)I

    move-result p3

    add-int/lit8 v4, v8, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x27

    if-ne v13, v14, :cond_0

    const/16 v13, 0x27

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    move-result p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    throw v13

    :cond_3
    sparse-switch v2, :sswitch_data_0

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    move-result p3

    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xa4

    if-ne v13, v14, :cond_7

    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_d

    add-int/lit8 v4, v5, 0x1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xa4

    if-ne v13, v14, :cond_8

    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    :cond_4
    sget-object v13, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v13}, Landroid/icu/text/DecimalFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v12

    if-nez v12, :cond_5

    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    sget-object v14, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v13, v14}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v12

    :cond_5
    new-instance v10, Ljava/text/ParsePosition;

    move/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v12, v0, v1, v10}, Landroid/icu/util/Currency;->parse(Landroid/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    if-eqz p5, :cond_9

    invoke-static {v7}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, p5, v14

    :cond_6
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getEffectiveCurrency()Landroid/icu/util/Currency;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_6

    const/16 p3, -0x1

    goto/16 :goto_0

    :cond_a
    const/16 p3, -0x1

    goto/16 :goto_0

    :sswitch_1
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    goto/16 :goto_2

    :sswitch_2
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    goto/16 :goto_2

    :sswitch_3
    iget-object v13, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    goto/16 :goto_2

    :cond_b
    sub-int v13, p3, v11

    return v13

    :cond_c
    move v4, v5

    goto/16 :goto_0

    :cond_d
    move v4, v5

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2d -> :sswitch_3
        0xa4 -> :sswitch_0
        0x2030 -> :sswitch_2
    .end sparse-switch
.end method

.method private static compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 12

    const/4 v11, -0x1

    move v7, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    invoke-static {p0}, Landroid/icu/text/DecimalFormat;->trimMarksFromAffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    const/4 v1, 0x0

    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_b

    invoke-static {v8, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v4, 0x0

    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge p2, v9, :cond_2

    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_6

    const/4 v4, 0x1

    add-int/2addr v1, v3

    add-int/2addr p2, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v1, v9, :cond_5

    :cond_2
    :goto_3
    invoke-static {v8, v1}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    move v6, p2

    invoke-static {p1, p2}, Landroid/icu/text/DecimalFormat;->skipUWhiteSpace(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v6, :cond_3

    if-eqz v4, :cond_7

    :cond_3
    invoke-static {v8, v1}, Landroid/icu/text/DecimalFormat;->skipUWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_4
    move-object v8, p0

    goto :goto_0

    :cond_5
    invoke-static {v8, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    :cond_6
    invoke-static {v2}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    return v11

    :cond_8
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge p2, v9, :cond_a

    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    if-nez v5, :cond_9

    invoke-static {v2, v0}, Landroid/icu/text/DecimalFormat;->equalWithSignCompatibility(II)Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/2addr v1, v3

    add-int/2addr p2, v3

    const/4 v5, 0x1

    goto :goto_4

    :cond_9
    invoke-static {v2}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_a
    if-nez v5, :cond_0

    return v11

    :cond_b
    sub-int v9, p2, v7

    return v9
.end method

.method private countCodePoints(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V
    .locals 3

    const/4 v1, 0x6

    if-eq p4, v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    :goto_0
    iput p4, p0, Landroid/icu/text/DecimalFormat;->style:I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object p3, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    const-string/jumbo v2, "other"

    invoke-virtual {v1, v2}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    goto :goto_0
.end method

.method private createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/16 v0, 0xa4

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static equalWithSignCompatibility(II)Z
    .locals 1

    if-eq p0, p1, :cond_1

    sget-object v0, Landroid/icu/text/DecimalFormat;->minusSigns:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/DecimalFormat;->minusSigns:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/icu/text/DecimalFormat;->plusSigns:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/icu/text/DecimalFormat;->plusSigns:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/icu/text/DecimalFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V
    .locals 16

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_d

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v13, 0x27

    if-ne v2, v13, :cond_3

    move v4, v5

    :goto_1
    const/16 v13, 0x27

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v4, :cond_1

    const/16 v13, 0x27

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v8, 0x1

    goto :goto_0

    :cond_1
    if-le v8, v4, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v8, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x27

    if-ne v13, v14, :cond_0

    const/16 v13, 0x27

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    throw v13

    :cond_3
    sparse-switch v2, :sswitch_data_0

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xa4

    if-ne v13, v14, :cond_6

    const/4 v6, 0x1

    :goto_3
    const/4 v10, 0x0

    if-eqz v6, :cond_e

    add-int/lit8 v4, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xa4

    if-ne v13, v14, :cond_4

    const/4 v10, 0x1

    const/4 v6, 0x0

    add-int/lit8 v4, v4, 0x1

    :cond_4
    :goto_4
    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v3

    if-eqz v3, :cond_b

    if-eqz v10, :cond_7

    if-eqz p2, :cond_7

    const/4 v13, 0x1

    new-array v7, v13, [Z

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v13

    const/4 v14, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v3, v13, v14, v0, v7}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v12

    :cond_5
    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    if-nez v6, :cond_a

    const/4 v13, 0x1

    new-array v7, v13, [Z

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14, v7}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-boolean v13, v7, v13

    if-eqz v13, :cond_5

    if-nez p4, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    if-nez v13, :cond_8

    new-instance v13, Ljava/text/ChoiceFormat;

    invoke-direct {v13, v12}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    :cond_8
    const/16 v13, 0xa4

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_9
    new-instance v11, Ljava/text/FieldPosition;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Ljava/text/FieldPosition;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    invoke-virtual {v14}, Landroid/icu/text/DigitList;->getDouble()D

    move-result-wide v14

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v15, v0, v11}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_b
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    goto/16 :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    goto/16 :goto_2

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v5

    goto/16 :goto_0

    :cond_d
    return-void

    :cond_e
    move v4, v5

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2d -> :sswitch_3
        0xa4 -> :sswitch_0
        0x2030 -> :sswitch_2
    .end sparse-switch
.end method

.method private expandAffixAdjustWidth(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    iget v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    :cond_0
    return-void
.end method

.method private expandAffixes(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 29

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_1

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v9}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v9}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v6, v7}, Landroid/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    return-object p3

    :cond_3
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v6, v7, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v6, v7, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_1

    :cond_5
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat;->multiply(D)D

    move-result-wide p1

    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat;->isNegative(D)Z

    move-result v8

    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat;->round(D)D

    move-result-wide p1

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v9, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    move-result v27

    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_7

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v9}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v9}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_8
    :goto_3
    const/4 v9, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    return-object p3

    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v6, v7, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto :goto_2

    :cond_a
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v6, v7, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    move-result v26

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-eqz v6, :cond_c

    if-lez v26, :cond_c

    const-wide/16 v6, 0x0

    cmpl-double v6, p1, v6

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget v6, v0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_c

    rsub-int/lit8 v6, v26, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    add-int v25, v6, v7

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    if-gez v25, :cond_d

    sget-object v6, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    move/from16 v0, v25

    neg-int v7, v0

    invoke-virtual {v6, v7}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v14

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    move/from16 v16, v0

    move-wide/from16 v10, p1

    move/from16 v17, v8

    invoke-static/range {v10 .. v17}, Landroid/icu/text/DecimalFormat;->round(DDDIZ)D

    move-result-wide p1

    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    monitor-enter v7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-nez v6, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    :goto_5
    move-wide/from16 v0, p1

    move/from16 v2, v26

    invoke-virtual {v9, v0, v1, v2, v6}, Landroid/icu/text/DigitList;->set(DIZ)V

    const/16 v23, 0x0

    move-object/from16 v17, p0

    move-wide/from16 v18, p1

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move/from16 v22, v8

    move/from16 v24, p5

    invoke-direct/range {v17 .. v24}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    monitor-exit v7

    return-object v6

    :cond_d
    sget-object v6, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    goto :goto_4

    :cond_e
    const/4 v6, 0x1

    goto :goto_5

    :cond_f
    const/4 v6, 0x0

    goto :goto_5

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 17

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-eqz v5, :cond_0

    invoke-static/range {p1 .. p2}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v5, v1, v2}, Landroid/icu/text/DecimalFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    return-object v5

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gez v5, :cond_3

    const/4 v10, 0x1

    :goto_0
    if-eqz v10, :cond_1

    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gez v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    int-to-long v6, v5

    const-wide/high16 v8, -0x8000000000000000L

    div-long v14, v8, v6

    cmp-long v5, p1, v14

    if-gtz v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_7

    if-eqz v10, :cond_2

    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    :cond_2
    invoke-static/range {p1 .. p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v5

    return-object v5

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    int-to-long v6, v5

    const-wide v8, 0x7fffffffffffffffL

    div-long v14, v8, v6

    cmp-long v5, p1, v14

    if-lez v5, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    int-to-long v6, v5

    mul-long p1, p1, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    move-result v6

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1, v6}, Landroid/icu/text/DigitList;->set(JI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    invoke-virtual {v5}, Landroid/icu/text/DigitList;->wasRounded()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8

    new-instance v5, Ljava/lang/ArithmeticException;

    const-string/jumbo v6, "Rounding necessary"

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v13

    throw v5

    :cond_8
    move-wide/from16 v0, p1

    long-to-double v6, v0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v12, p5

    :try_start_1
    invoke-direct/range {v5 .. v12}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    monitor-exit v13

    return-object v5
.end method

.method private format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 10

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    iget v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_1
    iget-object v9, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    monitor-enter v9

    :try_start_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    move-result v3

    iget-boolean v1, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Landroid/icu/text/DigitList;->set(Ljava/math/BigDecimal;IZ)V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    invoke-virtual {v1}, Landroid/icu/text/DigitList;->wasRounded()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-gez v1, :cond_5

    :goto_1
    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v9

    return-object v0

    :cond_5
    move v6, v0

    goto :goto_1
.end method

.method private format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_1
    iget-object v7, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    monitor-enter v7

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/icu/text/DigitList;->set(Ljava/math/BigInteger;I)V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    invoke-virtual {v1}, Landroid/icu/text/DigitList;->wasRounded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-gez v2, :cond_3

    :goto_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DecimalFormat;->subformat(ILjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v7

    return-object v0

    :cond_3
    move v4, v0

    goto :goto_0
.end method

.method private formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V
    .locals 2

    move v0, p4

    if-nez p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int v0, p4, v1

    :cond_0
    add-int v1, v0, p5

    invoke-direct {p0, p2, v0, v1}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    return-void
.end method

.method private getEquivalentDecimals(CZ)Landroid/icu/text/UnicodeSet;
    .locals 2

    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    if-eqz p2, :cond_2

    sget-object v1, Landroid/icu/text/DecimalFormat;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/icu/text/DecimalFormat;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Landroid/icu/text/DecimalFormat;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/icu/text/DecimalFormat;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/icu/text/DecimalFormat;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Landroid/icu/text/DecimalFormat;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_3
    sget-object v1, Landroid/icu/text/DecimalFormat;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/icu/text/DecimalFormat;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method private static isBidiMark(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x200e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x200f

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x61c

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupingPosition(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    if-lez v1, :cond_0

    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    if-lez v1, :cond_2

    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    if-le p1, v1, :cond_2

    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    sub-int v1, p1, v1

    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-byte v1, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    rem-int v1, p1, v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNegative(D)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    cmpg-double v2, p1, v4

    if-ltz v2, :cond_0

    cmpl-double v2, p1, v4

    if-nez v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static final match(Ljava/lang/String;II)I
    .locals 4

    const/4 v3, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormat;->skipBidiMarks(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, p1

    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_4

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, p2, :cond_5

    :cond_4
    return v3

    :cond_5
    invoke-static {p2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Landroid/icu/text/DecimalFormat;->skipBidiMarks(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method static final match(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ltz p1, :cond_1

    invoke-static {p2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    move-result p1

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v1}, Landroid/icu/text/DecimalFormat;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private multiply(D)D
    .locals 3

    iget v0, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method private parse(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;)Ljava/lang/Object;
    .locals 26

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v16

    move/from16 v19, v16

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v19

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v19, v19, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v19

    :cond_3
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    new-instance v4, Ljava/lang/Double;

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    :cond_4
    move/from16 v19, v16

    const/4 v4, 0x3

    new-array v8, v4, [Z

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/icu/text/DecimalFormat;->parseForCurrency(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;[Z)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    return-object v4

    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v15}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v4, 0x0

    return-object v4

    :cond_6
    const/16 v23, 0x0

    const/4 v4, 0x0

    aget-boolean v4, v8, v4

    if-eqz v4, :cond_a

    new-instance v23, Ljava/lang/Double;

    const/4 v4, 0x1

    aget-boolean v4, v8, v4

    if-eqz v4, :cond_9

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    :cond_7
    :goto_1
    if-eqz p3, :cond_8

    new-instance v4, Landroid/icu/util/CurrencyAmount;

    const/4 v5, 0x0

    aget-object v5, p3, v5

    move-object/from16 v0, v23

    invoke-direct {v4, v0, v5}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    move-object/from16 v23, v4

    :cond_8
    return-object v23

    :cond_9
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_a
    const/4 v4, 0x2

    aget-boolean v4, v8, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    aget-boolean v4, v8, v4

    if-eqz v4, :cond_b

    new-instance v23, Ljava/lang/Double;

    const-string/jumbo v4, "0.0"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    :goto_2
    goto :goto_1

    :cond_b
    new-instance v23, Ljava/lang/Double;

    const-string/jumbo v4, "-0.0"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const/4 v4, 0x1

    aget-boolean v4, v8, v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    invoke-virtual {v4}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v23, Ljava/lang/Double;

    const-string/jumbo v4, "-0.0"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    move/from16 v22, v0

    :goto_3
    rem-int/lit8 v4, v22, 0xa

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    iget v5, v4, Landroid/icu/text/DigitList;->decimalAt:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/icu/text/DigitList;->decimalAt:I

    div-int/lit8 v22, v22, 0xa

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    if-nez v4, :cond_14

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    invoke-virtual {v4}, Landroid/icu/text/DigitList;->isIntegral()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    iget v4, v4, Landroid/icu/text/DigitList;->decimalAt:I

    const/16 v5, 0xc

    if-ge v4, v5, :cond_12

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    iget v4, v4, Landroid/icu/text/DigitList;->count:I

    if-lez v4, :cond_11

    const/16 v24, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    iget v4, v4, Landroid/icu/text/DigitList;->count:I

    move/from16 v0, v24

    if-ge v0, v4, :cond_f

    const-wide/16 v4, 0xa

    mul-long v4, v4, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    iget-object v6, v6, Landroid/icu/text/DigitList;->digits:[B

    add-int/lit8 v25, v24, 0x1

    aget-byte v6, v6, v24

    int-to-char v6, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x30

    sub-long v20, v4, v6

    move/from16 v24, v25

    goto :goto_4

    :cond_f
    :goto_5
    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    iget v4, v4, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v0, v24

    if-ge v0, v4, :cond_10

    const-wide/16 v4, 0xa

    mul-long v20, v20, v4

    move/from16 v24, v25

    goto :goto_5

    :cond_10
    const/4 v4, 0x1

    aget-boolean v4, v8, v4

    if-nez v4, :cond_11

    move-wide/from16 v0, v20

    neg-long v0, v0

    move-wide/from16 v20, v0

    :cond_11
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const/4 v5, 0x1

    aget-boolean v5, v8, v5

    invoke-virtual {v4, v5}, Landroid/icu/text/DigitList;->getBigInteger(Z)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_13

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    goto/16 :goto_1

    :cond_13
    move-object/from16 v23, v18

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const/4 v5, 0x1

    aget-boolean v5, v8, v5

    invoke-virtual {v4, v5}, Landroid/icu/text/DigitList;->getBigDecimalICU(Z)Landroid/icu/math/BigDecimal;

    move-result-object v17

    move-object/from16 v23, v17

    const/4 v4, 0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_7

    move/from16 v0, v22

    int-to-long v4, v0

    invoke-static {v4, v5}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v23

    goto/16 :goto_1
.end method

.method private parseForCurrency(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;[Z)Z
    .locals 24

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->setupCurrencyAffixForAllPatterns()V

    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    :cond_0
    move/from16 v19, v20

    const/16 v18, -0x1

    const/16 v23, 0x0

    const/4 v2, 0x3

    new-array v6, v2, [Z

    new-instance v4, Ljava/text/ParsePosition;

    move/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v5, Landroid/icu/text/DigitList;

    invoke-direct {v5}, Landroid/icu/text/DigitList;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/DecimalFormat;->style:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v16

    :goto_1
    if-eqz v16, :cond_5

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move/from16 v0, v20

    if-le v2, v0, :cond_1

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v19

    move-object/from16 v23, v6

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/text/DecimalFormat$AffixForCurrency;

    const/4 v2, 0x3

    new-array v6, v2, [Z

    new-instance v4, Ljava/text/ParsePosition;

    move/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v5, Landroid/icu/text/DigitList;

    invoke-direct {v5}, Landroid/icu/text/DigitList;-><init>()V

    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getNegPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getNegSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getPosPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getPosSuffix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14}, Landroid/icu/text/DecimalFormat$AffixForCurrency;->getPatternType()I

    move-result v13

    const/4 v12, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v16, 0x1

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_2

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v19

    move-object/from16 v23, v6

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v16

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v18

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_2

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v18

    goto/16 :goto_3

    :cond_7
    const/4 v2, 0x3

    new-array v6, v2, [Z

    new-instance v4, Ljava/text/ParsePosition;

    move/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v5, Landroid/icu/text/DigitList;

    invoke-direct {v5}, Landroid/icu/text/DigitList;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v13}, Landroid/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_8

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v19

    move-object/from16 v23, v6

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    :cond_8
    const/16 v16, 0x1

    :cond_9
    :goto_4
    if-nez v16, :cond_c

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_a
    return v16

    :cond_b
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_9

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v18

    goto :goto_4

    :cond_c
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/16 v17, 0x0

    :goto_5
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ge v0, v2, :cond_a

    aget-boolean v2, v23, v17

    aput-boolean v2, p4, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_5
.end method

.method private patternError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in pattern \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private precision(Z)I
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v5, 0x0

    const v4, 0x77359400

    const/16 v1, 0x154

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    if-le v0, v4, :cond_0

    invoke-virtual {p0, v4}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-direct {p0, v1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    :cond_1
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    invoke-direct {p0, v5}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    const/4 v0, 0x6

    iput v0, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    iput v2, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    const/16 v0, 0x20

    iput-char v0, p0, Landroid/icu/text/DecimalFormat;->pad:C

    iput v2, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    iput-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    :cond_2
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    :cond_3
    iget v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    if-ge v0, v3, :cond_4

    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    :cond_4
    iput v3, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v0, Landroid/icu/text/DigitList;

    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/icu/math/BigDecimal;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    :cond_5
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    return-void
.end method

.method private resetActualRounding()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/math/BigDecimal;->movePointLeft(I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    invoke-virtual {v2, v0}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    :goto_1
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->setRoundingDouble(D)V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    :goto_2
    return-void

    :cond_0
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    invoke-virtual {v0, v2}, Landroid/icu/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->isScientificNotation()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/math/BigDecimal;->movePointLeft(I)Landroid/icu/math/BigDecimal;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    goto :goto_1

    :cond_6
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iput-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    invoke-virtual {v1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->setRoundingDouble(D)V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    invoke-virtual {v1}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrement:Ljava/math/BigDecimal;

    goto :goto_2
.end method

.method private round(D)D
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->isNegative(D)Z

    move-result v7

    if-eqz v7, :cond_0

    neg-double p1, p1

    :cond_0
    iget-wide v0, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    iget-wide v4, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    iget v6, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    move-wide v0, p1

    invoke-static/range {v0 .. v7}, Landroid/icu/text/DecimalFormat;->round(DDDIZ)D

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method private static round(DDDIZ)D
    .locals 18

    const-wide/16 v14, 0x0

    cmpl-double v14, p4, v14

    if-nez v14, :cond_0

    div-double v6, p0, p2

    :goto_0
    packed-switch p6, :pswitch_data_0

    :pswitch_0
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    sub-double v4, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    sub-double v10, v6, v8

    packed-switch p6, :pswitch_data_1

    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid rounding mode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p6

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    mul-double v6, p0, p4

    goto :goto_0

    :pswitch_1
    if-eqz p7, :cond_1

    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    :goto_1
    const-wide/16 v14, 0x0

    cmpl-double v14, p4, v14

    if-nez v14, :cond_9

    mul-double p0, v6, p2

    :goto_2
    return-wide p0

    :cond_1
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    sub-double v14, v6, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    goto :goto_1

    :pswitch_2
    if-eqz p7, :cond_2

    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    sub-double v14, v6, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    goto :goto_1

    :cond_2
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    goto :goto_1

    :pswitch_3
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    goto :goto_1

    :pswitch_4
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    sub-double v14, v6, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    goto :goto_1

    :pswitch_5
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    cmpl-double v14, v6, v14

    if-eqz v14, :cond_3

    new-instance v14, Ljava/lang/ArithmeticException;

    const-string/jumbo v15, "Rounding necessary"

    invoke-direct {v14, v15}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_3
    return-wide p0

    :pswitch_6
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr v14, v10

    cmpg-double v14, v14, v4

    if-gez v14, :cond_4

    move-wide v6, v8

    goto :goto_1

    :cond_4
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr v14, v4

    cmpg-double v14, v14, v10

    if-gez v14, :cond_5

    move-wide v6, v2

    goto :goto_1

    :cond_5
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v12, v8, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    cmpl-double v14, v12, v14

    if-nez v14, :cond_6

    move-wide v6, v8

    goto :goto_1

    :cond_6
    move-wide v6, v2

    goto :goto_1

    :pswitch_7
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr v14, v4

    cmpg-double v14, v10, v14

    if-gtz v14, :cond_7

    move-wide v6, v8

    goto :goto_1

    :cond_7
    move-wide v6, v2

    goto :goto_1

    :pswitch_8
    sget-wide v14, Landroid/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr v14, v10

    cmpg-double v14, v4, v14

    if-gtz v14, :cond_8

    move-wide v6, v2

    goto :goto_1

    :cond_8
    move-wide v6, v8

    goto :goto_1

    :cond_9
    div-double p0, v6, p4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private setCurrencyForSymbols()V
    .locals 3

    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    goto :goto_0
.end method

.method private setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method private setRoundingDouble(D)V
    .locals 9

    const-wide/16 v6, 0x0

    iput-wide p1, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDouble:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v0, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    iget-wide v2, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide v6, p0, Landroid/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    goto :goto_0
.end method

.method private setupCurrencyAffixForAllPatterns()V
    .locals 11

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    if-nez v1, :cond_0

    new-instance v1, Landroid/icu/text/CurrencyPluralInfo;

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iget-object v10, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/icu/text/DecimalFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    new-instance v0, Landroid/icu/text/DecimalFormat$AffixForCurrency;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1}, Landroid/icu/text/CurrencyPluralInfo;->pluralPatternIterator()Ljava/util/Iterator;

    move-result-object v8

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1, v9}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, v6, v1}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    new-instance v0, Landroid/icu/text/DecimalFormat$AffixForCurrency;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v10, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    return-void
.end method

.method private static skipBidiMarks(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return p1

    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method private final skipPadding(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private static skipPatternWhiteSpace(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return p1

    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method private static skipUWhiteSpace(Ljava/lang/String;I)I
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return p1

    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method private subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 7

    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method private subformat(ILjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 7

    iget v0, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    int-to-double v2, p1

    invoke-virtual {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method private subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 7

    iget v0, p0, Landroid/icu/text/DecimalFormat;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v0, p1}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Landroid/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method private subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    invoke-virtual {v0}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    iput v8, v0, Landroid/icu/text/DigitList;->decimalAt:I

    :cond_0
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    move-result v6

    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p5}, Landroid/icu/text/DecimalFormat;->subformatExponential(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)V

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, v8

    move-object v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    move-result v7

    invoke-direct {p0, p1, p2, v6, v7}, Landroid/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    return-object p1

    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/icu/text/DecimalFormat;->subformatFixed(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZ)V

    goto :goto_0
.end method

.method private subformatExponential(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getDigitsLocal()[C

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v28, v0

    if-nez v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v28

    if-nez v28, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/16 v28, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, -0x1

    const/4 v12, -0x1

    const/16 v21, 0x0

    if-eqz v27, :cond_10

    const/16 v22, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    move-result v28

    add-int/lit8 v21, v28, -0x1

    :cond_1
    :goto_2
    const-wide/16 v14, 0x0

    const/4 v13, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v11, v0, Landroid/icu/text/DigitList;->decimalAt:I

    const/16 v28, 0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-le v0, v1, :cond_13

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    if-lez v11, :cond_12

    add-int/lit8 v28, v11, -0x1

    div-int v11, v28, v20

    :goto_3
    mul-int v11, v11, v20

    :goto_4
    add-int v23, v22, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v28

    if-eqz v28, :cond_16

    move/from16 v19, v22

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    move/from16 v26, v23

    :cond_2
    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    move/from16 v26, v19

    :cond_3
    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_1a

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v28

    if-nez v28, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_4
    :goto_7
    if-eqz p3, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v17

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    add-int/lit8 v5, v28, -0x1

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v5, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_9
    :goto_8
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/icu/text/UFieldPosition;

    move/from16 v25, v0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    move-result v6

    :goto_9
    aget-char v28, v7, v6

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v25, :cond_b

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v28, 0xa

    mul-long v14, v14, v28

    int-to-long v0, v6

    move-wide/from16 v28, v0

    add-long v14, v14, v28

    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v4

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    const/16 v28, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/16 v28, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_1

    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    const/16 v28, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v21

    const/16 v28, 0x8

    move/from16 v0, v20

    move/from16 v1, v28

    if-le v0, v1, :cond_11

    const/16 v20, 0x1

    const/16 v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    move/from16 v20, v22

    :cond_11
    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    const/16 v22, 0x1

    goto/16 :goto_2

    :cond_12
    div-int v28, v11, v20

    add-int/lit8 v11, v28, -0x1

    goto/16 :goto_3

    :cond_13
    if-gtz v22, :cond_14

    if-lez v21, :cond_15

    :cond_14
    move/from16 v28, v22

    :goto_a
    sub-int v11, v11, v28

    goto/16 :goto_4

    :cond_15
    const/16 v28, 0x1

    goto :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v28, v0

    sub-int v19, v28, v11

    goto/16 :goto_5

    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_7

    :cond_18
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_8

    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v28

    if-eqz v28, :cond_1b

    if-nez v26, :cond_1b

    const/16 v28, 0x0

    aget-char v28, v7, v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v28

    if-nez v28, :cond_2a

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v28

    if-gez v28, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_1c
    :goto_b
    if-eqz v25, :cond_1d

    move-object/from16 v28, p2

    check-cast v28, Landroid/icu/text/UFieldPosition;

    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14, v15}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    :cond_1d
    if-eqz p3, :cond_1f

    if-gez v18, :cond_1e

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v17

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_1e
    if-lez v12, :cond_1f

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v12, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_1f
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_21
    if-eqz p3, :cond_22

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    sub-int v29, v29, v30

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v28

    if-eqz v28, :cond_23

    const/4 v11, 0x0

    :cond_23
    if-gez v11, :cond_2f

    const/16 v24, 0x1

    :goto_c
    if-nez v24, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    move/from16 v28, v0

    if-eqz v28, :cond_25

    :cond_24
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_25
    if-eqz v24, :cond_30

    neg-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getMinusString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_26

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_26
    :goto_d
    if-nez v24, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    move/from16 v28, v0

    if-eqz v28, :cond_28

    :cond_27
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_28

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    int-to-long v0, v11

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DigitList;->set(J)V

    move-object/from16 v0, p0

    iget-byte v9, v0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v28, v0

    if-eqz v28, :cond_29

    const/16 v28, 0x1

    move/from16 v0, v28

    if-ge v9, v0, :cond_29

    const/4 v9, 0x1

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v16, v0

    :goto_e
    move/from16 v0, v16

    if-ge v0, v9, :cond_31

    const/16 v28, 0x0

    aget-char v28, v7, v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    :cond_2a
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2c

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v28

    if-gez v28, :cond_2b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_b

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2d

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v28

    if-gez v28, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_b

    :cond_2d
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v28

    if-gez v28, :cond_2e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_b

    :cond_2f
    const/16 v24, 0x0

    goto/16 :goto_c

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    move/from16 v28, v0

    if-eqz v28, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/DecimalFormatSymbols;->getPlusString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_26

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    add-int/lit8 v10, v28, -0x1

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v10, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    goto/16 :goto_d

    :cond_31
    const/16 v16, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    move-result v28

    aget-char v28, v7, v28

    :goto_10
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    :cond_32
    const/16 v28, 0x0

    aget-char v28, v7, v28

    goto :goto_10

    :cond_33
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v28

    sget-object v29, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_34
    if-eqz p3, :cond_35

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v8, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_35
    return-void
.end method

.method private subformatFixed(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZ)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getDigitsLocal()[C

    move-result-object v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v27, v0

    if-nez v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v15

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v27, v0

    if-nez v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v27

    if-nez v27, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_0
    :goto_2
    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    move-result v19

    if-nez v26, :cond_1

    const/16 v21, 0x0

    const v19, 0x7fffffff

    :cond_1
    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v27, v0

    if-lez v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    :cond_2
    const/4 v7, 0x0

    move/from16 v0, v18

    if-le v4, v0, :cond_3

    if-ltz v18, :cond_3

    move/from16 v4, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v27, v0

    sub-int v7, v27, v18

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v22

    add-int/lit8 v16, v4, -0x1

    move v8, v7

    :goto_4
    if-ltz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_c

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    move-result v27

    aget-char v27, v9, v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v24, v24, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    move-result v27

    if-eqz v27, :cond_7

    if-eqz p4, :cond_4

    sget-object v27, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_5

    sget-object v27, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v27

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v27

    if-nez v27, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v22

    :cond_7
    add-int/lit8 v16, v16, -0x1

    move v8, v7

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparator()C

    move-result v15

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v5

    goto/16 :goto_1

    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v27

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_2

    :cond_b
    move/from16 v4, v20

    goto/16 :goto_3

    :cond_c
    const/16 v27, 0x0

    aget-char v27, v9, v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lez v24, :cond_2f

    add-int/lit8 v24, v24, 0x1

    move v7, v8

    goto/16 :goto_5

    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v27

    if-nez v27, :cond_20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_e
    :goto_6
    if-eqz p4, :cond_f

    sget-object v27, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v22

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_f
    if-nez v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v27, v0

    if-nez v27, :cond_10

    const/16 v24, 0x1

    :cond_10
    if-nez p3, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_21

    const/4 v11, 0x1

    :goto_7
    if-nez v11, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    const/16 v27, 0x0

    aget-char v27, v9, v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_11
    if-eqz p4, :cond_12

    sget-object v27, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    move/from16 v27, v0

    if-nez v27, :cond_13

    if-eqz v11, :cond_16

    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v27

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v27

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_15
    if-eqz p4, :cond_16

    sget-object v27, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_24

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_17
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/icu/text/UFieldPosition;

    move/from16 v23, v0

    if-eqz v26, :cond_25

    const v4, 0x7fffffff

    :goto_9
    if-eqz v26, :cond_19

    move/from16 v0, v24

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    move/from16 v0, v24

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v8, v0, :cond_19

    :cond_18
    const/4 v4, 0x0

    :cond_19
    const/16 v16, 0x0

    :goto_a
    move/from16 v0, v16

    if-ge v0, v4, :cond_2e

    if-nez v26, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-lt v0, v1, :cond_26

    if-nez p3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v8, v0, :cond_26

    :cond_1a
    move v7, v8

    :cond_1b
    :goto_b
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_1c
    :goto_c
    if-eqz v23, :cond_1d

    check-cast p2, Landroid/icu/text/UFieldPosition;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v12, v13}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    :cond_1d
    if-eqz p4, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    move/from16 v27, v0

    if-nez v27, :cond_1e

    if-eqz v11, :cond_1f

    :cond_1e
    sget-object v27, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v10, v2}, Landroid/icu/text/DecimalFormat;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_1f
    return-void

    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v27

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_6

    :cond_21
    if-eqz v26, :cond_23

    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_22

    :goto_d
    const/4 v11, 0x1

    goto/16 :goto_7

    :cond_22
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v27

    if-lez v27, :cond_22

    goto :goto_d

    :cond_24
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v27

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_8

    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v4

    goto/16 :goto_9

    :cond_26
    rsub-int/lit8 v27, v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_29

    const/16 v27, 0x0

    aget-char v27, v9, v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v23, :cond_27

    add-int/lit8 v14, v14, 0x1

    const-wide/16 v28, 0xa

    mul-long v12, v12, v28

    :cond_27
    move v7, v8

    :cond_28
    add-int/lit8 v16, v16, 0x1

    move v8, v7

    goto/16 :goto_a

    :cond_29
    if-nez p3, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/icu/text/DigitList;->getDigitValue(I)B

    move-result v6

    aget-char v27, v9, v6

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v23, :cond_2a

    add-int/lit8 v14, v14, 0x1

    const-wide/16 v28, 0xa

    mul-long v12, v12, v28

    int-to-long v0, v6

    move-wide/from16 v28, v0

    add-long v12, v12, v28

    :cond_2a
    :goto_e
    add-int/lit8 v24, v24, 0x1

    if-eqz v26, :cond_28

    move/from16 v0, v24

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/DigitList;->count:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v7, v0, :cond_28

    move/from16 v0, v24

    move/from16 v1, v21

    if-lt v0, v1, :cond_28

    goto/16 :goto_b

    :cond_2b
    const/16 v27, 0x0

    aget-char v27, v9, v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v23, :cond_2d

    add-int/lit8 v14, v14, 0x1

    const-wide/16 v28, 0xa

    mul-long v12, v12, v28

    move v7, v8

    goto :goto_e

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v27

    sget-object v28, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_c

    :cond_2d
    move v7, v8

    goto :goto_e

    :cond_2e
    move v7, v8

    goto/16 :goto_b

    :cond_2f
    move v7, v8

    goto/16 :goto_5
.end method

.method private final subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 43

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v34

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v6

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v12}, Landroid/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    move-result v36

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p6

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v12}, Landroid/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    move-result v33

    if-ltz v36, :cond_1

    if-ltz v33, :cond_1

    move/from16 v0, v36

    move/from16 v1, v33

    if-le v0, v1, :cond_8

    const/16 v33, -0x1

    :cond_1
    :goto_0
    if-ltz v36, :cond_9

    add-int v6, v6, v36

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v6

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v4, p4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v8, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v6, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-boolean v4, p4, v5

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v6

    :cond_4
    if-ltz v36, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v6

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v16, p5

    invoke-direct/range {v8 .. v16}, Landroid/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    move-result v36

    :cond_5
    if-ltz v33, :cond_6

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v6

    move-object/from16 v13, p7

    move/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v16, p5

    invoke-direct/range {v8 .. v16}, Landroid/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    move-result v33

    :cond_6
    if-ltz v36, :cond_7

    if-ltz v33, :cond_7

    move/from16 v0, v36

    move/from16 v1, v33

    if-le v0, v1, :cond_43

    const/16 v33, -0x1

    :cond_7
    :goto_2
    if-ltz v36, :cond_44

    const/4 v4, 0x1

    move v5, v4

    :goto_3
    if-ltz v33, :cond_45

    const/4 v4, 0x1

    :goto_4
    if-ne v5, v4, :cond_46

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v4, 0x0

    return v4

    :cond_8
    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_1

    const/16 v36, -0x1

    goto/16 :goto_0

    :cond_9
    if-ltz v33, :cond_a

    add-int v6, v6, v33

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v4, 0x0

    return v4

    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    iput v4, v0, Landroid/icu/text/DigitList;->count:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iput v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDigitsLocal()[C

    move-result-object v24

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v19

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v29

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v7

    const/16 v37, 0x0

    const/16 v40, 0x0

    const/16 v39, 0x0

    const/16 v38, 0x0

    const-wide/16 v26, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isParseStrict()Z

    move-result v42

    const/16 v41, 0x0

    const/16 v31, -0x1

    move/from16 v23, v6

    move-object/from16 v0, p0

    iget-byte v4, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    move/from16 v30, v0

    :goto_7
    sget-boolean v4, Landroid/icu/text/DecimalFormat;->skipExtendedSeparatorParsing:Z

    if-eqz v4, :cond_15

    sget-object v20, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    :goto_8
    sget-boolean v4, Landroid/icu/text/DecimalFormat;->skipExtendedSeparatorParsing:Z

    if-eqz v4, :cond_16

    sget-object v28, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    :goto_9
    const/16 v22, 0x0

    const/16 v17, -0x1

    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_11

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v18

    const/4 v4, 0x0

    aget-char v4, v24, v4

    sub-int v21, v18, v4

    if-ltz v21, :cond_c

    const/16 v4, 0x9

    move/from16 v0, v21

    if-le v0, v4, :cond_d

    :cond_c
    const/16 v4, 0xa

    move/from16 v0, v18

    invoke-static {v0, v4}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v21

    :cond_d
    if-ltz v21, :cond_e

    const/16 v4, 0x9

    move/from16 v0, v21

    if-le v0, v4, :cond_f

    :cond_e
    const/16 v21, 0x0

    :goto_b
    const/16 v4, 0xa

    move/from16 v0, v21

    if-ge v0, v4, :cond_f

    aget-char v4, v24, v21

    move/from16 v0, v18

    if-ne v0, v4, :cond_18

    :cond_f
    if-nez v21, :cond_1e

    if-eqz v42, :cond_1b

    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_1b

    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v30

    if-eq v4, v0, :cond_19

    :cond_10
    const/16 v41, 0x1

    :cond_11
    :goto_c
    move-object/from16 v0, p3

    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    if-nez v4, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isDecimalPatternMatchRequired()Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3b

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v4, 0x0

    return v4

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v19

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparator()C

    move-result v29

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    move/from16 v30, v0

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DecimalFormat;->getEquivalentDecimals(CZ)Landroid/icu/text/UnicodeSet;

    move-result-object v20

    goto/16 :goto_8

    :cond_16
    if-eqz v42, :cond_17

    sget-object v28, Landroid/icu/text/DecimalFormat;->strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    goto/16 :goto_9

    :cond_17
    sget-object v28, Landroid/icu/text/DecimalFormat;->defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    goto/16 :goto_9

    :cond_18
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_b

    :cond_19
    const/4 v4, -0x1

    move/from16 v0, v31

    if-ne v0, v4, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v30

    if-gt v4, v0, :cond_10

    :cond_1a
    move/from16 v31, v17

    :cond_1b
    const/16 v17, -0x1

    const/16 v38, 0x1

    move-object/from16 v0, p3

    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    if-nez v4, :cond_1d

    if-nez v37, :cond_1c

    :goto_d
    invoke-static/range {v18 .. v18}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v6, v4

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p3

    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p3

    iput v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    goto :goto_d

    :cond_1d
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v4, v21, 0x30

    int-to-char v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/icu/text/DigitList;->append(I)V

    goto :goto_d

    :cond_1e
    if-lez v21, :cond_23

    const/16 v4, 0x9

    move/from16 v0, v21

    if-gt v0, v4, :cond_23

    if-eqz v42, :cond_22

    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_22

    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v30

    if-eq v4, v0, :cond_20

    :cond_1f
    const/16 v41, 0x1

    goto/16 :goto_c

    :cond_20
    const/4 v4, -0x1

    move/from16 v0, v31

    if-ne v0, v4, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v30

    if-gt v4, v0, :cond_1f

    :cond_21
    move/from16 v31, v17

    :cond_22
    const/16 v38, 0x1

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v4, v21, 0x30

    int-to-char v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/icu/text/DigitList;->append(I)V

    const/16 v17, -0x1

    goto :goto_d

    :cond_23
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    if-eqz v42, :cond_25

    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_24

    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    move-result v4

    move-object/from16 v0, p0

    iget-byte v5, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_25

    :cond_24
    const/16 v41, 0x1

    goto/16 :goto_c

    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v4

    if-nez v4, :cond_11

    if-nez v37, :cond_11

    move/from16 v0, v22

    move-object/from16 v1, p3

    iput v0, v1, Landroid/icu/text/DigitList;->decimalAt:I

    const/16 v37, 0x1

    goto/16 :goto_d

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v4

    if-eqz v4, :cond_29

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_29

    if-nez v37, :cond_11

    if-eqz v42, :cond_28

    if-eqz v38, :cond_27

    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_28

    :cond_27
    const/16 v41, 0x1

    goto/16 :goto_c

    :cond_28
    move/from16 v17, v6

    const/16 v40, 0x1

    goto/16 :goto_d

    :cond_29
    if-nez v37, :cond_2c

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    if-eqz v42, :cond_2b

    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_2a

    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_2b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    move-result v4

    move-object/from16 v0, p0

    iget-byte v5, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_2b

    :cond_2a
    const/16 v41, 0x1

    goto/16 :goto_c

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v4

    if-nez v4, :cond_11

    move/from16 v0, v22

    move-object/from16 v1, p3

    iput v0, v1, Landroid/icu/text/DigitList;->decimalAt:I

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v37, 0x1

    goto/16 :goto_d

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v4

    if-eqz v4, :cond_2d

    if-eqz v40, :cond_31

    :cond_2d
    if-nez v39, :cond_11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v32, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    add-int v35, v6, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v35

    if-ge v0, v4, :cond_2e

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v4

    move/from16 v0, v18

    if-ne v0, v4, :cond_34

    add-int/lit8 v35, v35, 0x1

    :cond_2e
    :goto_e
    new-instance v25, Landroid/icu/text/DigitList;

    invoke-direct/range {v25 .. v25}, Landroid/icu/text/DigitList;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/icu/text/DigitList;->count:I

    :goto_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v35

    if-ge v0, v4, :cond_35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    aget-char v5, v24, v5

    sub-int v21, v4, v5

    if-ltz v21, :cond_2f

    const/16 v4, 0x9

    move/from16 v0, v21

    if-le v0, v4, :cond_30

    :cond_2f
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v21

    :cond_30
    if-ltz v21, :cond_35

    const/16 v4, 0x9

    move/from16 v0, v21

    if-gt v0, v4, :cond_35

    add-int/lit8 v4, v21, 0x30

    int-to-char v4, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/icu/text/DigitList;->append(I)V

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int v35, v35, v4

    goto :goto_f

    :cond_31
    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    if-nez v37, :cond_11

    if-eqz v42, :cond_33

    if-eqz v38, :cond_32

    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_33

    :cond_32
    const/16 v41, 0x1

    goto/16 :goto_c

    :cond_33
    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v29, v0

    move/from16 v17, v6

    const/16 v40, 0x1

    goto/16 :goto_d

    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v4

    move/from16 v0, v18

    if-ne v0, v4, :cond_2e

    add-int/lit8 v35, v35, 0x1

    const/16 v32, 0x1

    goto/16 :goto_e

    :cond_35
    move-object/from16 v0, v25

    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    if-lez v4, :cond_11

    if-eqz v42, :cond_37

    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_36

    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_37

    :cond_36
    const/16 v41, 0x1

    goto/16 :goto_c

    :cond_37
    move-object/from16 v0, v25

    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_3a

    if-eqz v32, :cond_39

    const/4 v4, 0x1

    const/4 v5, 0x2

    aput-boolean v4, p4, v5

    :cond_38
    :goto_10
    move/from16 v6, v35

    const/16 v39, 0x1

    goto/16 :goto_c

    :cond_39
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-boolean v4, p4, v5

    goto :goto_10

    :cond_3a
    move-object/from16 v0, v25

    iget v4, v0, Landroid/icu/text/DigitList;->count:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/DigitList;->getLong()J

    move-result-wide v26

    if-eqz v32, :cond_38

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    goto :goto_10

    :cond_3b
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_3c

    move/from16 v6, v17

    :cond_3c
    if-nez v37, :cond_3d

    move/from16 v0, v22

    move-object/from16 v1, p3

    iput v0, v1, Landroid/icu/text/DigitList;->decimalAt:I

    :cond_3d
    if-eqz v42, :cond_3e

    if-eqz v37, :cond_3f

    :cond_3e
    :goto_11
    if-eqz v41, :cond_40

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v4, 0x0

    return v4

    :cond_3f
    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_3e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v6}, Landroid/icu/text/DecimalFormat;->countCodePoints(Ljava/lang/String;II)I

    move-result v4

    move-object/from16 v0, p0

    iget-byte v5, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_3e

    const/16 v41, 0x1

    goto :goto_11

    :cond_40
    move-object/from16 v0, p3

    iget v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    int-to-long v4, v4

    add-long v26, v26, v4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getParseMaxDigits()I

    move-result v4

    neg-int v4, v4

    int-to-long v4, v4

    cmp-long v4, v26, v4

    if-gez v4, :cond_41

    const/4 v4, 0x1

    const/4 v5, 0x2

    aput-boolean v4, p4, v5

    :goto_12
    if-nez v38, :cond_3

    if-nez v22, :cond_3

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v4, 0x0

    return v4

    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getParseMaxDigits()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v26, v4

    if-lez v4, :cond_42

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-boolean v4, p4, v5

    goto :goto_12

    :cond_42
    move-wide/from16 v0, v26

    long-to-int v4, v0

    move-object/from16 v0, p3

    iput v4, v0, Landroid/icu/text/DigitList;->decimalAt:I

    goto :goto_12

    :cond_43
    move/from16 v0, v33

    move/from16 v1, v36

    if-le v0, v1, :cond_7

    const/16 v36, -0x1

    goto/16 :goto_2

    :cond_44
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_3

    :cond_45
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_46
    if-ltz v36, :cond_47

    move/from16 v33, v36

    :cond_47
    add-int v6, v6, v33

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    if-lez v4, :cond_48

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v6

    :cond_48
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    if-ltz v36, :cond_49

    const/4 v4, 0x1

    :goto_13
    const/4 v5, 0x1

    aput-boolean v4, p4, v5

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    move/from16 v0, v34

    if-ne v4, v0, :cond_4a

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v4, 0x0

    return v4

    :cond_49
    const/4 v4, 0x0

    goto :goto_13

    :cond_4a
    const/4 v4, 0x1

    return v4
.end method

.method private toPattern(Z)Ljava/lang/String;
    .locals 27

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v23

    :goto_0
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v6

    :goto_1
    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v22

    if-eqz v22, :cond_0

    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    move-result v20

    :cond_0
    :goto_2
    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v8

    :goto_3
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    move/from16 v24, v0

    if-lez v24, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/DecimalFormat;->padPosition:I

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    move/from16 v24, v0

    if-lez v24, :cond_d

    new-instance v25, Ljava/lang/StringBuffer;

    const/16 v24, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getPadEscape()C

    move-result v24

    :goto_5
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, p0

    iget-char v0, v0, Landroid/icu/text/DecimalFormat;->pad:C

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    sub-int v18, v24, v9

    :cond_1
    const/4 v15, 0x0

    :goto_7
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ge v15, v0, :cond_26

    if-nez v13, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz v15, :cond_e

    const/16 v24, 0x1

    :goto_8
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/DecimalFormat;->appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v13, v0, :cond_3

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v24

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_9
    if-lez v7, :cond_4

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    move/from16 v24, v0

    if-lez v24, :cond_4

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    move/from16 v24, v0

    add-int v7, v7, v24

    :cond_4
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    if-eqz v22, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    move-result v11

    move v10, v11

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    const/16 v24, 0x8

    move/from16 v0, v24

    if-le v10, v0, :cond_5

    const/4 v10, 0x1

    :cond_5
    :goto_b
    move v9, v10

    :goto_c
    if-lez v9, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    if-ge v9, v10, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    if-eqz v22, :cond_14

    if-lt v11, v9, :cond_13

    sub-int v24, v11, v12

    move/from16 v0, v24

    if-le v9, v0, :cond_13

    move/from16 v24, v20

    :goto_d
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_e
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    :cond_7
    const/16 v23, 0x30

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x23

    goto/16 :goto_1

    :cond_9
    const/16 v20, 0x40

    goto/16 :goto_2

    :cond_a
    const/16 v8, 0x2c

    goto/16 :goto_3

    :cond_b
    const/4 v13, -0x1

    goto/16 :goto_4

    :cond_c
    const/16 v24, 0x2a

    goto/16 :goto_5

    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_8

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v10

    goto :goto_a

    :cond_11
    if-eqz v22, :cond_12

    add-int/lit8 v24, v7, 0x1

    move/from16 v0, v24

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_b

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v24

    move/from16 v0, v24

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int/lit8 v10, v24, 0x1

    goto :goto_b

    :cond_13
    move/from16 v24, v6

    goto :goto_d

    :cond_14
    if-eqz v19, :cond_15

    sub-int v16, v18, v9

    if-ltz v16, :cond_15

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_15

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    add-int/lit8 v24, v24, -0x30

    add-int v24, v24, v23

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_15
    if-gt v9, v12, :cond_16

    move/from16 v24, v23

    :goto_f
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :cond_16
    move/from16 v24, v6

    goto :goto_f

    :cond_17
    if-nez v22, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v24

    if-gtz v24, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    move/from16 v24, v0

    if-eqz v24, :cond_19

    :cond_18
    if-eqz p1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v24

    :goto_10
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_19
    move/from16 v16, v18

    const/4 v9, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_1e

    if-eqz v19, :cond_1c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_1c

    if-gez v16, :cond_1b

    move/from16 v24, v23

    :goto_12
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v16, v16, 0x1

    :goto_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_1a
    const/16 v24, 0x2e

    goto :goto_10

    :cond_1b
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    add-int/lit8 v24, v24, -0x30

    add-int v24, v24, v23

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    goto :goto_12

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_1d

    move/from16 v24, v23

    :goto_14
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_13

    :cond_1d
    move/from16 v24, v6

    goto :goto_14

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_22

    if-eqz p1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    if-eqz p1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v24

    :goto_16
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    const/4 v9, 0x0

    :goto_17
    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_22

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_20
    const/16 v24, 0x45

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_15

    :cond_21
    const/16 v24, 0x2b

    goto :goto_16

    :cond_22
    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_27

    :cond_23
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v13, v0, :cond_24

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_24
    if-eqz v15, :cond_2a

    const/16 v24, 0x1

    :goto_18
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/DecimalFormat;->appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v13, v0, :cond_25

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_25
    if-nez v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v26, 0x2d

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2b

    :cond_26
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    return-object v24

    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    move/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    sub-int v24, v24, v25

    add-int v25, v24, v21

    if-nez v15, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v24, v24, v26

    :goto_19
    sub-int v5, v25, v24

    :cond_28
    :goto_1a
    if-lez v5, :cond_23

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, -0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    if-le v5, v0, :cond_28

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    move-result v24

    if-eqz v24, :cond_28

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, -0x1

    goto :goto_1a

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v24, v24, v26

    goto :goto_19

    :cond_2a
    const/16 v24, 0x0

    goto/16 :goto_18

    :cond_2b
    if-eqz p1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v24

    :goto_1b
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    :cond_2d
    const/16 v24, 0x3b

    goto :goto_1b
.end method

.method private static trimMarksFromAffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_2

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/DecimalFormat;->isBidiMark(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x27

    if-eq v1, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method adjustNumberAsInFormatting(D)D
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->multiply(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->round(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->toDigitList(D)Landroid/icu/text/DigitList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DigitList;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    return-void
.end method

.method public areSignificantDigitsUsed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormat;

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    new-instance v2, Landroid/icu/text/DigitList;

    invoke-direct {v2}, Landroid/icu/text/DigitList;-><init>()V

    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v2}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CurrencyPluralInfo;

    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v2, v1, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/text/DecimalFormat;

    iget v2, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    iget v3, v0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/icu/text/DecimalFormat;->style:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget v2, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    iget v3, v0, Landroid/icu/text/DecimalFormat;->multiplier:I

    if-ne v2, v3, :cond_5

    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    iget-byte v3, v0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    if-ne v2, v3, :cond_5

    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    iget-byte v3, v0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-eqz v2, :cond_3

    iget-byte v2, p0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    iget-byte v3, v0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    if-ne v2, v3, :cond_5

    :cond_3
    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    iget v3, v0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    iget v3, v0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    if-ne v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iget-object v3, v0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    iget-object v2, v0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v1, v2}, Landroid/icu/util/Currency$CurrencyUsage;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 10

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    invoke-virtual {p1, v1, v2}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    iget v2, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;II)Landroid/icu/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    invoke-virtual {v1, v2, v3}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    :cond_1
    iget-object v9, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    monitor-enter v9

    :try_start_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    move-result v3

    iget-boolean v1, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Landroid/icu/text/DigitList;->set(Landroid/icu/math/BigDecimal;IZ)V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    invoke-virtual {v1}, Landroid/icu/text/DigitList;->wasRounded()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->signum()I

    move-result v1

    if-gez v1, :cond_5

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v9

    return-object v0

    :cond_5
    move v6, v0

    goto :goto_1
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 1

    sget-object v0, Landroid/icu/text/DecimalFormat;->NULL_UNIT:Landroid/icu/text/DecimalFormat$Unit;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;Landroid/icu/text/DecimalFormat$Unit;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method formatToCharacterIterator(Ljava/lang/Object;Landroid/icu/text/DecimalFormat$Unit;)Ljava/text/AttributedCharacterIterator;
    .locals 12

    const/4 v6, 0x1

    const/4 v11, 0x0

    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    move-object v9, p1

    check-cast v9, Ljava/lang/Number;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, v4}, Landroid/icu/text/DecimalFormat$Unit;->writePrefix(Ljava/lang/StringBuffer;)V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    instance-of v1, p1, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    check-cast v9, Ljava/math/BigInteger;

    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v11}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, v9, v4, v1, v6}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p2, v4}, Landroid/icu/text/DecimalFormat$Unit;->writeSuffix(Ljava/lang/StringBuffer;)V

    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_1
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_6

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/text/FieldPosition;

    invoke-virtual {v10}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    invoke-virtual {v10}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {v10}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_2

    check-cast v9, Ljava/math/BigDecimal;

    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v11}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, v9, v4, v1, v6}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    new-instance v5, Ljava/text/FieldPosition;

    invoke-direct {v5, v11}, Ljava/text/FieldPosition;-><init>(I)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    new-instance v5, Ljava/text/FieldPosition;

    invoke-direct {v5, v11}, Ljava/text/FieldPosition;-><init>(I)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_6
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method

.method public getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/CurrencyPluralInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method

.method public getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method protected getEffectiveCurrency()Landroid/icu/util/Currency;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->digitList:Landroid/icu/text/DigitList;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(DLandroid/icu/text/DigitList;)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object v0

    return-object v0
.end method

.method getFixedDecimal(DLandroid/icu/text/DigitList;)Landroid/icu/text/PluralRules$FixedDecimal;
    .locals 15

    const-wide/16 v12, 0xa

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget v2, v0, Landroid/icu/text/DigitList;->count:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/icu/text/DigitList;->decimalAt:I

    sub-int v8, v2, v3

    iget-boolean v2, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/icu/text/DigitList;->decimalAt:I

    sub-int v10, v2, v3

    iget v2, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/icu/text/DigitList;->decimalAt:I

    sub-int v11, v2, v3

    if-gez v11, :cond_0

    const/4 v11, 0x0

    :cond_0
    if-gez v10, :cond_1

    const/4 v10, 0x0

    :cond_1
    :goto_0
    move v5, v8

    if-ge v8, v11, :cond_4

    move v5, v11

    :cond_2
    :goto_1
    const-wide/16 v6, 0x0

    if-lez v5, :cond_6

    move-object/from16 v0, p3

    iget v2, v0, Landroid/icu/text/DigitList;->decimalAt:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_2
    move-object/from16 v0, p3

    iget v2, v0, Landroid/icu/text/DigitList;->count:I

    if-ge v9, v2, :cond_5

    mul-long/2addr v6, v12

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v9

    add-int/lit8 v2, v2, -0x30

    int-to-long v2, v2

    add-long/2addr v6, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v10

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v11

    goto :goto_0

    :cond_4
    if-le v8, v10, :cond_2

    move v5, v10

    goto :goto_1

    :cond_5
    move v9, v5

    :goto_3
    if-ge v9, v8, :cond_6

    mul-long/2addr v6, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    new-instance v2, Landroid/icu/text/PluralRules$FixedDecimal;

    move-wide/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    return-object v2
.end method

.method public getFormatWidth()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    return v0
.end method

.method public getGroupingSize()I
    .locals 1

    iget-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    return v0
.end method

.method public getMathContext()Ljava/math/MathContext;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/math/MathContext;

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    invoke-virtual {v3}, Landroid/icu/math/MathContext;->getDigits()I

    move-result v3

    iget-object v4, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    invoke-virtual {v4}, Landroid/icu/math/MathContext;->getRoundingMode()I

    move-result v4

    invoke-static {v4}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v1
.end method

.method public getMathContextICU()Landroid/icu/math/MathContext;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    return-object v0
.end method

.method public getMaximumSignificantDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    return v0
.end method

.method public getMinimumExponentDigits()B
    .locals 1

    iget-byte v0, p0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    return v0
.end method

.method public getMinimumSignificantDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    return v0
.end method

.method public getMultiplier()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getPadCharacter()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormat;->pad:C

    return v0
.end method

.method public getPadPosition()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    return v0
.end method

.method public getParseMaxDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    return v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundingIncrement()Ljava/math/BigDecimal;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getRoundingMode()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    return v0
.end method

.method public getSecondaryGroupingSize()I
    .locals 1

    iget-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDecimalPatternMatchRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    return v0
.end method

.method public isExponentSignAlwaysShown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    return v0
.end method

.method isNumberNegative(D)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->multiply(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->isNegative(D)Z

    move-result v0

    return v0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    return v0
.end method

.method public isScientificNotation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/icu/util/Currency;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/CurrencyAmount;

    return-object v1
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    new-array v1, v3, [Z

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {p1, v3, v4, v1}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3, p1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    :cond_0
    iget v3, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v3}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v3}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    :cond_1
    iget v3, p0, Landroid/icu/text/DecimalFormat;->currencySignCount:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-direct {p0, v6}, Landroid/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CurrencyPluralInfo;

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat;->isReadyForParsing:Z

    return-void
.end method

.method public setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "return value is null at method AAA"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v1, v2}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v1, v2}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    :cond_1
    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    return-void
.end method

.method public setDecimalPatternMatchRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->parseRequireDecimalPoint:Z

    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    return-void
.end method

.method public setExponentSignAlwaysShown(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    return-void
.end method

.method public setFormatWidth(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal format width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/icu/text/DecimalFormat;->formatWidth:I

    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize:B

    return-void
.end method

.method public setMathContext(Ljava/math/MathContext;)V
    .locals 5

    new-instance v0, Landroid/icu/math/MathContext;

    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v1

    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    return-void
.end method

.method public setMathContextICU(Landroid/icu/math/MathContext;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->mathContext:Landroid/icu/math/MathContext;

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->_setMaximumFractionDigits(I)V

    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 1

    const v0, 0x77359400

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    return-void
.end method

.method public setMaximumSignificantDigits(I)V
    .locals 3

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    iput p1, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    return-void
.end method

.method public setMinimumExponentDigits(B)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Exponent digits must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-byte p1, p0, Landroid/icu/text/DecimalFormat;->minExponentDigits:B

    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 1

    const/16 v0, 0x154

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 1

    const/16 v0, 0x135

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    return-void
.end method

.method public setMinimumSignificantDigits(I)V
    .locals 3

    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput p1, p0, Landroid/icu/text/DecimalFormat;->minSignificantDigits:I

    iput v0, p0, Landroid/icu/text/DecimalFormat;->maxSignificantDigits:I

    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    return-void
.end method

.method public setMultiplier(I)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad multiplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/icu/text/DecimalFormat;->multiplier:I

    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    return-void
.end method

.method public setPadCharacter(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormat;->pad:C

    return-void
.end method

.method public setPadPosition(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal pad position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/icu/text/DecimalFormat;->padPosition:I

    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->parseBigDecimal:Z

    return-void
.end method

.method public setParseMaxDigits(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Landroid/icu/text/DecimalFormat;->PARSE_MAX_EXPONENT:I

    :cond_0
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    return-void
.end method

.method public setRoundingIncrement(D)V
    .locals 5

    const-wide/16 v2, 0x0

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal rounding increment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmpl-double v0, p1, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Landroid/icu/math/BigDecimal;

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    :goto_0
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    return-void

    :cond_1
    invoke-static {p1, p2}, Landroid/icu/math/BigDecimal;->valueOf(D)Landroid/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    goto :goto_0
.end method

.method public setRoundingIncrement(Landroid/icu/math/BigDecimal;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal rounding increment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    invoke-virtual {p1, v1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    :goto_1
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    goto :goto_1
.end method

.method public setRoundingIncrement(Ljava/math/BigDecimal;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    check-cast v0, Landroid/icu/math/BigDecimal;

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    goto :goto_0
.end method

.method public setRoundingMode(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid rounding mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/icu/text/DecimalFormat;->roundingMode:I

    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;->resetActualRounding()V

    return-void
.end method

.method public setScientificNotation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->useExponentialNotation:Z

    return-void
.end method

.method public setSecondaryGroupingSize(I)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Landroid/icu/text/DecimalFormat;->groupingSize2:B

    return-void
.end method

.method public setSignificantDigitsUsed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat;->useSignificantDigits:Z

    return-void
.end method

.method toDigitList(D)Landroid/icu/text/DigitList;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/DigitList;

    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat;->precision(Z)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/icu/text/DigitList;->set(DIZ)V

    return-object v0
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/icu/text/DecimalFormat;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/icu/text/DecimalFormat;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
