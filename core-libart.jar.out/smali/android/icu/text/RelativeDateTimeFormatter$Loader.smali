.class Landroid/icu/text/RelativeDateTimeFormatter$Loader;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final ulocale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    return-void
.end method


# virtual methods
.method public load()Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 11

    new-instance v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v4, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;-><init>(Landroid/icu/util/ULocale;)V

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    iget-object v7, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v6, "fields"

    invoke-virtual {v3, v6, v4}, Landroid/icu/impl/ICUResourceBundle;->getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V

    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v5, v7, v6

    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v9

    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v10

    aget-object v1, v9, v10

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v9

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v10

    aget-object v2, v9, v10

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v9

    invoke-virtual {v2}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    if-eqz v9, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Style fallback too deep"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/icu/impl/CalendarData;

    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    const-string/jumbo v7, "calendar/default"

    invoke-virtual {v3, v7}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    new-instance v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    iget-object v7, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v8, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    invoke-virtual {v0}, Landroid/icu/impl/CalendarData;->getDateTimePattern()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;)V

    return-object v6
.end method
