.class Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelativeTimeSink"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;


# direct methods
.method constructor <init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "past"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->pastFutureIndex:I

    :goto_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    if-nez v0, :cond_2

    return-object v2

    :cond_0
    const-string/jumbo v0, "future"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    const/4 v1, 0x1

    iput v1, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->pastFutureIndex:I

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;->this$1:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;

    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeTimeDetailSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;

    return-object v0
.end method
