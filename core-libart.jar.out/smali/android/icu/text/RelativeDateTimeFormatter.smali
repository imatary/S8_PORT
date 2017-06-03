.class public final Landroid/icu/text/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$Cache;,
        Landroid/icu/text/RelativeDateTimeFormatter$Direction;,
        Landroid/icu/text/RelativeDateTimeFormatter$Loader;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$Style;
    }
.end annotation


# static fields
.field private static final cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

.field private static final fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;


# instance fields
.field private final breakIterator:Landroid/icu/text/BreakIterator;

.field private final capitalizationContext:Landroid/icu/text/DisplayContext;

.field private final combinedDateAndTime:Landroid/icu/text/MessageFormat;

.field private final dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final locale:Landroid/icu/util/ULocale;

.field private final numberFormat:Landroid/icu/text/NumberFormat;

.field private final patternMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pluralRules:Landroid/icu/text/PluralRules;

.field private final qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field private styleToDateFormatSymbolsWidth:[I


# direct methods
.method static synthetic -get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/RelativeDateTimeFormatter;->keyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$Cache;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/icu/text/MessageFormat;",
            "Landroid/icu/text/PluralRules;",
            "Landroid/icu/text/NumberFormat;",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Landroid/icu/text/DisplayContext;",
            "Landroid/icu/text/BreakIterator;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    iput-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Landroid/icu/text/MessageFormat;

    iput-object p4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object p5, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    iput-object p6, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p7}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Landroid/icu/text/DisplayContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p7, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    iput-object p8, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    iput-object p9, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0, p9}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    return-void
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    const/16 v3, 0x300

    invoke-static {v0, p1, v2, v3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
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

.method private getAbsoluteUnitString(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    invoke-virtual {v3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v4

    aget-object p1, v3, v4

    if-nez p1, :cond_0

    return-object v5
.end method

.method public static getInstance()Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 4

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 3

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 2

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 11

    const/4 v8, 0x0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    invoke-virtual {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object v10

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter;

    iget-object v1, v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v2, v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->relUnitPatternMap:Ljava/util/EnumMap;

    new-instance v3, Landroid/icu/text/MessageFormat;

    iget-object v4, v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->dateTimePattern:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v4

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-ne p3, v5, :cond_0

    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v8

    :cond_0
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Landroid/icu/text/RelativeDateTimeFormatter;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/NumberFormat;

    goto :goto_0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p4}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    invoke-virtual {v3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    if-eqz v1, :cond_1

    aget-object v3, v1, p3

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    aget-object v3, v1, p3

    aget-object v3, v3, v0

    return-object v3

    :cond_1
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v4

    aget-object p1, v3, v4

    if-nez p1, :cond_0

    return-object v5
.end method

.method private getRelativeUnitPluralPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 2

    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    if-eq p4, v1, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static keyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1

    const-string/jumbo v0, "-2"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    :cond_0
    const-string/jumbo v0, "-1"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    :cond_1
    const-string/jumbo v0, "0"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    :cond_2
    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    :cond_3
    const-string/jumbo v0, "2"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Landroid/icu/text/MessageFormat;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;
    .locals 11

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-eq p3, v6, :cond_0

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-eq p3, v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be NEXT or LAST"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p3, v6, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-object v7, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    monitor-enter v7

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v8, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    iget-object v9, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-static {v6, v8, v9, v1, v0}, Landroid/icu/text/QuantityFormatter;->selectPlural(Ljava/lang/Number;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Landroid/icu/impl/StandardPlural;

    move-result-object v4

    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {p0, v6, p4, v3, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPluralPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    invoke-static {v2, v6}, Landroid/icu/impl/SimplePatternFormatter;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit v7

    invoke-direct {p0, v5}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-ne p2, v4, :cond_0

    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-eq p1, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "NOW can only accept direction PLAIN."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p1, v4, :cond_2

    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v4}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v4

    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v5

    if-gt v4, v5, :cond_2

    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v4

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v5

    if-gt v4, v5, :cond_2

    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v4

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v6}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    :cond_2
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {p0, v4, p2, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->getAbsoluteUnitString(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCapitalizationContext()Landroid/icu/text/DisplayContext;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    return-object v0
.end method

.method public getFormatStyle()Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 2

    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
