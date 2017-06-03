.class public Landroid/icu/impl/coll/UTF16CollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "UTF16CollationIterator.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected limit:I

.field protected pos:I

.field protected seq:Ljava/lang/CharSequence;

.field protected start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/UTF16CollationIterator;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    iput-object p3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    iput p4, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 3

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v4, v0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected forwardNumCodePoints(I)V
    .locals 4

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getOffset()I
    .locals 2

    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 3

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    :cond_1
    return v0
.end method

.method protected handleNextCE32()J
    .locals 4

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-ne v1, v2, :cond_0

    const-wide v2, -0xffffff40L

    return-wide v2

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public hashCode()I
    .locals 2

    sget-boolean v0, Landroid/icu/impl/coll/UTF16CollationIterator;->-assertionsDisabled:Z

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

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-ne v2, v3, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_1
    return v0
.end method

.method public previousCodePoint()I
    .locals 4

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-ne v2, v3, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_1
    return v0
.end method

.method public resetToOffset(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/coll/UTF16CollationIterator;->reset()V

    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    return-void
.end method

.method public setText(ZLjava/lang/CharSequence;I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;->reset(Z)V

    iput-object p2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    iput p3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    return-void
.end method
