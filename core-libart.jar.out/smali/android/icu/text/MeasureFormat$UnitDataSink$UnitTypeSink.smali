.class Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat$UnitDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnitTypeSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 2

    const-string/jumbo v0, "currency"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string/jumbo v0, "compound"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat$MeasureFormatData;->hasPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->compoundSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->type:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitTypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->subtypeSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;

    return-object v0
.end method
