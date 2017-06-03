.class Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelativeSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 7

    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v6, v6, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v5, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    if-ne v5, v6, :cond_2

    const-string/jumbo v5, "0"

    invoke-virtual {p1, v5}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/EnumMap;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0, v5, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Landroid/icu/text/RelativeDateTimeFormatter;->-wrap0(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    iget-object v1, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-nez v1, :cond_4

    return-void

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/util/EnumMap;

    const-class v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-direct {v0, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v6, v6, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v5, v6, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/EnumMap;

    const-class v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v2, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method
