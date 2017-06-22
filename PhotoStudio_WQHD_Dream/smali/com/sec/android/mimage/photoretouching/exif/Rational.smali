.class public Lcom/sec/android/mimage/photoretouching/exif/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private final mDenominator:J

.field private final mNumerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mNumerator:J

    iput-wide p3, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mDenominator:J

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/exif/Rational;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mNumerator:J

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mNumerator:J

    iget-wide v0, p1, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mDenominator:J

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mDenominator:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/sec/android/mimage/photoretouching/exif/Rational;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/mimage/photoretouching/exif/Rational;

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mNumerator:J

    iget-wide v6, v0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mNumerator:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mDenominator:J

    iget-wide v6, v0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mDenominator:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getDenominator()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mDenominator:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mNumerator:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toDouble()D
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mNumerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mDenominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mNumerator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/exif/Rational;->mDenominator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
