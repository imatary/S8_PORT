.class public final Landroid/icu/impl/coll/FCDIterCollationIterator;
.super Landroid/icu/impl/coll/IterCollationIterator;
.source "FCDIterCollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/FCDIterCollationIterator$State;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private limit:I

.field private final nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private normalized:Ljava/lang/StringBuilder;

.field private pos:I

.field private s:Ljava/lang/StringBuilder;

.field private start:I

.field private state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/FCDIterCollationIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput p4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    return-void
.end method

.method private nextSegment()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v6, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v7, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v6, v7, :cond_0

    move v6, v5

    :goto_0
    if-nez v6, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    move v6, v4

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v6

    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    :goto_1
    const/4 v3, 0x0

    :cond_2
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_5

    :goto_2
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    sget-boolean v6, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v6, :cond_b

    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-eq v6, v7, :cond_3

    move v4, v5

    :cond_3
    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_4
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    shr-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_6

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    goto :goto_2

    :cond_6
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_a

    if-gt v3, v2, :cond_7

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    :goto_3
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_8

    :goto_4
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    sget-object v6, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v5

    :cond_8
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v6

    const/16 v7, 0xff

    if-gt v6, v7, :cond_9

    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    goto :goto_4

    :cond_9
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    and-int/lit16 v3, v1, 0xff

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_b
    iget-object v4, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v4, v6}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return v5
.end method

.method private normalize(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;

    return-void
.end method

.method private previousSegment()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v6, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v7, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v6, v7, :cond_0

    move v6, v5

    :goto_0
    if-nez v6, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    move v6, v4

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v6

    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    :goto_1
    const/4 v2, 0x0

    :cond_2
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    if-gez v0, :cond_5

    :goto_2
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    sget-boolean v6, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v6, :cond_d

    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-eq v6, v7, :cond_3

    move v4, v5

    :cond_3
    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_4
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    if-nez v3, :cond_6

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    goto :goto_2

    :cond_6
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_a

    if-eqz v2, :cond_9

    if-le v3, v2, :cond_9

    :cond_7
    :goto_3
    const/16 v4, 0xff

    if-le v1, v4, :cond_8

    iget-object v4, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    if-gez v0, :cond_b

    :cond_8
    :goto_4
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    iget v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iget v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iput v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v5

    :cond_9
    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_a
    shr-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_b
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    if-nez v1, :cond_c

    iget-object v4, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    goto :goto_4

    :cond_c
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    iget-object v4, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return v5
.end method

.method private switchToBackward()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-ne v0, v1, :cond_4

    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    :goto_1
    return-void

    :cond_4
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_6

    :goto_2
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    :cond_7
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    goto :goto_2
.end method

.method private switchToForward()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-ne v0, v1, :cond_4

    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    :goto_1
    return-void

    :cond_4
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_6

    :goto_2
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    :cond_7
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    goto :goto_2
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->previousCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOffset()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    return v0

    :cond_2
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    return v0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    :cond_0
    :goto_0
    int-to-char v2, v1

    return v2

    :cond_1
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    goto :goto_0

    :cond_2
    sget-boolean v3, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    :cond_5
    return v0
.end method

.method protected handleNextCE32()J
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    if-gez v0, :cond_1

    const-wide v2, -0xffffff40L

    return-wide v2

    :cond_1
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    const-wide/16 v2, 0xc0

    return-wide v2

    :cond_3
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v2, v3, :cond_5

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    sget-boolean v2, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_7

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v2, v3, :cond_7

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    :cond_6
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v2

    return-wide v2

    :cond_7
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    goto/16 :goto_0
.end method

.method public nextCodePoint()I
    .locals 5

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    if-gez v0, :cond_1

    return v0

    :cond_1
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previous()I

    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_3
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_4

    int-to-char v2, v0

    int-to-char v3, v1

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_4
    if-ltz v1, :cond_5

    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    :cond_5
    return v0

    :cond_6
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v3, v4, :cond_9

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    sget-boolean v3, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v3, :cond_8

    if-ltz v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_8
    return v0

    :cond_9
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_a

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v3, v4, :cond_a

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    :cond_a
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    goto/16 :goto_0
.end method

.method public previousCodePoint()I
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    if-gez v0, :cond_1

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    sget-object v2, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return v5

    :cond_1
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v1, -0x1

    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->next()I

    if-ltz v1, :cond_3

    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->next()I

    :cond_3
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->previousSegment()Z

    move-result v3

    if-nez v3, :cond_0

    return v5

    :cond_4
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_6

    if-gez v1, :cond_5

    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v1

    :cond_5
    invoke-static {v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_6

    int-to-char v2, v1

    int-to-char v3, v0

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_6
    if-ltz v1, :cond_7

    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    :cond_7
    return v0

    :cond_8
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v3, v4, :cond_b

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    sget-boolean v3, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    if-nez v3, :cond_a

    if-ltz v0, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_a
    return v0

    :cond_b
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_c

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    if-eqz v3, :cond_c

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    :cond_c
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToBackward()V

    goto/16 :goto_0
.end method

.method public resetToOffset(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/impl/coll/IterCollationIterator;->resetToOffset(I)V

    iput p1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return-void
.end method
