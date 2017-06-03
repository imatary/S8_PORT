.class public final Landroid/icu/impl/coll/FCDUTF16CollationIterator;
.super Landroid/icu/impl/coll/UTF16CollationIterator;
.source "FCDUTF16CollationIterator.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final rawStart:I


# instance fields
.field private checkDir:I

.field private final nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private normalized:Ljava/lang/StringBuilder;

.field private rawLimit:I

.field private rawSeq:Ljava/lang/CharSequence;

.field private segmentLimit:I

.field private segmentStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    iput-object p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iput p4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method

.method private nextSegment()V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-boolean v6, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-lez v6, :cond_0

    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v6, v9, :cond_0

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v6, v9, :cond_0

    move v6, v7

    :goto_0
    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    const/4 v4, 0x0

    :cond_2
    move v5, v3

    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v6, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    shr-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_3

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    if-eq v5, v6, :cond_3

    iput v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    :goto_1
    sget-boolean v6, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    if-nez v6, :cond_a

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v6, v9, :cond_9

    :goto_2
    if-nez v7, :cond_a

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_3
    if-eqz v2, :cond_7

    if-gt v4, v2, :cond_4

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    :goto_3
    move v5, v3

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    if-ne v3, v6, :cond_6

    :cond_5
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-direct {p0, v6, v5}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iput v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v6, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v6

    const/16 v9, 0xff

    if-le v6, v9, :cond_5

    goto :goto_3

    :cond_7
    and-int/lit16 v4, v1, 0xff

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    if-eq v3, v6, :cond_8

    if-nez v4, :cond_2

    :cond_8
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    goto :goto_1

    :cond_9
    move v7, v8

    goto :goto_2

    :cond_a
    iput v8, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method

.method private normalize(II)V
    .locals 6

    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    sub-int v5, p2, p1

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    return-void
.end method

.method private previousSegment()V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-boolean v6, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-gez v6, :cond_0

    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v6, v9, :cond_0

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v6, v9, :cond_0

    move v6, v7

    :goto_0
    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    const/4 v2, 0x0

    :cond_2
    move v4, v3

    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v6, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v3, v6

    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    and-int/lit16 v5, v1, 0xff

    if-nez v5, :cond_3

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    if-eq v4, v6, :cond_3

    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    :goto_1
    sget-boolean v6, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    if-nez v6, :cond_b

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v6, v9, :cond_a

    :goto_2
    if-nez v7, :cond_b

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_3
    if-eqz v5, :cond_7

    if-eqz v2, :cond_6

    if-le v5, v2, :cond_6

    :cond_4
    :goto_3
    move v4, v3

    const/16 v6, 0xff

    if-le v1, v6, :cond_5

    if-nez v3, :cond_9

    :cond_5
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-direct {p0, v4, v6}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    goto :goto_1

    :cond_6
    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_7
    shr-int/lit8 v2, v1, 0x8

    if-eqz v3, :cond_8

    if-nez v2, :cond_2

    :cond_8
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    goto :goto_1

    :cond_9
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v6, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v3, v6

    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_a
    move v7, v8

    goto :goto_2

    :cond_b
    iput v8, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method

.method private switchToBackward()V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v2, :cond_2

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    if-ne v0, v2, :cond_4

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    :goto_1
    return-void

    :cond_4
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v2, :cond_6

    :goto_2
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    goto :goto_2
.end method

.method private switchToForward()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v0, v3, :cond_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-gez v0, :cond_5

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    :goto_1
    return-void

    :cond_4
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v2, :cond_6

    :goto_2
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    goto :goto_2
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-eq v1, v4, :cond_1

    return v3

    :cond_1
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iget-object v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v4, v5, :cond_3

    move v4, v2

    :goto_1
    if-eq v1, v4, :cond_4

    return v3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v1, v4, :cond_7

    :cond_5
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x0

    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v4, v4, 0x0

    if-ne v1, v4, :cond_6

    :goto_2
    return v2

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    add-int/lit8 v1, v1, 0x0

    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    add-int/lit8 v4, v4, 0x0

    if-ne v1, v4, :cond_8

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    sub-int/2addr v1, v4

    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v5, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_8

    move v3, v2

    :cond_8
    return v3
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOffset()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v0, v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    add-int/lit8 v0, v0, 0x0

    return v0

    :cond_2
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method protected handleNextCE32()J
    .locals 4

    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-lez v1, :cond_3

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-ne v1, v2, :cond_0

    const-wide v2, -0xffffff40L

    return-wide v2

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v2

    return-wide v2

    :cond_3
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v1, :cond_4

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToForward()V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    sget-boolean v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public nextCodePoint()I
    .locals 5

    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-lez v2, :cond_3

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-ne v2, v3, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_3
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v2, :cond_4

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToForward()V

    goto/16 :goto_0

    :cond_5
    return v0
.end method

.method public previousCodePoint()I
    .locals 4

    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-gez v2, :cond_3

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-ne v2, v3, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousSegment()V

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_3
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v2, :cond_4

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToBackward()V

    goto/16 :goto_0

    :cond_5
    return v0
.end method

.method public resetToOffset(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->reset()V

    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    add-int/lit8 v0, p1, 0x0

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method

.method public setText(ZLjava/lang/CharSequence;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    iput-object p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method
