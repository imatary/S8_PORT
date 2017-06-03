.class Landroid/icu/text/SameValueSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    const-string/jumbo v0, "=="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "== is not a legal token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 1

    return-wide p1
.end method

.method public composeRuleValue(DD)D
    .locals 1

    return-wide p1
.end method

.method tokenChar()C
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public transformNumber(D)D
    .locals 1

    return-wide p1
.end method

.method public transformNumber(J)J
    .locals 1

    return-wide p1
.end method
