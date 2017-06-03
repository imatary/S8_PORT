.class Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat$UnitDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnitPatternSink"
.end annotation


# instance fields
.field patterns:[Ljava/lang/String;

.field final synthetic this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "dnam"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "per"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    invoke-virtual {p0, v0, p2, v1}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->setFormatterIfAbsent(ILandroid/icu/impl/UResource$Value;I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0, p2, v1}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->setFormatterIfAbsent(ILandroid/icu/impl/UResource$Value;I)V

    goto :goto_0
.end method

.method setFormatterIfAbsent(ILandroid/icu/impl/UResource$Value;I)V
    .locals 5

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v2, v2, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v2, v2, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    if-nez v1, :cond_0

    sget v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PATTERN_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v3, v3, Landroid/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-static {v2, v3, p3, v4}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    goto :goto_0
.end method
