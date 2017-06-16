.class public Lcom/quramsoft/images/QuramDngTimeZone;
.super Ljava/lang/Object;
.source "QuramDngTimeZone.java"


# static fields
.field public static final eInvalidOffset:I = -0x385

.field public static final eMaxOffsetHours:I = 0xf

.field public static final eMaxOffsetMinutes:I = 0x384

.field public static final eMinOffsetHours:I = -0xf

.field public static final eMinOffsetMinutes:I = -0x384


# instance fields
.field public mOffsetMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngTimeZone;->mOffsetMinutes:I

    div-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Lcom/quramsoft/images/QuramDngTimeZone;->mOffsetMinutes:I

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget v0, p0, Lcom/quramsoft/images/QuramDngTimeZone;->mOffsetMinutes:I

    const/16 v1, -0x385

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
