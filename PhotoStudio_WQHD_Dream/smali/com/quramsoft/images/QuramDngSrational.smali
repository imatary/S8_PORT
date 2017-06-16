.class public Lcom/quramsoft/images/QuramDngSrational;
.super Ljava/lang/Object;
.source "QuramDngSrational.java"


# instance fields
.field d:J

.field n:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDenominator()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngSrational;->d:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngSrational;->n:J

    return-wide v0
.end method

.method public getReal32()F
    .locals 4

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngSrational;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngSrational;->d:J

    long-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngSrational;->n:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/quramsoft/images/QuramDngSrational;->d:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getReal64()D
    .locals 4

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngSrational;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngSrational;->d:J

    long-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngSrational;->n:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/quramsoft/images/QuramDngSrational;->d:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method
