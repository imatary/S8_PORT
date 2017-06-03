.class public final Landroid/icu/util/Calendar$WeekData;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeekData"
.end annotation


# instance fields
.field public final firstDayOfWeek:I

.field public final minimalDaysInFirstWeek:I

.field public final weekendCease:I

.field public final weekendCeaseMillis:I

.field public final weekendOnset:I

.field public final weekendOnsetMillis:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    iput p2, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    iput p3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    iput p4, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iput p5, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    iput p6, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Landroid/icu/util/Calendar$WeekData;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/util/Calendar$WeekData;

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    iget v4, v0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
