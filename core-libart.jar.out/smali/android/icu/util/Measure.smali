.class public Landroid/icu/util/Measure;
.super Ljava/lang/Object;
.source "Measure.java"


# instance fields
.field private final number:Ljava/lang/Number;

.field private final unit:Landroid/icu/util/MeasureUnit;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    iput-object p2, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    return-void
.end method

.method private static numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Number;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/icu/util/Measure;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/util/Measure;

    iget-object v2, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    iget-object v3, v0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v2, v3}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    iget-object v2, v0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-static {v1, v2}, Landroid/icu/util/Measure;->numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getNumber()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    return-object v0
.end method

.method public getUnit()Landroid/icu/util/MeasureUnit;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/Measure;->unit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
