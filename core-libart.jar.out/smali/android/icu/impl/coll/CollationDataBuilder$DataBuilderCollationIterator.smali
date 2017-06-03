.class final Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataBuilderCollationIterator"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected final builder:Landroid/icu/impl/coll/CollationDataBuilder;

.field protected final builderData:Landroid/icu/impl/coll/CollationData;

.field protected final jamoCE32s:[I

.field protected pos:I

.field protected s:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationData;)V
    .locals 5

    const/16 v4, 0x43

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    new-array v2, v4, [I

    iput-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iput-object p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v3, v2, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-static {v0}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    const/4 v3, 0x7

    invoke-static {v3, v1}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v3

    or-int/lit16 v3, v3, 0x100

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->jamoCE32s:[I

    iput-object v3, v2, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    neg-int v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return-void
.end method

.method fetchCEs(Ljava/lang/CharSequence;I[JI)I
    .locals 8

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v7}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v7

    iput-object v7, v6, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v7}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v7

    iput-object v7, v6, Landroid/icu/impl/coll/CollationData;->ces:[J

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->reset()V

    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    :cond_0
    iget v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->clearCEs()V

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v7, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v6, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v6, v6, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v6, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    const/16 v6, 0xc0

    if-ne v1, v6, :cond_3

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v4, v6, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v6, v6, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v6, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    :goto_0
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v0, v1, v6}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v5}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    const/16 v6, 0x1f

    if-ge p4, v6, :cond_1

    aput-wide v2, p3, p4

    :cond_1
    add-int/lit8 p4, p4, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    goto :goto_0

    :cond_4
    return p4
.end method

.method protected forwardNumCodePoints(I)V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0, v1, p1}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return-void
.end method

.method protected getCE32FromBuilderData(I)I
    .locals 5

    sget-boolean v3, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    const/4 v3, 0x7

    invoke-static {p1, v3}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    and-int/lit16 v3, p1, 0x100

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v2

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v2}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v3

    return v3

    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    iget v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v3

    iput v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builderData:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    :cond_2
    iget v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    return v3

    :catch_0
    move-exception v1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->clearContexts()V

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v3

    iput v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    goto :goto_0
.end method

.method protected getDataCE32(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->builder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return v0
.end method

.method public nextCodePoint()I
    .locals 3

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return v0
.end method

.method public previousCodePoint()I
    .locals 3

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->s:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return v0
.end method

.method public resetToOffset(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->reset()V

    iput p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->pos:I

    return-void
.end method
