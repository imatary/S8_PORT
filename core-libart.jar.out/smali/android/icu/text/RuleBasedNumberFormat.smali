.class public Landroid/icu/text/RuleBasedNumberFormat;
.super Landroid/icu/text/NumberFormat;
.source "RuleBasedNumberFormat.java"


# static fields
.field private static final DEBUG:Z

.field public static final DURATION:I = 0x3

.field public static final NUMBERING_SYSTEM:I = 0x4

.field public static final ORDINAL:I = 0x2

.field public static final SPELLOUT:I = 0x1

.field private static final locnames:[Ljava/lang/String;

.field private static final rulenames:[Ljava/lang/String;

.field static final serialVersionUID:J = -0x6a5ce54888ed36fcL


# instance fields
.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private capitalizationForListOrMenu:Z

.field private capitalizationForStandAlone:Z

.field private capitalizationInfoIsSet:Z

.field private transient decimalFormat:Landroid/icu/text/DecimalFormat;

.field private transient decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

.field private transient defaultInfinityRule:Landroid/icu/text/NFRule;

.field private transient defaultNaNRule:Landroid/icu/text/NFRule;

.field private transient defaultRuleSet:Landroid/icu/text/NFRuleSet;

.field private lenientParse:Z

.field private transient lenientParseRules:Ljava/lang/String;

.field private locale:Landroid/icu/util/ULocale;

.field private transient lookedForScanner:Z

.field private transient postProcessRules:Ljava/lang/String;

.field private transient postProcessor:Landroid/icu/text/RBNFPostProcessor;

.field private publicRuleSetNames:[Ljava/lang/String;

.field private roundingMode:I

.field private ruleSetDisplayNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient ruleSets:[Landroid/icu/text/NFRuleSet;

.field private transient ruleSetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NFRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private transient scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "rbnf"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SpelloutRules"

    aput-object v1, v0, v2

    const-string/jumbo v1, "OrdinalRules"

    aput-object v1, v0, v3

    const-string/jumbo v1, "DurationRules"

    aput-object v1, v0, v4

    const-string/jumbo v1, "NumberingSystemRules"

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "SpelloutLocalizations"

    aput-object v1, v0, v2

    const-string/jumbo v1, "OrdinalLocalizations"

    aput-object v1, v0, v3

    const-string/jumbo v1, "DurationLocalizations"

    aput-object v1, v0, v4

    const-string/jumbo v1, "NumberingSystemLocalizations"

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v9, 0x7

    iput v9, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    iput-boolean v11, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    iput-object v10, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const-string/jumbo v9, "android/icu/impl/data/icudt56b/rbnf"

    invoke-static {v9, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v8

    invoke-virtual {p0, v8, v8}, Landroid/icu/text/UFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RBNFRules/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    add-int/lit8 v11, p2, -0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Landroid/icu/util/UResourceBundleIterator;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_0
    sget-object v9, Landroid/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    add-int/lit8 v10, p2, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v9

    new-array v6, v9, [[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    array-length v9, v6

    if-ge v3, v9, :cond_1

    invoke-virtual {v5, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v0, 0x7

    iput v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, p1, v1}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v0, 0x7

    iput v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    iput-object p2, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, p1, v1}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v0, 0x7

    iput v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v0, 0x7

    iput v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    iput-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    iput-object p3, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    return-void
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v1}, Landroid/icu/text/NumberFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_3

    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_2
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v3, 0x300

    invoke-static {v1, p1, v2, v3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    return-object p1
.end method

.method private extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_3

    if-eqz v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_3

    :cond_0
    const-string/jumbo v4, ";%"

    invoke-virtual {p1, v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v0, v4

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    return-object v3
.end method

.method private format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getRoundingMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v1

    iget v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    invoke-virtual {v0, v1, v2}, Landroid/icu/math/BigDecimal;->setScale(II)Landroid/icu/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    :cond_0
    move-object v1, p3

    move-wide v2, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;II)V

    invoke-direct {p0, v4, p3}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, p3

    move-wide v2, p1

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    invoke-direct {p0, v4, p3}, Landroid/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v4, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v4}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-static {v0}, Landroid/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private init(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->initLocalizations([[Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Landroid/icu/text/RuleBasedNumberFormat;->stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v16, "%%lenient-parse:"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    const-string/jumbo v16, "%%post-process:"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Landroid/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    const-string/jumbo v16, ";%"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v9

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_0

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_0
    new-array v0, v8, [Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    new-instance v16, Ljava/util/HashMap;

    mul-int/lit8 v17, v8, 0x2

    add-int/lit8 v17, v17, 0x1

    invoke-direct/range {v16 .. v17}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    const/4 v10, 0x0

    new-array v14, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v2, v0, :cond_5

    const-string/jumbo v16, ";%"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v9

    if-gez v9, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    add-int/lit8 v9, v16, -0x1

    :cond_1
    add-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v2

    new-instance v13, Landroid/icu/text/NFRuleSet;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14, v2}, Landroid/icu/text/NFRuleSet;-><init>(Landroid/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    aput-object v13, v16, v2

    invoke-virtual {v13}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v16, "%%"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    const-string/jumbo v16, "%spellout-numbering"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    :cond_2
    const-string/jumbo v16, "%digits-ordinal"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string/jumbo v16, "%duration"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v15, v9, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v5, v16, -0x1

    :goto_2
    if-ltz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "%%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    :cond_7
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    aget-object v17, v14, v5

    invoke-virtual/range {v16 .. v17}, Landroid/icu/text/NFRuleSet;->parseRules(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    new-array v12, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v5, v16, -0x1

    move v11, v10

    :goto_4
    if-ltz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "%%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    add-int/lit8 v10, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v11

    :goto_5
    add-int/lit8 v5, v5, -0x1

    move v11, v10

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v7, v16, v5

    const/4 v6, 0x0

    :goto_7
    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_c

    aget-object v16, v12, v6

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "did not find public rule set: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    :goto_8
    return-void

    :cond_e
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    goto :goto_8

    :cond_f
    move v10, v11

    goto :goto_5
.end method

.method private initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    invoke-static {v6, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    :try_start_0
    const-string/jumbo v6, "contextTransforms/number-spellout"

    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    const/4 v6, 0x0

    aget v6, v1, v6

    if-eqz v6, :cond_1

    move v6, v4

    :goto_0
    iput-boolean v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    const/4 v6, 0x1

    aget v6, v1, v6

    if-eqz v6, :cond_2

    :goto_1
    iput-boolean v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private initLocalizations([[Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_2

    aget-object v5, p1, v7

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    aget-object v0, p1, v1

    aget-object v2, v0, v7

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    new-array v4, v5, [Ljava/lang/String;

    array-length v5, v4

    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v6, v6

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "public name length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " != localized names["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    array-length v5, v4

    const/4 v6, 0x1

    invoke-static {v0, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    :cond_2
    return-void
.end method

.method private postProcess(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBNFPostProcessor;

    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    iget-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    invoke-interface {v4, p0, v5}, Landroid/icu/text/RBNFPostProcessor;->init(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    invoke-interface {v4, p1, p2}, Landroid/icu/text/RBNFPostProcessor;->process(Ljava/lang/StringBuffer;Landroid/icu/text/NFRuleSet;)V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    sget-boolean v4, Landroid/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not locate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iput-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessor:Landroid/icu/text/RBNFPostProcessor;

    iput-object v7, p0, Landroid/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    iput v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v4, Landroid/icu/text/RuleBasedNumberFormat;

    invoke-direct {v4, v0, v3}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    iget-object v5, v4, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    iput-object v5, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    return-void

    :catch_0
    move-exception v1

    sget-object v5, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v5}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6

    const/16 v5, 0x3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    :goto_1
    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-object v2

    :cond_3
    if-ge v1, v0, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createPluralFormat(Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)Landroid/icu/text/PluralFormat;
    .locals 3

    new-instance v0, Landroid/icu/text/PluralFormat;

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;Landroid/icu/text/NumberFormat;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v2, p1, Landroid/icu/text/RuleBasedNumberFormat;

    if-nez v2, :cond_0

    return v4

    :cond_0
    move-object v1, p1

    nop

    nop

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v3, v1, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v2, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    iget-boolean v3, v1, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eq v2, v3, :cond_2

    :cond_1
    return v4

    :cond_2
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v2, v2

    iget-object v3, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v2, v2, v0

    iget-object v3, v1, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/NFRuleSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NFRuleSet;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No rule set named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public format(DLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v0, "%%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t use internal rule set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v0, "%%"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t use internal rule set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p3

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p3

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedNumberFormat;->format(JLandroid/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/RuleBasedNumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method getDecimalFormat()Landroid/icu/text/DecimalFormat;
    .locals 3

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/icu/text/RuleBasedNumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    :cond_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    return-object v1
.end method

.method getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 2

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    return-object v0
.end method

.method getDefaultInfinityRule()Landroid/icu/text/NFRule;
    .locals 3

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/NFRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    return-object v0
.end method

.method getDefaultNaNRule()Landroid/icu/text/NFRule;
    .locals 3

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/NFRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    return-object v0
.end method

.method getDefaultRuleSet()Landroid/icu/text/NFRuleSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    return-object v0
.end method

.method public getDefaultRuleSetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method getLenientScanner()Landroid/icu/text/RbnfLenientScanner;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/icu/text/RbnfLenientScannerProvider;->get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getLenientScannerProvider()Landroid/icu/text/RbnfLenientScannerProvider;
    .locals 4

    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    return-object v3

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    const-string/jumbo v3, "android.icu.impl.text.RbnfScannerProviderImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RbnfLenientScannerProvider;

    invoke-virtual {p0, v2}, Landroid/icu/text/RuleBasedNumberFormat;->setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRoundingMode()I
    .locals 1

    iget v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    return v0
.end method

.method public getRuleSetDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuleSetDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 6

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    aget-object v3, v1, v0

    return-object v3

    :cond_0
    aget-object v3, v2, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized rule set name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getRuleSetDisplayNameLocales()[Landroid/icu/util/ULocale;
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v4, v1

    new-array v2, v4, [Landroid/icu/util/ULocale;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    new-instance v4, Landroid/icu/util/ULocale;

    aget-object v5, v1, v0

    invoke-direct {v4, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    return-object v5
.end method

.method public getRuleSetDisplayNames()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayNames(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuleSetDisplayNames(Landroid/icu/util/ULocale;)[Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Landroid/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getRuleSetNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getRuleSetNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public lenientParseEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v10}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v3, 0x0

    sget-object v2, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    new-instance v0, Ljava/text/ParsePosition;

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/text/ParsePosition;-><init>(I)V

    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v6, v6

    add-int/lit8 v1, v6, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/icu/text/NFRuleSet;->isParseable()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v6, v6, v1

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v6, v5, v4, v8, v9}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-le v6, v7, :cond_0

    move-object v2, v3

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    :cond_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    :cond_2
    invoke-virtual {v4, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedNumberFormat;->initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_4

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_4
    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 5

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_0
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    if-eqz v1, :cond_1

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Landroid/icu/text/NFRule;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Landroid/icu/text/NFRule;

    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    if-eqz v1, :cond_2

    iput-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Landroid/icu/text/NFRule;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Landroid/icu/text/NFRule;

    :cond_2
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    iget-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, v4}, Landroid/icu/text/NFRuleSet;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setDefaultRuleSet(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_6

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v4, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v1, v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "%spellout-numbering"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "%digits-ordinal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "%duration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v2, v2, v1

    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    return-void

    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    array-length v1, v2

    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/icu/text/NFRuleSet;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    aget-object v2, v2, v1

    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "%%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cannot use private rule set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Landroid/icu/text/NFRuleSet;

    goto :goto_0
.end method

.method public setLenientParseMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    return-void
.end method

.method public setLenientScannerProvider(Landroid/icu/text/RbnfLenientScannerProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->scannerProvider:Landroid/icu/text/RbnfLenientScannerProvider;

    return-void
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
    iput p1, p0, Landroid/icu/text/RuleBasedNumberFormat;->roundingMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/icu/text/RuleBasedNumberFormat;->ruleSets:[Landroid/icu/text/NFRuleSet;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
