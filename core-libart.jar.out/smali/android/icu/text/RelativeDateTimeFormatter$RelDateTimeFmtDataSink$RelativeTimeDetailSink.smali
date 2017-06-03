.class Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelativeTimeDetailSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 8

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v3, v3, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v4, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v3, v3, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v4, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v3, v4, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v3, v3, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    iget-object v3, v3, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v3, Ljava/lang/String;

    new-array v4, v5, [I

    aput v5, v4, v6

    sget v5, Landroid/icu/impl/StandardPlural;->COUNT:I

    aput v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v3, v3, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    iget-object v3, v3, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v2, v3, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget v3, v3, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->pastFutureIndex:I

    aget-object v3, v0, v3

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget v3, v3, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->pastFutureIndex:I

    aget-object v3, v0, v3

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v5, v5, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->sb:Ljava/lang/StringBuilder;

    invoke-static {v4, v5, v6, v7}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    :cond_2
    return-void
.end method
