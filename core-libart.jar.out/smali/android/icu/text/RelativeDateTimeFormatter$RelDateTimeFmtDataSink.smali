.class final Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;
.super Landroid/icu/impl/UResource$TableSink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RelDateTimeFmtDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues:[I


# instance fields
.field pastFutureIndex:I

.field qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field relativeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;

.field relativeTimeDetailSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;

.field relativeTimeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;

.field sb:Ljava/lang/StringBuilder;

.field style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field styleRelUnitPatterns:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private ulocale:Landroid/icu/util/ULocale;

.field unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

.field unitSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;


# direct methods
.method static synthetic -get0(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method private static synthetic -getandroid-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->-android-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->-android-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->-android-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->ulocale:Landroid/icu/util/ULocale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->sb:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;

    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeTimeDetailSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeDetailSink;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;

    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeTimeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeTimeSink;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;

    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->relativeSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$RelativeSink;

    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;

    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unitSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;

    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->ulocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method private styleFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 2

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v1

    :cond_0
    const-string/jumbo v1, "-narrow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v1

    :cond_1
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v1
.end method

.method private styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    const-string/jumbo v0, "-short"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0

    :cond_0
    const-string/jumbo v0, "-narrow"

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0

    :cond_1
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method private static styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I
    .locals 2

    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->-getandroid-icu-text-RelativeDateTimeFormatter$StyleSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I

    move-result v3

    sub-int v0, v2, v3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->-wrap0(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    if-nez v2, :cond_0

    return-object v4

    :cond_0
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->unitSink:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$UnitSink;

    return-object v2
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 7

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v4

    invoke-static {v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I

    move-result v5

    sub-int v0, v4, v5

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Landroid/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;->-wrap0(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink$DateTimeUnit;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;->styleFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v2

    if-ne v1, v2, :cond_1

    new-instance v4, Landroid/icu/util/ICUException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid style fallback from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to itself"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v4

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    if-nez v4, :cond_3

    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v4

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aput-object v2, v4, v5

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->-get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v4

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    if-eq v4, v2, :cond_2

    new-instance v4, Landroid/icu/util/ICUException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Inconsistent style fallback for style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
