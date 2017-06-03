.class Landroid/icu/text/IntegralPartSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    add-double v0, p1, p3

    return-wide v0
.end method

.method tokenChar()C
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 1

    return-wide p1
.end method
