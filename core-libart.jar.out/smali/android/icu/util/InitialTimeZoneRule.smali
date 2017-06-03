.class public Landroid/icu/util/InitialTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "InitialTimeZoneRule.java"


# static fields
.field private static final serialVersionUID:J = 0x1a0b01341cdc0206L


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getFinalStart(II)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstStart(II)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousStart(JIIZ)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .locals 1

    instance-of v0, p1, Landroid/icu/util/InitialTimeZoneRule;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTransitionRule()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
