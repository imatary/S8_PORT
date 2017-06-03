.class public abstract Landroid/icu/text/NumberFormat;
.super Landroid/icu/text/UFormat;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberFormat$Field;,
        Landroid/icu/text/NumberFormat$NumberFormatFactory;,
        Landroid/icu/text/NumberFormat$NumberFormatShim;,
        Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ACCOUNTINGCURRENCYSTYLE:I = 0x7

.field public static final CASHCURRENCYSTYLE:I = 0x8

.field public static final CURRENCYSTYLE:I = 0x1

.field public static final FRACTION_FIELD:I = 0x1

.field public static final INTEGERSTYLE:I = 0x4

.field public static final INTEGER_FIELD:I = 0x0

.field public static final ISOCURRENCYSTYLE:I = 0x5

.field public static final NUMBERSTYLE:I = 0x0

.field public static final PERCENTSTYLE:I = 0x2

.field public static final PLURALCURRENCYSTYLE:I = 0x6

.field public static final SCIENTIFICSTYLE:I = 0x3

.field public static final STANDARDCURRENCYSTYLE:I = 0x9

.field static final currentSerialVersion:I = 0x2

.field private static final doubleCurrencySign:[C

.field private static final doubleCurrencyStr:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x20094c40ec82f818L

.field private static shim:Landroid/icu/text/NumberFormat$NumberFormatShim;


# instance fields
.field private capitalizationSetting:Landroid/icu/text/DisplayContext;

.field private currency:Landroid/icu/util/Currency;

.field private groupingUsed:Z

.field private maxFractionDigits:B

.field private maxIntegerDigits:B

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minFractionDigits:B

.field private minIntegerDigits:B

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z

.field private parseStrict:Z

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/icu/text/NumberFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/NumberFormat;->-assertionsDisabled:Z

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x28

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-boolean v1, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    iput-byte v3, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    iput-byte v2, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    iput-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    iput v3, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    iput v1, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iput v2, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    return-void
.end method

.method static createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 21

    invoke-static/range {p0 .. p1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v14

    new-instance v16, Landroid/icu/text/DecimalFormatSymbols;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v19, 0x5

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    :cond_0
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v14, v17

    :cond_1
    const/16 v19, 0x5

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const-string/jumbo v19, "\u00a4"

    sget-object v20, Landroid/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v8

    if-nez v8, :cond_4

    const/16 v19, 0x0

    return-object v19

    :cond_3
    const/16 v19, 0x7

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v19, 0x8

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v19, 0x9

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v3, 0x4

    invoke-virtual {v8}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-le v7, v5, :cond_6

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v19, v7, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    new-instance v10, Landroid/icu/util/ULocale;

    invoke-direct {v10, v11}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, "SpelloutRules"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v3, 0x1

    :cond_5
    :goto_1
    new-instance v15, Landroid/icu/text/RuleBasedNumberFormat;

    invoke-direct {v15, v10, v3}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    invoke-virtual {v15, v13}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V

    move-object v6, v15

    :goto_2
    sget-object v19, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v18

    sget-object v19, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v2}, Landroid/icu/text/NumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-object v6

    :cond_6
    move-object/from16 v10, p0

    move-object v13, v9

    goto :goto_1

    :cond_7
    new-instance v4, Landroid/icu/text/DecimalFormat;

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-direct {v4, v14, v0, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V

    const/16 v19, 0x4

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    :cond_8
    const/16 v19, 0x8

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    sget-object v19, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/icu/text/DecimalFormat;->setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V

    :cond_9
    move-object v6, v4

    goto :goto_2
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrencyInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(I)Landroid/icu/text/NumberFormat;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "choice should be from NUMBERSTYLE to STANDARDCURRENCYSTYLE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/NumberFormat$NumberFormatShim;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getIntegerInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getNumberInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method protected static getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    sget-boolean v6, Landroid/icu/text/NumberFormat;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :pswitch_0
    const-string/jumbo v3, "decimalFormat"

    :goto_0
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    invoke-static {v6, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberElements/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/patterns/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    return-object v5

    :pswitch_1
    const-string/jumbo v6, "cf"

    invoke-virtual {p0, v6}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v6, "account"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v3, "accountingFormat"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "currencyFormat"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "currencyFormat"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "percentFormat"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v3, "scientificFormat"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v3, "accountingFormat"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "decimalFormat"

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberElements/latn/patterns/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected static getPattern(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getPercentInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getScientificInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getScientificInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;
    .locals 5

    sget-object v3, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v3, :cond_0

    :try_start_0
    const-string/jumbo v3, "android.icu.text.NumberFormatServiceShim"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/NumberFormat$NumberFormatShim;

    sput-object v3, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v3, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v2

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget-byte v0, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    :cond_0
    iget v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    if-ge v0, v2, :cond_1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    :cond_1
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Digit count range invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ltz v0, :cond_2

    iput v2, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    return-void
.end method

.method public static registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "registryKey must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    invoke-virtual {v0, p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x7f

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_3

    :goto_3
    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void

    :cond_0
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    int-to-byte v0, v0

    goto :goto_2

    :cond_3
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    int-to-byte v1, v0

    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/text/NumberFormat;

    iget v3, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    iget v4, v0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v4, v0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v4, v0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v4, v0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    iget-boolean v4, v0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v4, v0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    iget-boolean v4, v0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    iget-object v4, v0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x13

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final format(Landroid/icu/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(Landroid/icu/util/CurrencyAmount;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    :cond_1
    return-object p2
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    instance-of v0, p1, Landroid/icu/math/BigDecimal;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/icu/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_3
    instance-of v0, p1, Landroid/icu/util/CurrencyAmount;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/icu/util/CurrencyAmount;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 1

    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    goto :goto_0
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/NumberFormat;->currency:Landroid/icu/util/Currency;

    return-object v0
.end method

.method protected getEffectiveCurrency()Landroid/icu/util/Currency;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v2, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v2}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getRoundingMode()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getRoundingMode must be implemented by the subclass implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    mul-int/lit8 v0, v0, 0x25

    iget-byte v1, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    add-int/2addr v0, v1

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    return v0
.end method

.method public isParseStrict()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unparseable number: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/icu/util/CurrencyAmount;

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getEffectiveCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    goto :goto_0
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 2

    invoke-virtual {p1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    :cond_0
    return-void
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/NumberFormat;->currency:Landroid/icu/util/Currency;

    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    :cond_0
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    :cond_0
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    :cond_0
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    :cond_0
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    return-void
.end method

.method public setParseStrict(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    return-void
.end method

.method public setRoundingMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setRoundingMode must be implemented by the subclass implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
