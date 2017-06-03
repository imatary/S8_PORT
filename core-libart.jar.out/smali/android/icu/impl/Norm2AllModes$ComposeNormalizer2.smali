.class public final Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;
.super Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComposeNormalizer2"
.end annotation


# instance fields
.field private final onlyContiguous:Z


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    iput-boolean p2, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    return-void
.end method


# virtual methods
.method public getQuickCheck(I)I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    move-result v0

    return v0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-boolean v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZZ)Z

    move-result v0

    return v0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result v0

    return v0
.end method

.method public isInert(I)Z
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-boolean v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZZ)Z

    move-result v0

    return v0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    new-instance v6, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x5

    invoke-direct {v6, v1, v5, v7}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    move-result v0

    return v0
.end method

.method protected normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 7

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    return-void
.end method

.method protected normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-boolean v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/icu/impl/Normalizer2Impl;->composeAndAppend(Ljava/lang/CharSequence;ZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    return-void
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    move-result v6

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object v0

    :cond_0
    ushr-int/lit8 v0, v6, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object v0

    :cond_1
    sget-object v0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object v0
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 6

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method
