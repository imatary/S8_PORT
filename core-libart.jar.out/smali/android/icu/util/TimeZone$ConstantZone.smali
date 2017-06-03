.class final Landroid/icu/util/TimeZone$ConstantZone;
.super Landroid/icu/util/TimeZone;
.source "TimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstantZone"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile transient isFrozen:Z

.field private rawOffset:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    iput p1, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/icu/util/TimeZone$ConstantZone;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 2

    invoke-super {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone$ConstantZone;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return-object v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return-object p0
.end method

.method public getOffset(IIIIII)I
    .locals 1

    iget v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return v0
.end method

.method public getRawOffset()I
    .locals 1

    iget v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return v0
.end method

.method public setRawOffset(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen TimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return-void
.end method

.method public useDaylightTime()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
