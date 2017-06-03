.class public Landroid/icu/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DecimalFormatSymbols$1;,
        Landroid/icu/text/DecimalFormatSymbols$CacheData;
    }
.end annotation


# static fields
.field public static final CURRENCY_SPC_CURRENCY_MATCH:I = 0x0

.field public static final CURRENCY_SPC_INSERT:I = 0x2

.field public static final CURRENCY_SPC_SURROUNDING_MATCH:I = 0x1

.field private static final cachedLocaleData:Landroid/icu/impl/SoftCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SoftCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/DecimalFormatSymbols$CacheData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x8

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private actualLocale:Landroid/icu/util/ULocale;

.field private transient currency:Landroid/icu/util/Currency;

.field private currencyPattern:Ljava/lang/String;

.field private currencySpcAfterSym:[Ljava/lang/String;

.field private currencySpcBeforeSym:[Ljava/lang/String;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private digit:C

.field private digits:[C

.field private exponentMultiplicationSign:Ljava/lang/String;

.field private exponentSeparator:Ljava/lang/String;

.field private exponential:C

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private minusSign:C

.field private minusString:Ljava/lang/String;

.field private monetaryGroupingSeparator:C

.field private monetarySeparator:C

.field private padEscape:C

.field private patternSeparator:C

.field private perMill:C

.field private percent:C

.field private plusSign:C

.field private plusString:Ljava/lang/String;

.field private requestedLocale:Ljava/util/Locale;

.field private serialVersionOnStream:I

.field private sigDigit:C

.field private ulocale:Landroid/icu/util/ULocale;

.field private validLocale:Landroid/icu/util/ULocale;

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/text/DecimalFormatSymbols$1;

    invoke-direct {v0}, Landroid/icu/text/DecimalFormatSymbols$1;-><init>()V

    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/SoftCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeCurrencyMatch:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeContextMatch:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->beforeInsert:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterCurrencyMatch:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterContextMatch:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->afterInsert:Ljava/lang/String;

    aput-object v1, v0, v4

    return-void
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 14

    const/16 v13, 0xa

    const/4 v12, 0x3

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v8

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    sget-object v8, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/SoftCache;

    invoke-virtual {v8, p1, v9}, Landroid/icu/impl/SoftCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/DecimalFormatSymbols$CacheData;

    iget-object v8, v6, Landroid/icu/text/DecimalFormatSymbols$CacheData;->digits:[C

    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [C

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    iget-object v4, v6, Landroid/icu/text/DecimalFormatSymbols$CacheData;->symbolsArray:[Ljava/lang/String;

    const-string/jumbo v8, "android/icu/impl/data/icudt56b"

    invoke-static {v8, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-virtual {p0, v7, v7}, Landroid/icu/text/DecimalFormatSymbols;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    aget-object v8, v4, v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    aget-object v8, v4, v11

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    aget-object v8, v4, v12

    aget-object v9, v4, v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    const/4 v8, 0x4

    aget-object v8, v4, v8

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_1

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/text/DecimalFormatSymbols;->isBidiMark(C)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_0
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    const/4 v8, 0x5

    aget-object v8, v4, v8

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_2

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/text/DecimalFormatSymbols;->isBidiMark(C)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1
    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    const/4 v8, 0x6

    aget-object v8, v4, v8

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v8, v4, v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    const/16 v8, 0x8

    aget-object v8, v4, v8

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    const/16 v8, 0x9

    aget-object v8, v4, v8

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    aget-object v8, v4, v13

    if-eqz v8, :cond_3

    aget-object v8, v4, v13

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    :goto_2
    const/16 v8, 0xb

    aget-object v8, v4, v8

    if-eqz v8, :cond_4

    const/16 v8, 0xb

    aget-object v8, v4, v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    :goto_3
    const/16 v8, 0xc

    aget-object v8, v4, v8

    if-eqz v8, :cond_5

    const/16 v8, 0xc

    aget-object v8, v4, v8

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    :goto_4
    const/16 v8, 0x23

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    const/16 v8, 0x2a

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 v8, 0x40

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    sget-object v8, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    invoke-interface {v8, p1, v11}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v8

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    invoke-virtual {v8}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    new-array v3, v11, [Z

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    invoke-virtual {v8, p1, v10, v3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    aget-boolean v8, v3, v10

    if-eqz v8, :cond_6

    new-instance v8, Ljava/text/ChoiceFormat;

    invoke-direct {v8, v0}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-virtual {v8, v10, v11}, Ljava/text/ChoiceFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    :goto_5
    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v8, v1, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    iget-char v8, v1, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetarySeparator:C

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v8, v1, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:C

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    :cond_0
    :goto_6
    new-array v8, v12, [Ljava/lang/String;

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    new-array v8, v12, [Ljava/lang/String;

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    return-void

    :cond_1
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto/16 :goto_0

    :cond_2
    iget-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto/16 :goto_1

    :cond_3
    iget-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    goto/16 :goto_2

    :cond_4
    iget-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iput-char v8, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v8, "\u00d7"

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    goto/16 :goto_4

    :cond_6
    move-object v8, v0

    goto :goto_5

    :cond_7
    const-string/jumbo v8, "XXX"

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    const-string/jumbo v8, "\u00a4"

    iput-object v8, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_6
.end method

.method private static isBidiMark(C)Z
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

.method static loadSymbols(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .locals 17

    invoke-static/range {p0 .. p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v10

    const/16 v15, 0xa

    new-array v3, v15, [C

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->getRadix()I

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    const/16 v15, 0x30

    const/16 v16, 0x0

    aput-char v15, v3, v16

    const/16 v15, 0x31

    const/16 v16, 0x1

    aput-char v15, v3, v16

    const/16 v15, 0x32

    const/16 v16, 0x2

    aput-char v15, v3, v16

    const/16 v15, 0x33

    const/16 v16, 0x3

    aput-char v15, v3, v16

    const/16 v15, 0x34

    const/16 v16, 0x4

    aput-char v15, v3, v16

    const/16 v15, 0x35

    const/16 v16, 0x5

    aput-char v15, v3, v16

    const/16 v15, 0x36

    const/16 v16, 0x6

    aput-char v15, v3, v16

    const/16 v15, 0x37

    const/16 v16, 0x7

    aput-char v15, v3, v16

    const/16 v15, 0x38

    const/16 v16, 0x8

    aput-char v15, v3, v16

    const/16 v15, 0x39

    const/16 v16, 0x9

    aput-char v15, v3, v16

    const-string/jumbo v11, "latn"

    :goto_0
    const-string/jumbo v15, "android/icu/impl/data/icudt56b"

    move-object/from16 v0, p0

    invoke-static {v15, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v12

    check-cast v12, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v15, "latn"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "NumberElements/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/symbols/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "NumberElements/latn/symbols/"

    const/16 v15, 0xd

    new-array v13, v15, [Ljava/lang/String;

    const-string/jumbo v15, "decimal"

    const/16 v16, 0x0

    aput-object v15, v13, v16

    const-string/jumbo v15, "group"

    const/16 v16, 0x1

    aput-object v15, v13, v16

    const-string/jumbo v15, "list"

    const/16 v16, 0x2

    aput-object v15, v13, v16

    const-string/jumbo v15, "percentSign"

    const/16 v16, 0x3

    aput-object v15, v13, v16

    const-string/jumbo v15, "minusSign"

    const/16 v16, 0x4

    aput-object v15, v13, v16

    const-string/jumbo v15, "plusSign"

    const/16 v16, 0x5

    aput-object v15, v13, v16

    const-string/jumbo v15, "exponential"

    const/16 v16, 0x6

    aput-object v15, v13, v16

    const-string/jumbo v15, "perMille"

    const/16 v16, 0x7

    aput-object v15, v13, v16

    const-string/jumbo v15, "infinity"

    const/16 v16, 0x8

    aput-object v15, v13, v16

    const-string/jumbo v15, "nan"

    const/16 v16, 0x9

    aput-object v15, v13, v16

    const-string/jumbo v15, "currencyDecimal"

    const/16 v16, 0xa

    aput-object v15, v13, v16

    const-string/jumbo v15, "currencyGroup"

    const/16 v16, 0xb

    aput-object v15, v13, v16

    const-string/jumbo v15, "superscriptingExponent"

    const/16 v16, 0xc

    aput-object v15, v13, v16

    const/16 v15, 0xc

    new-array v6, v15, [Ljava/lang/String;

    const-string/jumbo v15, "."

    const/16 v16, 0x0

    aput-object v15, v6, v16

    const-string/jumbo v15, ","

    const/16 v16, 0x1

    aput-object v15, v6, v16

    const-string/jumbo v15, ";"

    const/16 v16, 0x2

    aput-object v15, v6, v16

    const-string/jumbo v15, "%"

    const/16 v16, 0x3

    aput-object v15, v6, v16

    const-string/jumbo v15, "-"

    const/16 v16, 0x4

    aput-object v15, v6, v16

    const-string/jumbo v15, "+"

    const/16 v16, 0x5

    aput-object v15, v6, v16

    const-string/jumbo v15, "E"

    const/16 v16, 0x6

    aput-object v15, v6, v16

    const-string/jumbo v15, "\u2030"

    const/16 v16, 0x7

    aput-object v15, v6, v16

    const-string/jumbo v15, "\u221e"

    const/16 v16, 0x8

    aput-object v15, v6, v16

    const-string/jumbo v15, "NaN"

    const/16 v16, 0x9

    aput-object v15, v6, v16

    const/4 v15, 0x0

    const/16 v16, 0xa

    aput-object v15, v6, v16

    const/4 v15, 0x0

    const/16 v16, 0xb

    aput-object v15, v6, v16

    array-length v15, v13

    new-array v14, v15, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1
    array-length v15, v13

    if-ge v7, v15, :cond_3

    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x0

    aput-char v15, v3, v16

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x1

    aput-char v15, v3, v16

    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2

    aput-char v15, v3, v16

    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x3

    aput-char v15, v3, v16

    const/4 v15, 0x4

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x4

    aput-char v15, v3, v16

    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x5

    aput-char v15, v3, v16

    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x6

    aput-char v15, v3, v16

    const/4 v15, 0x7

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x7

    aput-char v15, v3, v16

    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x8

    aput-char v15, v3, v16

    const/16 v15, 0x9

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x9

    aput-char v15, v3, v16

    invoke-virtual {v10}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :catch_0
    move-exception v4

    if-nez v8, :cond_2

    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v13, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v5

    aget-object v15, v6, v7

    aput-object v15, v14, v7

    goto/16 :goto_2

    :cond_2
    aget-object v15, v6, v7

    aput-object v15, v14, v7

    goto/16 :goto_2

    :cond_3
    new-instance v15, Landroid/icu/text/DecimalFormatSymbols$CacheData;

    invoke-direct {v15, v3, v14}, Landroid/icu/text/DecimalFormatSymbols$CacheData;-><init>([C[Ljava/lang/String;)V

    return-object v15
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    if-ge v2, v4, :cond_0

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    const/16 v2, 0x45

    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    :cond_0
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/16 v2, 0x2a

    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 v2, 0x2b

    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    :cond_1
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    if-ge v2, v5, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    :cond_2
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    :cond_3
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iput-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    :cond_4
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    if-nez v2, :cond_5

    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    :cond_5
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    if-nez v2, :cond_6

    new-array v2, v5, [Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    :cond_6
    sget-object v2, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    :cond_7
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_9

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    if-nez v2, :cond_8

    new-array v0, v4, [C

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    aput-char v2, v0, v6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    :cond_8
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    if-nez v2, :cond_9

    new-array v1, v4, [C

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    aput-char v2, v1, v6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    :cond_9
    iget v2, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    if-ge v2, v7, :cond_a

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string/jumbo v2, "\u00d7"

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    :cond_a
    iput v7, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/icu/text/DecimalFormatSymbols;

    if-nez v3, :cond_0

    return v2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    if-gt v0, v3, :cond_4

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, v1, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-nez v3, :cond_6

    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v3, v3, v0

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/2addr v4, v0

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v3, v4, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v3, v4, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    if-ne v3, v4, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    if-ne v3, v4, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    if-ne v3, v4, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    if-ne v3, v4, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iget-object v4, v1, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v3, v4, :cond_8

    iget-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    iget-char v4, v1, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    if-ne v3, v4, :cond_8

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    iget-object v3, v1, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_8
    return v2
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    return-object v0
.end method

.method getCurrencyPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDigit()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public getDigits()[C
    .locals 4

    const/16 v3, 0xa

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    return-object v2

    :cond_0
    new-array v0, v3, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/2addr v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getDigitsLocal()[C
    .locals 4

    const/16 v3, 0xa

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    return-object v2

    :cond_0
    new-array v0, v3, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/2addr v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getExponentMultiplicationSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    return-object v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public getMinusString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    return-object v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public getMonetaryGroupingSeparator()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPadEscape()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    return v0
.end method

.method public getPatternForCurrencySpacing(IZ)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown currency spacing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPatternSeparator()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public getPerMill()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public getPercent()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public getPlusSign()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    return v0
.end method

.method public getPlusString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    return-object v0
.end method

.method public getSignificantDigit()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    return v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getZeroDigit()C
    .locals 2

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    return v0

    :cond_0
    iget-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v2, 0x0

    aget-char v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int v0, v1, v2

    return v0
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    return-void
.end method

.method public setDigit(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    return-void
.end method

.method public setExponentMultiplicationSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-void
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    iput-object p2, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method public setMinusSign(C)V
    .locals 2

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    const/4 v1, 0x1

    new-array v0, v1, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    return-void
.end method

.method public setMonetaryGroupingSeparator(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-void
.end method

.method public setPadEscape(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    return-void
.end method

.method public setPatternForCurrencySpacing(IZLjava/lang/String;)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown currency spacing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aput-object p3, v0, p1

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aput-object p3, v0, p1

    goto :goto_0
.end method

.method public setPatternSeparator(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    return-void
.end method

.method public setPerMill(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    return-void
.end method

.method public setPercent(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    return-void
.end method

.method public setPlusSign(C)V
    .locals 3

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    const/4 v1, 0x1

    new-array v0, v1, [C

    iget-char v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    const/4 v2, 0x0

    aput-char v1, v0, v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    return-void
.end method

.method public setSignificantDigit(C)V
    .locals 0

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    return-void
.end method

.method public setZeroDigit(C)V
    .locals 3

    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    add-int v2, p1, v0

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    :cond_1
    return-void
.end method
