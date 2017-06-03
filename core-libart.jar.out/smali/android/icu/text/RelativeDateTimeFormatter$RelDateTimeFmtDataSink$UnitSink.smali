.class Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnitSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 1

    const-string/jumbo v0, "relative"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;

    return-object v0

    :cond_0
    const-string/jumbo v0, "relativeTime"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeTimeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 6

    const-string/jumbo v4, "dn"

    invoke-virtual {p1, v4}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v4, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    iget-object v0, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v4, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/EnumMap;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v4, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v4, v5, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/EnumMap;

    const-class v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v1, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v1, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    invoke-static {v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->-get0(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "en"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v1, v4, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
