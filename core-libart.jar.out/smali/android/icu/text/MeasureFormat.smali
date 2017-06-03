.class public Landroid/icu/text/MeasureFormat;
.super Landroid/icu/text/UFormat;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MeasureFormat$FormatWidth;,
        Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;,
        Landroid/icu/text/MeasureFormat$MeasureFormatData;,
        Landroid/icu/text/MeasureFormat$MeasureProxy;,
        Landroid/icu/text/MeasureFormat$NumericFormatters;,
        Landroid/icu/text/MeasureFormat$PatternData;,
        Landroid/icu/text/MeasureFormat$UnitDataSink;
    }
.end annotation


# static fields
.field private static final CURRENCY_FORMAT:I = 0x2

.field private static final MEASURE_FORMAT:I = 0x0

.field private static final TIME_UNIT_FORMAT:I = 0x1

.field private static final hmsTo012:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeIdToRangeFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeMeasureFormatData:Landroid/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/MeasureFormat$MeasureFormatData;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/MeasureFormat$NumericFormatters;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = -0x63abaa69b1b00340L


# instance fields
.field private final transient cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

.field private final transient currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

.field private final transient integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

.field private final transient rules:Landroid/icu/text/PluralRules;


# direct methods
.method static synthetic -wrap0(I)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->fromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$MeasureFormatData;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    iput-object p2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iput-object p3, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iput-object p4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    iput-object p5, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    iput-object p6, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    iput-object p7, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    iput-object p8, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    return-void
.end method

.method private appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/impl/StandardPlural;Ljava/lang/StringBuilder;)V
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v2, "\u00a4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string/jumbo v2, "XXX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-gez v1, :cond_1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v4}, Landroid/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    invoke-virtual {p2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-static {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->-get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    move-result-object v4

    sget-object v5, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v4, v5}, Landroid/icu/text/UFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    :goto_2
    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v3, v5, v6}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    goto :goto_2
.end method

.method private formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 8

    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v4

    instance-of v5, v4, Landroid/icu/util/Currency;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v6, Landroid/icu/util/CurrencyAmount;

    nop

    nop

    invoke-direct {v6, v2, v4}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v6, v7, p4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v5

    return-object v5

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p2}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->-get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    move-result-object v5

    iget-object v6, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    invoke-static {v2, v5, v6, v0, p4}, Landroid/icu/text/QuantityFormatter;->selectPlural(Ljava/lang/Number;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Landroid/icu/impl/StandardPlural;

    move-result-object v3

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Landroid/icu/text/MeasureFormat;->getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p3, p4}, Landroid/icu/text/QuantityFormatter;->format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v5

    return-object v5
.end method

