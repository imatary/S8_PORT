.class public final Landroid/icu/text/ScientificNumberFormatter;
.super Ljava/lang/Object;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;,
        Landroid/icu/text/ScientificNumberFormatter$Style;,
        Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;
    }
.end annotation


# static fields
.field private static final SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;


# instance fields
.field private final fmt:Landroid/icu/text/DecimalFormat;

.field private final preExponent:Ljava/lang/String;

.field private final style:Landroid/icu/text/ScientificNumberFormatter$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>(Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;)V

    sput-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    return-void
.end method

.method private constructor <init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    iput-object p2, p0, Landroid/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/ScientificNumberFormatter;->style:Landroid/icu/text/ScientificNumberFormatter$Style;

    return-void
.end method

.method private static getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 4

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    new-instance v2, Landroid/icu/text/ScientificNumberFormatter;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormat;

    invoke-static {v0}, Landroid/icu/text/ScientificNumberFormatter;->getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, p1}, Landroid/icu/text/ScientificNumberFormatter;-><init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V

    return-object v2
.end method

.method private static getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 3

    invoke-static {p0}, Landroid/icu/text/DecimalFormat;->getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormat;

    new-instance v1, Landroid/icu/text/ScientificNumberFormatter;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/ScientificNumberFormatter;->getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Landroid/icu/text/ScientificNumberFormatter;-><init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V

    return-object v1
.end method

.method public static getMarkupInstance(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1

    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getMarkupInstance(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1

    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentMultiplicationSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object v0

    const/4 v2, 0x1

    aget-char v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-char v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSuperscriptInstance(Landroid/icu/text/DecimalFormat;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1

    sget-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getSuperscriptInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1

    sget-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/ScientificNumberFormatter;->style:Landroid/icu/text/ScientificNumberFormatter$Style;

    iget-object v2, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2, p1}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/ScientificNumberFormatter$Style;->format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
