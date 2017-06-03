.class abstract Landroid/icu/text/RuleBasedCollator$NFDIterator;
.super Ljava/lang/Object;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NFDIterator"
.end annotation


# instance fields
.field private decomp:Ljava/lang/String;

.field private index:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final nextCodePoint()I
    .locals 3

    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextRawCodePoint()I

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    iget v2, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    invoke-static {v1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    return v0
.end method

.method final nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    if-ltz v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    if-nez v0, :cond_1

    return p2

    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    return p2
.end method

.method protected abstract nextRawCodePoint()I
.end method

.method final reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    return-void
.end method
