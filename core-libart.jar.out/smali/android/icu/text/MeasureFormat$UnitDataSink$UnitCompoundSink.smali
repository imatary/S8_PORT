.class Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat$UnitDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnitCompoundSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$UnitDataSink;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 5

    const/4 v4, 0x2

    const-string/jumbo v0, "per"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/MeasureFormat$UnitDataSink$UnitCompoundSink;->this$1:Landroid/icu/text/MeasureFormat$UnitDataSink;

    iget-object v3, v3, Landroid/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    invoke-static {v2, v3, v4, v4}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
