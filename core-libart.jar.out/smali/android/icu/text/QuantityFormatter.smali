.class Landroid/icu/text/QuantityFormatter;
.super Ljava/lang/Object;
.source "QuantityFormatter.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final templates:[Landroid/icu/impl/SimplePatternFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/QuantityFormatter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/QuantityFormatter;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Landroid/icu/impl/SimplePatternFormatter;

    iput-object v0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-array v0, v1, [I

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object p1, v1, v3

    invoke-static {p0, p2, v0, v1}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    aget v1, v0, v3

    if-ltz v1, :cond_2

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    aget v2, v0, v3

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    aget v2, v0, v3

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0
.end method

.method public static selectPlural(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;
    .locals 2

    instance-of v1, p2, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_0

    check-cast p2, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p2, p0, p1}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p3, p0, p1}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static selectPlural(Ljava/lang/Number;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Landroid/icu/impl/StandardPlural;
    .locals 8

    new-instance v6, Landroid/icu/text/UFieldPosition;

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    invoke-direct {v6, v1, v2}, Landroid/icu/text/UFieldPosition;-><init>(Ljava/text/Format$Field;I)V

    invoke-virtual {p1, p0, p3, v6}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    new-instance v0, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    move-result v3

    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    invoke-virtual {p2, v0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v6}, Landroid/icu/text/UFieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    invoke-static {v7}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addIfAbsent(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Landroid/icu/impl/SimplePatternFormatter;->compileMinMaxPlaceholders(Ljava/lang/CharSequence;II)Landroid/icu/impl/SimplePatternFormatter;

    move-result-object v2

    aput-object v2, v1, v0

    return-void
.end method

.method public format(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Landroid/icu/text/QuantityFormatter;->selectPlural(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v6

    aget-object v1, v3, v6

    if-nez v1, :cond_1

    iget-object v3, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    sget v6, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object v1, v3, v6

    sget-boolean v3, Landroid/icu/text/QuantityFormatter;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    new-array v3, v4, [Ljava/lang/CharSequence;

    aput-object v0, v3, v5

    invoke-virtual {v1, v3}, Landroid/icu/impl/SimplePatternFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getByVariant(Ljava/lang/CharSequence;)Landroid/icu/impl/SimplePatternFormatter;
    .locals 4

    sget-boolean v2, Landroid/icu/text/QuantityFormatter;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/QuantityFormatter;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexOrOtherIndexFromString(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    aget-object v1, v2, v0

    if-nez v1, :cond_1

    sget v2, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    sget v3, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object v1, v2, v3

    :cond_1
    return-object v1
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Landroid/icu/text/QuantityFormatter;->templates:[Landroid/icu/impl/SimplePatternFormatter;

    sget v1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
