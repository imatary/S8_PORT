.class Landroid/icu/text/Quantifier;
.super Ljava/lang/Object;
.source "Quantifier.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;


# static fields
.field public static final MAX:I = 0x7fffffff


# instance fields
.field private matcher:Landroid/icu/text/UnicodeMatcher;

.field private maxCount:I

.field private minCount:I


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeMatcher;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-ltz p3, :cond_0

    if-gt p2, p3, :cond_0

    iput-object p1, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    iput p2, p0, Landroid/icu/text/Quantifier;->minCount:I

    iput p3, p0, Landroid/icu/text/Quantifier;->maxCount:I

    return-void
.end method


# virtual methods
.method public addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    iget v0, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    :cond_0
    return-void
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    aget v3, p2, v5

    const/4 v0, 0x0

    :cond_0
    iget v4, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-ge v0, v4, :cond_1

    aget v2, p2, v5

    iget-object v4, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v4, p1, p2, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v1

    if-ne v1, v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget v4, p2, v5

    if-ne v2, v4, :cond_0

    :cond_1
    if-eqz p4, :cond_3

    aget v4, p2, v5

    if-ne v4, p3, :cond_3

    return v6

    :cond_2
    if-eqz p4, :cond_1

    if-ne v1, v6, :cond_1

    return v6

    :cond_3
    iget v4, p0, Landroid/icu/text/Quantifier;->minCount:I

    if-lt v0, v4, :cond_4

    return v7

    :cond_4
    aput v3, p2, v5

    return v5
.end method

.method public matchesIndexValue(I)Z
    .locals 1

    iget v0, p0, Landroid/icu/text/Quantifier;->minCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 6

    const v5, 0x7fffffff

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/Quantifier;->matcher:Landroid/icu/text/UnicodeMatcher;

    invoke-interface {v1, p1}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Quantifier;->minCount:I

    if-nez v1, :cond_1

    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-ne v1, v4, :cond_0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-ne v1, v5, :cond_2

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget v1, p0, Landroid/icu/text/Quantifier;->minCount:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-ne v1, v5, :cond_2

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Quantifier;->minCount:I

    int-to-long v2, v1

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    if-eq v1, v5, :cond_3

    iget v1, p0, Landroid/icu/text/Quantifier;->maxCount:I

    int-to-long v2, v1

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
