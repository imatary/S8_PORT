.class Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat$UnitDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnitSubtypeSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 3

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patternSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;->patterns:[Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitSubtypeSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patternSink:Landroid/icu/text/MeasureFormat$UnitDataSink$UnitPatternSink;

    return-object v0
.end method