.method private varargs formatMeasuresSlowTrack(Landroid/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 9

    const/4 v8, -0x1

    array-length v6, p4

    new-array v5, v6, [Ljava/lang/String;

    new-instance v2, Ljava/text/FieldPosition;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v7

    invoke-direct {v2, v6, v7}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    const/4 v1, -0x1

    const/4 v3, 0x0

    :goto_0
    array-length v6, p4

    if-ge v3, v6, :cond_4

    array-length v6, p4

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_2

    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    :goto_1
    if-ne v1, v8, :cond_3

    aget-object v6, p4, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6, v4, v7, v2}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    goto :goto_1

    :cond_3
    aget-object v6, p4, v3

    invoke-direct {p0, v6, v4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    goto :goto_2

    :cond_4
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v6, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result v6

    if-eq v6, v8, :cond_5

    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p3, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v6

    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p3, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_5
    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    return-object v6
.end method

.method private formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v6}, Ljava/text/FieldPosition;-><init>(I)V

    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p4, v5, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    :cond_0
    new-instance v3, Ljava/text/FieldPosition;

    invoke-direct {v3, p3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1, v4, v3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual {p5, v0, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual {p5, v2, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    invoke-virtual {p5, v0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p5, v2, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p5, v0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_0
    return-object p5

    :cond_2
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 11

    const/4 v10, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_2

    aget-object v0, p1, v7

    if-eqz v0, :cond_1

    move v6, v7

    const/4 v0, -0x1

    if-ne v10, v0, :cond_0

    move v10, v6

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v8, v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    if-nez v10, :cond_3

    const/4 v0, 0x2

    if-ne v6, v0, :cond_3

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinuteSecond()Landroid/icu/text/DateFormat;

    move-result-object v2

    sget-object v3, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    aget-object v4, p1, v6

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x1

    if-ne v10, v0, :cond_4

    const/4 v0, 0x2

    if-ne v6, v0, :cond_4

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getMinuteSecond()Landroid/icu/text/DateFormat;

    move-result-object v2

    sget-object v3, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    aget-object v4, p1, v6

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_4
    if-nez v10, :cond_5

    const/4 v0, 0x1

    if-ne v6, v0, :cond_5

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinute()Landroid/icu/text/DateFormat;

    move-result-object v2

    sget-object v3, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    aget-object v4, p1, v6

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static fromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v1

    :cond_1
    aget-object v1, v0, p0

    return-object v1
.end method

.method public static getCurrencyFormat()Landroid/icu/text/MeasureFormat;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;
    .locals 1

    new-instance v0, Landroid/icu/text/CurrencyFormat;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getCurrencyFormat(Ljava/util/Locale;)Landroid/icu/text/MeasureFormat;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method private getFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no formatting pattern for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/icu/text/MeasureFormat;->getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p2

    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v3, v3, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_0

    aget-object v3, v1, p3

    if-eqz v3, :cond_0

    aget-object v3, v1, p3

    return-object v3

    :cond_0
    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v3, v3, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v0, v3, v4

    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_1

    aget-object v3, v1, p3

    if-eqz v3, :cond_1

    aget-object v3, v1, p3

    return-object v3

    :cond_1
    return-object v5
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 10

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v0, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->loadLocaleData(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$MeasureFormatData;

    move-result-object v2

    sget-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v0, p0, v2}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne p1, v0, :cond_1

    sget-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v0, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/MeasureFormat$NumericFormatters;

    if-nez v6, :cond_1

    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;

    move-result-object v6

    sget-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v0, p0, v6}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v9, v1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    new-instance v0, Landroid/icu/text/MeasureFormat;

    new-instance v4, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v4, p2}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    new-instance v7, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {p1}, Landroid/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    move-result v1

    invoke-static {p0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    new-instance v8, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v8, v9}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$MeasureFormatData;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method private getPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/icu/text/MeasureFormat;->getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    invoke-virtual {v2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v2, v3

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no x-per-y pattern for width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 2

    sget v1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    if-eq p3, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget v1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    invoke-direct {p0, p1, p2, v1}, Landroid/icu/text/MeasureFormat;->getFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x2

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "fr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-static {v6, p1}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    invoke-static {v6, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v6, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_1
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v1

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberElements/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/miscPatterns/range"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6, v8, v8}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v6, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v6, "NumberElements/latn/patterns/range"

    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static final getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne p0, v0, :cond_0

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0

    :cond_0
    return-object p0
.end method

.method private static loadLocaleData(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$MeasureFormatData;
    .locals 4

    const-string/jumbo v3, "android/icu/impl/data/icudt56b/unit"

    invoke-static {v3, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/icu/text/MeasureFormat$MeasureFormatData;-><init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V

    new-instance v2, Landroid/icu/text/MeasureFormat$UnitDataSink;

    invoke-direct {v2, v0}, Landroid/icu/text/MeasureFormat$UnitDataSink;-><init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/ICUResourceBundle;->getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V

    return-object v0
.end method

.method private static loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .locals 4

    const-string/jumbo v1, "durationUnits/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "h"

    const-string/jumbo v3, "H"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    return-object v0
.end method

.method private static loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;
    .locals 5

    const-string/jumbo v1, "android/icu/impl/data/icudt56b/unit"

    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    new-instance v1, Landroid/icu/text/MeasureFormat$NumericFormatters;

    const-string/jumbo v2, "hm"

    invoke-static {v0, v2}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-static {v0, v3}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v3

    const-string/jumbo v4, "hms"

    invoke-static {v0, v4}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$NumericFormatters;-><init>(Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat;)V

    return-object v1
.end method

.method private static toHMS([Landroid/icu/util/Measure;)[Ljava/lang/Number;
    .locals 13

    const/4 v12, 0x0

    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/Number;

    const/4 v2, -0x1

    const/4 v5, 0x0

    array-length v6, p0

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v3, p0, v5

    invoke-virtual {v3}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v7, v8, v10

    if-gez v7, :cond_0

    return-object v12

    :cond_0
    sget-object v7, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return-object v12

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v2, :cond_2

    return-object v12

    :cond_2
    move v2, v0

    invoke-virtual {v3}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v7

    aput-object v7, v4, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method private withPerUnitAndAppend(Ljava/lang/CharSequence;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v0, v8, [I

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget v6, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    invoke-direct {p0, p2, v5, v6}, Landroid/icu/text/MeasureFormat;->getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-array v5, v8, [Ljava/lang/CharSequence;

    aput-object p1, v5, v7

    invoke-static {v3, p3, v0, v5}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget v5, v0, v7

    return v5

    :cond_0
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {p0, v5}, Landroid/icu/text/MeasureFormat;->getPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v6, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-direct {p0, p2, v5, v6}, Landroid/icu/text/MeasureFormat;->getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/SimplePatternFormatter;->getTextWithNoPlaceholders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object p1, v5, v7

    aput-object v4, v5, v8

    invoke-static {v2, p3, v0, v5}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget v5, v0, v7

    return v5
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v3}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/icu/text/MeasureFormat;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    nop

    nop

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 10

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    new-instance v1, Ljava/text/FieldPosition;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v9

    invoke-direct {v1, v8, v9}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    instance-of v8, p1, Ljava/util/Collection;

    if-eqz v8, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v4, v8, [Landroid/icu/util/Measure;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Landroid/icu/util/Measure;

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    aput-object v5, v4, v2

    move v2, v3

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v1, v4}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_3
    return-object p2

    :cond_4
    instance-of v8, p1, [Landroid/icu/util/Measure;

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    nop

    nop

    invoke-virtual {p0, v8, v1, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    instance-of v8, p1, Landroid/icu/util/Measure;

    if-eqz v8, :cond_6

    nop

    nop

    iget-object v8, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v8, v9, v1}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public formatMeasurePerUnit(Landroid/icu/util/Measure;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 6

    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/icu/util/MeasureUnit;->resolveUnitPerUnit(Landroid/icu/util/MeasureUnit;Landroid/icu/util/MeasureUnit;)Landroid/icu/util/MeasureUnit;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/icu/util/Measure;

    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {p0, v1, v4, p3, p4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v4

    return-object v4

    :cond_0
    new-instance v0, Ljava/text/FieldPosition;

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result v5

    invoke-direct {v0, v4, v5}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v4, v5, v0}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3}, Landroid/icu/text/MeasureFormat;->withPerUnitAndAppend(Ljava/lang/CharSequence;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;)I

    move-result v2

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p4, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p4, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    return-object p3
.end method

.method public final formatMeasureRange(Landroid/icu/util/Measure;Landroid/icu/util/Measure;)Ljava/lang/String;
    .locals 36
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Units must match: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \u2260 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v22

    move-object/from16 v0, v35

    instance-of v0, v0, Landroid/icu/util/Currency;

    move/from16 v23, v0

    new-instance v27, Landroid/icu/text/UFieldPosition;

    invoke-direct/range {v27 .. v27}, Landroid/icu/text/UFieldPosition;-><init>()V

    new-instance v21, Landroid/icu/text/UFieldPosition;

    invoke-direct/range {v21 .. v21}, Landroid/icu/text/UFieldPosition;-><init>()V

    const/16 v26, 0x0

    const/16 v20, 0x0

    if-eqz v23, :cond_2

    move-object/from16 v14, v35

    check-cast v14, Landroid/icu/util/Currency;

    invoke-virtual {v14}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-static {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->-get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-static {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->-get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v30

    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object v16

    check-cast v16, Landroid/icu/text/DecimalFormat;

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v4, v2}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v26

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v4, v2}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v20

    :cond_2
    if-nez v26, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v7, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v7, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v20

    :cond_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    new-instance v4, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    move-result v7

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    invoke-virtual {v11, v4}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    new-instance v8, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    move-result v11

    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    move-result-wide v12

    invoke-direct/range {v8 .. v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    invoke-virtual {v4, v8}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/icu/impl/PluralRulesLoader;->getPluralRanges(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRanges;

    move-result-object v31

    invoke-static/range {v25 .. v25}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v4

    invoke-static/range {v24 .. v24}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v7}, Landroid/icu/text/PluralRanges;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v4, v7}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    move-result-object v32

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v26, v4, v7

    const/4 v7, 0x1

    aput-object v20, v4, v7

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Landroid/icu/impl/SimplePatternFormatter;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-object/from16 v15, v35

    check-cast v15, Landroid/icu/util/Currency;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    const-wide/16 v12, 0x0

    cmpl-double v4, v5, v12

    if-ltz v4, :cond_4

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v7, v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->getPrefix(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v4, v15, v1, v2}, Landroid/icu/text/MeasureFormat;->appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/impl/StandardPlural;Ljava/lang/StringBuilder;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    const-wide/16 v12, 0x0

    cmpl-double v4, v9, v12

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v7, v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->getSuffix(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v4, v15, v1, v2}, Landroid/icu/text/MeasureFormat;->appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/impl/StandardPlural;Ljava/lang/StringBuilder;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v8}, Landroid/icu/text/MeasureFormat;->getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v17, v4, v7

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Landroid/icu/impl/SimplePatternFormatter;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final varargs formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    invoke-virtual {p0, v0, v1, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 7

    const/4 v6, 0x0

    array-length v4, p3

    if-nez v4, :cond_0

    return-object p1

    :cond_0
    array-length v4, p3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    aget-object v4, p3, v6

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {p0, v4, v5, p1, p2}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v4

    return-object v4

    :cond_1
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v5, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v4, v5, :cond_2

    invoke-static {p3}, Landroid/icu/text/MeasureFormat;->toHMS([Landroid/icu/util/Measure;)[Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1}, Landroid/icu/text/MeasureFormat;->formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v4

    return-object v4

    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v5}, Landroid/icu/text/MeasureFormat$FormatWidth;->getListFormatterStyle()Landroid/icu/text/ListFormatter$Style;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    move-result-object v2

    sget-object v4, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    if-eq p2, v4, :cond_3

    invoke-direct {p0, v2, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasuresSlowTrack(Landroid/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v4

    return-object v4

    :cond_3
    array-length v4, p3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_5

    aget-object v5, p3, v1

    array-length v4, p3

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    :goto_1
    invoke-direct {p0, v5, v4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    return-object v4
.end method

.method public final getLocale()Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/UFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;

    move-result-object v0

    return-object v0
.end method

.method toCurrencyProxy()Ljava/lang/Object;
    .locals 5

    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v3}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method toTimeUnitProxy()Ljava/lang/Object;
    .locals 5

    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v3}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 9

    new-instance v0, Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    new-instance v4, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v4, p1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    iget-object v6, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    iget-object v7, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    iget-object v8, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct/range {v0 .. v8}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$MeasureFormatData;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    return-object v0
.end method
