.class final Landroid/icu/text/MeasureFormat$UnitDataSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnitDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;,
        Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;,
        Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;,
        Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;
    }
.end annotation


# instance fields
.field cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

.field compoundSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;

.field patternSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

.field sb:Ljava/lang/StringBuilder;

.field subtypeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;

.field type:Ljava/lang/String;

.field typeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;

.field unit:Landroid/icu/util/MeasureUnit;

.field width:Landroid/icu/text/MeasureFormat$FormatWidth;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    new-instance v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

    invoke-direct {v0, p0}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;-><init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patternSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

    new-instance v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;

    invoke-direct {v0, p0}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;-><init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->subtypeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;

    new-instance v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;

    invoke-direct {v0, p0}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;-><init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->compoundSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;

    new-instance v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;

    invoke-direct {v0, p0}, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;-><init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->typeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    return-void
.end method

.method static widthFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/LOCALE/units"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "Short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "Narrow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static widthFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    const/4 v1, 0x5

    const-string/jumbo v0, "units"

    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0

    :cond_0
    const-string/jumbo v0, "Short"

    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0

    :cond_1
    const-string/jumbo v0, "Narrow"

    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/icu/text/MeasureFormat$UnitDataSink;->widthFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->typeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 5

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/icu/text/MeasureFormat$UnitDataSink;->widthFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->widthFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Landroid/icu/util/ICUException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Units data fallback from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to unknown "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    new-instance v2, Landroid/icu/util/ICUException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Units data fallback from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " which falls back to something else"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput-object v1, v2, v3

    return-void
.end method
