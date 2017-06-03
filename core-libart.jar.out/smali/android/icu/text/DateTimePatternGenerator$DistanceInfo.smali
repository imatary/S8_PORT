.class Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DistanceInfo"
.end annotation


# instance fields
.field extraFieldMask:I

.field missingFieldMask:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>()V

    return-void
.end method


# virtual methods
.method addExtra(I)V
    .locals 2

    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    return-void
.end method

.method addMissing(I)V
    .locals 2

    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    return-void
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    return-void
.end method

.method setTo(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V
    .locals 1

    iget v0, p1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    iget v0, p1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "missingFieldMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->-wrap1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extraFieldMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->-wrap1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
