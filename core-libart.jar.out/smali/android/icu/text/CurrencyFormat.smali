.class Landroid/icu/text/CurrencyFormat;
.super Landroid/icu/text/MeasureFormat;
.source "CurrencyFormat.java"


# static fields
.field static final serialVersionUID:J = -0xcedfd71ed74263aL


# instance fields
.field private fmt:Landroid/icu/text/NumberFormat;

.field private final transient mf:Landroid/icu/text/MeasureFormat;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/MeasureFormat;-><init>()V

    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Landroid/icu/text/CurrencyFormat;

    iget-object v1, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    sget-object v2, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v1, v2}, Landroid/icu/text/UFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->toCurrencyProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Landroid/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CurrencyFormat;

    iget-object v1, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    iput-object v1, v0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    instance-of v1, p1, Landroid/icu/util/CurrencyAmount;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    iget-object v1, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/NumberFormat;->parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    move-result-object v0

    return-object v0
.end method
