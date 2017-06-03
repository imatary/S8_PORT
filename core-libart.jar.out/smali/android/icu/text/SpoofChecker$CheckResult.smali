.class public Landroid/icu/text/SpoofChecker$CheckResult;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# instance fields
.field public checks:I

.field public numerics:Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    iput v0, p0, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    if-nez v1, :cond_1

    const-string/jumbo v1, " none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string/jumbo v1, ", numerics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", restrictionLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, " all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const-string/jumbo v1, " SINGLE_SCRIPT_CONFUSABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    const-string/jumbo v1, " MIXED_SCRIPT_CONFUSABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    const-string/jumbo v1, " WHOLE_SCRIPT_CONFUSABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    const-string/jumbo v1, " ANY_CASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    const-string/jumbo v1, " RESTRICTION_LEVEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    const-string/jumbo v1, " INVISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    const-string/jumbo v1, " CHAR_LIMIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v1, p0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const-string/jumbo v1, " MIXED_NUMBERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
